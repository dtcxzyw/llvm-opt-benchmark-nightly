inline.NumInlined: 65941
inline.NumDeleted: 17507
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_11ParameterOpEEEPNSJ_5EntryERKT_Pm:_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_11ParameterOpEEEmRKT0_b.exit
.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_11ParameterOpEEEmRKT0_b.exit
  %i.au = getelementptr inbounds i8, ptr %0, i64 -8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_11ParameterOpEEEmRKT0_b.exit
  %.lcssa = phi ptr [ %i.aq, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_11ParameterOpEEEmRKT0_b.exit ], [ %i.bt, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  store i64 %..i, ptr %2, align 8
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread
  %i.av = phi i64 [ %i.as, %.lr.ph ], [ %i.bv, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.aw = phi ptr [ %i.aq, %.lr.ph ], [ %i.bt, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread ] ; 2 uses
  %.02432 = phi i64 [ %i.an, %.lr.ph ], [ %i.bs, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread ]
  %i.ax = icmp eq i64 %i.av, %..i
  br i1 %i.ax, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %i.au, align 8, !nonnull !6, !align !209
  %.sroa.0.0.copyload = load i32, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = zext i32 %.sroa.0.0.copyload to i64
  %i.bd = add i64 %i.bb, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr               ; 4 uses
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = icmp eq i8 %i.bf, 80
  br i1 %i.bg, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !2586
  %i.bj = icmp eq i32 %i.bi, %i.f
  br i1 %i.bj, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit: ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load i8, ptr %i.bk, align 4, !noalias !2586
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !2586
  %i.bo = icmp eq i8 %i.bl, %i.e
  %i.bp = icmp eq ptr %i.bn, %i.d
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.loopexit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit.thread: ; preds = %bb.c, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit, %bb.d, %bb.b
  %i.br = add i64 %.02432, 1
  %i.bs = and i64 %i.am, %i.br                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %._crit_edge, label %bb.b, !llvm.loop !2589

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit, %._crit_edge, %bb.a
  %i.bx = phi ptr [ %.lcssa, %bb.a ], [ %.lcssa, %._crit_edge ], [ %i.aw, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11ParameterOpEE12EqualsForGVNERKS5_.exit ]
  ret ptr %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef dead_on_return %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey.4016", align 8 ; 5 uses
  %3 = alloca %"struct.absl::container_internal::HashKey.4016", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8              ; 9 uses
  store ptr %i.p, ptr %i.a, align 8
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %0, align 8, !noalias !2590 ; 4 uses
  %i.s = icmp ult i64 %i.r, 2
  br i1 %i.s, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !2597
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.u, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 131072, ptr %i.t, align 8, !noalias !2597
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2597
  %i.y = icmp eq ptr %i.x, %i.p
  br i1 %i.y, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !2597
  store ptr %0, ptr %3, align 8, !noalias !2597
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.z, align 8, !noalias !2597
  %i.aa = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal6maglev10BasicBlockEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #27, !noalias !2597
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !2597
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !2597
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, i64 %i.aa
  %.pre = load ptr, ptr %i.a, align 8, !noalias !2602
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread

bb.g:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !2603 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2603
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !2603
  %sext.i = shl i64 %i.af, 48
  %i.ag = ashr exact i64 %sext.i, 48
  %i.ah = ptrtoint ptr %i.p to i64
  %i.ai = xor i64 %i.ah, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.aj = zext i64 %i.ai to i128
  %i.ak = mul nuw nsw i128 %i.aj, 8779197792823184629 ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = xor i128 %i.al, %i.ak
  %i.an = trunc i128 %i.am to i64
  %i.ao = xor i64 %i.ag, %i.an                    ; 3 uses
  %i.ap = lshr i64 %i.ao, 57
  %i.aq = trunc nuw nsw i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ar, align 8, !noalias !2603 ; 2 uses
  %i.as = insertelement <16 x i8> poison, i8 %i.aq, i64 0
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi i64 [ %i.ao, %bb.g ], [ %i.br, %bb.i ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.g ], [ %i.bq, %bb.i ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.r             ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1), !noalias !2603
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !noalias !2603 ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.at, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ay, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.bh, %.critedge.i ], [ %i.ay, %bb.h ] ; 3 uses
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = add i64 %.sroa.7.0.i, %i.ba
  %i.bc = and i64 %i.bb, %i.r
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !2603
  %i.bf = icmp eq ptr %i.be, %i.p
  br i1 %i.bf, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %.critedge.i, !prof !11

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bg = add i16 %.sroa.035.065.i, -1
  %i.bh = and i16 %i.bg, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.h
  %i.bi = icmp eq <16 x i8> %i.aw, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.bj, 0
  br i1 %.not57.i, label %bb.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51, !prof !7

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51: ; preds = %.critedge19.i
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bj, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64
  %i.bm = add i64 %.sroa.7.0.i, %i.bl
  %i.bn = and i64 %i.bm, %i.r
  %i.bo = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ao, i64 %i.bn, i64 %.sroa.15.0.i) #27, !noalias !2603
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ar, align 8, !noalias !2603
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.bo
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread

bb.i:                                             ; preds = %.critedge19.i
  %i.bq = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.br = add i64 %i.bq, %.sroa.7.0.i
  br label %bb.h

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %bb.f, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51
  %i.bs = phi ptr [ %i.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51 ], [ %i.p, %bb.d ], [ %.pre, %bb.f ]
  %.sroa.3.047 = phi ptr [ %i.bp, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51 ], [ %i.v, %bb.d ], [ %i.ac, %bb.f ] ; 3 uses
  store ptr %i.bs, ptr %.sroa.3.047, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.3.047, i64 8
  store ptr null, ptr %i.bt, align 8
  %.pre101 = load ptr, ptr %i.a, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread
  %i.bu = phi ptr [ %.pre101, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.p, %bb.e ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %.sroa.3.048 = phi ptr [ %.sroa.3.047, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.w, %bb.e ], [ %i.bd, %.lr.ph.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.3.048, i64 8
  store ptr %i.e, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %1, align 8               ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not85 = icmp eq ptr %i.by, %i.bu
  br i1 %.not85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56
  %.pre103104 = phi ptr [ %i.bu, %.lr.ph ], [ %.pre103105, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56 ] ; 4 uses
  %i.cd = phi ptr [ %i.bu, %.lr.ph ], [ %i.eu, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56 ] ; 2 uses
  %i.ce = phi ptr [ %i.bw, %.lr.ph ], [ %i.ew, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56 ] ; 2 uses
  %i.cf = phi ptr [ %i.by, %.lr.ph ], [ %i.ex, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr %i.cf, ptr %i.b, align 8
  %i.cg = load i64, ptr %0, align 8               ; 6 uses
  %i.ch = icmp ult i64 %i.cg, 2
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = load i64, ptr %i.ca, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.ci, 131071
  %i.cj = load ptr, ptr %i.bz, align 8
  %i.ck = icmp eq ptr %i.cj, %i.cf                ; 2 uses
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.ck, i1 false
  br i1 %or.cond, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56, label %.thread58

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.cl = load i64, ptr %i.ca, align 8
  %sext.i.i.i = shl i64 %i.cl, 48
  %i.cm = ashr exact i64 %sext.i.i.i, 48
  %i.cn = ptrtoint ptr %i.cf to i64
  %i.co = xor i64 %i.cn, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.cp = zext i64 %i.co to i128
  %i.cq = mul nuw nsw i128 %i.cp, 8779197792823184629 ; 2 uses
  %i.cr = lshr i128 %i.cq, 64
  %i.cs = xor i128 %i.cr, %i.cq
  %i.ct = trunc i128 %i.cs to i64
  %i.cu = xor i64 %i.cm, %i.ct                    ; 4 uses
  %i.cv = lshr i64 %i.cu, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.cb, align 8 ; 4 uses
  %i.cx = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.pn.i7.i.i.i = phi i64 [ %i.cu, %bb.l ], [ %i.dq, %bb.o ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.dp, %bb.o ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i7.i.i.i, %i.cg ; 4 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.cz, i32 0, i32 3, i32 1)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.db = load <16 x i8>, ptr %i.da, align 1      ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.cy, %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %bb.n
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.dm, %bb.n ], [ %i.dd, %bb.m ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.6.0.i.i.i.i, %i.df
  %i.dh = and i64 %i.dg, %i.cg
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = icmp eq ptr %i.dj, %i.cf
  br i1 %i.dk, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50, label %bb.n, !prof !11

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dl = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.dm = and i16 %i.dl, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %bb.m
  %i.dn = icmp eq <16 x i8> %i.db, splat (i8 -128)
  %i.do = bitcast <16 x i1> %i.dn to i16
  %.not44.i.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not44.i.i.i.i, label %bb.o, label %bb.s, !prof !7

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dp = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.dq = add i64 %i.dp, %.sroa.6.0.i.i.i.i
  br label %bb.m, !llvm.loop !2606

.thread58:                                        ; preds = %bb.k
  %.not.i.i.i.i.i.i.i12 = icmp ult i64 %i.ci, 131072
  br i1 %.not.i.i.i.i.i.i.i12, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread58
  store i64 131072, ptr %i.ca, align 8, !noalias !2607
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread

bb.q:                                             ; preds = %.thread58
  br i1 %i.ck, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !2607
  store ptr %0, ptr %2, align 8, !noalias !2607
  store ptr %i.b, ptr %i.cc, align 8, !noalias !2607
  %i.dr = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal6maglev10BasicBlockEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #27, !noalias !2607
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !2607
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i14 = load ptr, ptr %i.cb, align 8, !noalias !2607
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i14, i64 %i.dr
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2618
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.pn.i23 = phi i64 [ %i.cu, %bb.s ], [ %i.eq, %bb.u ]
  %.sroa.15.0.i24 = phi i64 [ 0, %bb.s ], [ %i.ep, %bb.u ] ; 2 uses
  %.sroa.7.0.i25 = and i64 %.pn.i23, %i.cg        ; 5 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.7.0.i25
  call void @llvm.prefetch.p0(ptr %i.dt, i32 0, i32 3, i32 1), !noalias !2618
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.7.0.i25
  %i.dv = load <16 x i8>, ptr %i.du, align 1, !noalias !2618 ; 2 uses
  %i.dw = icmp eq <16 x i8> %i.cy, %i.dv
  %i.dx = bitcast <16 x i1> %i.dw to i16          ; 2 uses
  %.not64.i26 = icmp eq i16 %i.dx, 0
  br i1 %.not64.i26, label %.critedge19.i31, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.t, %.critedge.i29
  %.sroa.035.065.i28 = phi i16 [ %i.eg, %.critedge.i29 ], [ %i.dx, %bb.t ] ; 3 uses
  %i.dy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i28, i1 true)
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = add i64 %.sroa.7.0.i25, %i.dz
  %i.eb = and i64 %i.ea, %i.cg
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.eb ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !2618
  %i.ee = icmp eq ptr %i.ed, %i.cf
  br i1 %i.ee, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19, label %.critedge.i29, !prof !11

.critedge.i29:                                    ; preds = %.lr.ph.i27
  %i.ef = add i16 %.sroa.035.065.i28, -1
  %i.eg = and i16 %i.ef, %.sroa.035.065.i28       ; 2 uses
  %.not.i30 = icmp eq i16 %i.eg, 0
  br i1 %.not.i30, label %.critedge19.i31, label %.lr.ph.i27

.critedge19.i31:                                  ; preds = %.critedge.i29, %bb.t
  %i.eh = icmp eq <16 x i8> %i.dv, splat (i8 -128)
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not57.i32 = icmp eq i16 %i.ei, 0
  br i1 %.not57.i32, label %bb.u, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread64, !prof !7

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread64: ; preds = %.critedge19.i31
  %i.ej = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  %i.el = add i64 %.sroa.7.0.i25, %i.ek
  %i.em = and i64 %i.el, %i.cg
  %i.en = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cu, i64 %i.em, i64 %.sroa.15.0.i24) #27, !noalias !2618
  %.sroa.0.0.copyload.i.i.i2.i26.i35 = load ptr, ptr %i.cb, align 8, !noalias !2618
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i35, i64 %i.en
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread

bb.u:                                             ; preds = %.critedge19.i31
  %i.ep = add i64 %.sroa.15.0.i24, 16             ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.7.0.i25
  br label %bb.t

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread: ; preds = %bb.r, %bb.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread64
  %.sroa.343.060 = phi ptr [ %i.eo, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread64 ], [ %i.bz, %bb.p ], [ %i.ds, %bb.r ] ; 3 uses
  %i.er = load ptr, ptr %i.b, align 8, !noalias !2621
  store ptr %i.er, ptr %.sroa.343.060, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.343.060, i64 8
  store ptr null, ptr %i.es, align 8
  %.pre103.pre = load ptr, ptr %i.a, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19: ; preds = %.lr.ph.i27, %bb.q, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread
  %.pre103 = phi ptr [ %.pre103.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread ], [ %.pre103104, %bb.q ], [ %.pre103104, %.lr.ph.i27 ] ; 2 uses
  %.sroa.343.061 = phi ptr [ %.sroa.343.060, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread ], [ %i.bz, %bb.q ], [ %i.ec, %.lr.ph.i27 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.343.061, i64 8
  store ptr %i.e, ptr %i.et, align 8
  %.pre102 = load ptr, ptr %1, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56: ; preds = %bb.k, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19
  %.pre103105 = phi ptr [ %.pre103104, %bb.k ], [ %.pre103104, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50 ], [ %.pre103, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19 ]
  %i.eu = phi ptr [ %i.cd, %bb.k ], [ %i.cd, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50 ], [ %.pre103, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19 ] ; 2 uses
  %i.ev = phi ptr [ %i.ce, %bb.k ], [ %i.ce, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50 ], [ %.pre102, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit19 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %1, align 8
  %i.ex = load ptr, ptr %i.ev, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ex, %i.eu
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !2622

.loopexit:                                        ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal6maglev10BasicBlockEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !209
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  %i.k = xor i64 %1, %i.j
  ret i64 %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal6maglev10BasicBlock10successorsEv(ptr dead_on_unwind noalias writable sret(%"class.v8::base::SmallVector.4019") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i16                    ; 2 uses
  %i.f = add i16 %i.e, -320
  %i.g = icmp ult i16 %i.f, -3
  %.not42 = icmp eq ptr %i.b, null                ; 3 uses
  %.not = or i1 %.not42, %i.g
  br i1 %.not, label %bb.b, label %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.l, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.k, align 8
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = add i16 %i.e, -317
  %i.p = icmp ult i16 %i.o, -15
  %.not22 = or i1 %.not42, %i.p
  br i1 %.not22, label %bb.c, label %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26

_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load <2 x ptr>, ptr %i.q, align 8
  store ptr %i.r, ptr %0, align 8
  store ptr %i.u, ptr %i.t, align 8
  store <2 x ptr> %i.v, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.w, ptr %i.s, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.x = and i64 %i.d, 65535
  %i.y = icmp ne i64 %i.x, 301
  %.not23 = or i1 %.not42, %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not23, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.z, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !range !5, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit, label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit ] ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.ab, align 8
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit: ; preds = %bb.e, %bb.f
  %i.aq = phi ptr [ %.pre.i.i, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.aa, align 8
  store ptr %i.am, ptr %i.aq, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.ad, align 8
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.e, label %._crit_edge, !llvm.loop !2623

_ZNK2v88internal6maglev6Switch11fallthroughEv.exit: ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ab, align 8
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.g, label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29, !prof !7

bb.g:                                             ; preds = %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %.pre.i.i28 = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29

_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29: ; preds = %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit, %bb.g
  %i.ba = phi ptr [ %.pre.i.i28, %bb.g ], [ %i.ax, %_ZNK2v88internal6maglev6Switch11fallthroughEv.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.aa, align 8
  store ptr %i.aw, ptr %i.ba, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bc, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bf, ptr %i.be, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit26, %._crit_edge, %_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE9push_backES5_.exit29, %bb.h, %_ZSt18uninitialized_moveIPKPN2v88internal6maglev10BasicBlockEPS4_ET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 6 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i.i.i = icmp ugt i64 %i.d, 131071
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %1
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.g, i1 false
  br i1 %or.cond, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %sext.i.i.i = shl i64 %i.j, 48
  %i.k = ashr exact i64 %sext.i.i.i, 48
  %i.l = ptrtoint ptr %1 to i64
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.n = zext i64 %i.m to i128
  %i.o = mul nuw nsw i128 %i.n, 8779197792823184629 ; 2 uses
  %i.p = lshr i128 %i.o, 64
  %i.q = xor i128 %i.p, %i.o
  %i.r = trunc i128 %i.q to i64
  %i.s = xor i64 %i.k, %i.r                       ; 4 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.v, align 8 ; 4 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i7.i.i.i = phi i64 [ %i.s, %bb.c ], [ %i.ap, %bb.f ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ao, %bb.f ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i7.i.i.i, %i.a ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.al, %bb.e ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.a
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %bb.g, label %bb.e, !prof !11

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.am = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not44.i.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not44.i.i.i.i, label %bb.f, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread, !prof !7

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.6.0.i.i.i.i
  br label %bb.d, !llvm.loop !2606

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  tail call void @llvm.prefetch.p0(ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2624
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi i64 [ %i.s, %bb.g ], [ %i.bh, %bb.i ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.g ], [ %i.bg, %bb.i ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1), !noalias !2624
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !noalias !2624 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.x, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.au, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.bd, %.critedge.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !2624
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit, label %.critedge.i, !prof !11

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bc = add i16 %.sroa.035.065.i, -1
  %i.bd = and i16 %i.bc, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.h
  %i.be = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.bf, 0
  br i1 %.not57.i, label %bb.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread, !prof !7

bb.i:                                             ; preds = %.critedge19.i
  %i.bg = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.7.0.i
  br label %bb.h

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %.critedge19.i
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.7.0.i, %i.bj
  %i.bl = and i64 %i.bk, %i.a
  %i.bm = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i64 %i.bl, i64 %.sroa.15.0.i) #27, !noalias !2624
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.v, align 8, !noalias !2624
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.bm ; 3 uses
  store ptr %1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr null, ptr %i.bo, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit: ; preds = %.lr.ph.i, %bb.b, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread
  %.sroa.3.07 = phi ptr [ %i.bn, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.e, %bb.b ], [ %i.az, %.lr.ph.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.3.07, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.b, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit
  %.0 = phi ptr [ %i.bq, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit ], [ null, %bb.b ], [ null, %._crit_edge.i.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer22RecordHeadersForBypassEPNS0_6maglev10BasicBlockEPKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8
  store ptr %2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.f, ptr %4, align 8
  %i.g = call { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb0EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call noundef ptr @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.h) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8
  %.not3 = icmp eq ptr %i.i, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.f, ptr %3, align 8
  %i.j = call { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb0EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call noundef ptr @_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.k) ; 2 uses
  store ptr %i.l, ptr %i.c, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2627
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.a, %i.k
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.a, %i.p
  br i1 %i.m, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !2628

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !2628

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !2628

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %i.d, i64 noundef %i.x, i64 noundef 1) #27 ; 2 uses
  %i.z = extractvalue { i8, i64 } %i.y, 0
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ab = extractvalue { i8, i64 } %i.y, 1
  tail call void @_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab)
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor30ComputePredecessorPermutationsEPNS0_6maglev10BasicBlockEPNS2_5BlockEbb:bb.a
._crit_edge45:                                    ; preds = %bb.r, %_ZN2v84base11SmallVectorIiLm16ESaIiEE6resizeEmRKi.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.e:                                             ; preds = %.lr.ph44, %bb.r
  %.sroa.025.042 = phi ptr [ %.sroa.025.038, %.lr.ph44 ], [ %.sroa.025.0, %bb.r ] ; 2 uses
  %.021.in41 = phi i32 [ %i.ar, %.lr.ph44 ], [ %.02143, %bb.r ] ; 2 uses
  %.02143 = add nsw i32 %.021.in41, -1            ; 2 uses
  br i1 %4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.ap, align 8
  %i.bk = icmp eq i32 %.021.in41, %i.bj
  br i1 %i.bk, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bl, align 4
  %i.bm = zext i32 %.sroa.0.0.copyload.i.i to i64 ; 4 uses
  %i.bn = load ptr, ptr %i.as, align 8
  %i.bo = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %.not.i.i = icmp ugt i64 %i.bs, %i.bm
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.bt = lshr i64 %i.bm, 1
  %i.bu = add nuw nsw i64 %i.bm, 32
  %i.bv = add nuw nsw i64 %i.bu, %i.bt
  call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.bv)
  %i.bw = load ptr, ptr %i.av, align 8
  %i.bx = load ptr, ptr %i.at, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.cb)
  %.pre.i.i = load ptr, ptr %i.at, align 8
  br label %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit: ; preds = %bb.g, %bb.h
  %i.cc = phi ptr [ %.pre.i.i, %bb.h ], [ %i.bo, %bb.g ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bm
  %i.ce = load ptr, ptr %i.cd, align 8            ; 7 uses
  %i.cf = load ptr, ptr %5, align 8               ; 4 uses
  %i.cg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = ashr i64 %i.cj, 5                       ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit
  %i.cm = and i64 %i.cj, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.cz, %bb.m ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.cy, %bb.m ] ; 9 uses
  %i.cn = load ptr, ptr %.02946.i.i.i.i, align 8
  %i.co = icmp eq ptr %i.cn, %i.ce
  br i1 %i.co, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cr, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = icmp eq ptr %i.ct, %i.ce
  br i1 %i.cu, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit59, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = icmp eq ptr %i.cw, %i.ce
  br i1 %i.cx, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit61, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.cz = add nsw i64 %.047.i.i.i.i, -1
  %i.da = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.da, label %bb.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !2742

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.m
  %.pre54.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre55.i.i.i.i = sub i64 %i.ch, %.pre54.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit
  %.pre-phi56.i.i.i.i = phi i64 [ %.pre55.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cj, %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cf, %_ZN2v88internal8compiler10turboshaft26BlockOriginTrackingReducerINS2_28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S6_S7_S9_SB_EEEEEEEEEEEEEEEEEEEEEE15GetMaglevOriginEPKNS2_5BlockE.exit ] ; 5 uses
  %i.db = ashr exact i64 %.pre-phi56.i.i.i.i, 3
  switch i64 %i.db, label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit [
    i64 3, label %bb.n
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dc = load ptr, ptr %.029.lcssa.i.i.i.i, align 8
  %i.dd = icmp eq ptr %i.dc, %i.ce
  br i1 %i.dd, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.o
  %.1.i.i.i.i = phi ptr [ %i.de, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.df = load ptr, ptr %.1.i.i.i.i, align 8
  %i.dg = icmp eq ptr %i.df, %i.ce
  br i1 %i.dg, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.p
  %.2.i.i.i.i = phi ptr [ %i.dh, %bb.p ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.di = load ptr, ptr %.2.i.i.i.i, align 8
  %i.dj = icmp eq ptr %i.di, %i.ce
  br i1 %i.dj, label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.j
  %i.dk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit59: ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit61: ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i

_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i: ; preds = %bb.i, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit59, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit61, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.n
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.n ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.dm, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit61 ], [ %i.dk, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.dl, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit59 ], [ %.02946.i.i.i.i, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %.028.i.i.i.i, %i.cg
  br i1 %.not.i, label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i
  %i.dn = ptrtoint ptr %.028.i.i.i.i to i64
  %i.do = sub i64 %i.dn, %i.ci
  %i.dp = ashr exact i64 %i.do, 3
  br label %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit

_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit: ; preds = %._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i, %bb.q
  %.sroa.0.0.i = phi i64 [ %i.dp, %bb.q ], [ undef, %_ZSt4findIPKPKN2v88internal6maglev10BasicBlockES5_ET_S8_S8_RKT0_.exit.i ], [ undef, %._crit_edge.i.i.i.i ], [ undef, %._crit_edge._crit_edge52.i.i.i.i ]
  %i.dq = load ptr, ptr %i.r, align 8
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.sroa.0.0.i
  store i32 %.02143, ptr %i.dr, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %_ZN2v84base8index_ofINS0_11SmallVectorIPKNS_8internal6maglev10BasicBlockELm16ESaIS7_EEES7_EESt8optionalImERKT_RKT0_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 64
  %.sroa.025.0 = load ptr, ptr %i.ds, align 8     ; 2 uses
  %.not = icmp eq ptr %.sroa.025.0, null
  br i1 %.not, label %._crit_edge45, label %bb.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !2743
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESH_b(ptr noundef nonnull align 8 dereferenceable(936) %i.a, ptr noundef %i.d, ptr noundef %1, i1 noundef zeroext false), !inline_history !2744
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not36 = icmp eq i32 %i.g, -1
  br i1 %.not36, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.o = load i64, ptr %i.n, align 8
  %sext.i.i.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i.i.i, 48
  %i.q = zext i32 %i.g to i64
  %i.r = xor i64 %i.p, %i.q
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i.i = phi i64 [ %i.w, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i8.i.i.i, %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.ap, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.i
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34, label %bb.f, !prof !11

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !2745

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8
  %i.av = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !range !5, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a
  call void @_ZSt27__throw_bad_optional_accessv() #29
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.bc, %i.be
  br i1 %.not39, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.040 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bq, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.040, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8, !nonnull !6, !align !209 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = zext i32 %.sroa.4.0.copyload to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bo, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bf, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bp, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bg, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bq = getelementptr inbounds nuw i8, ptr %.040, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.be
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %0, i32 %1, ptr %2, i64 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not10.i = icmp eq i16 %i.m, 0
  br i1 %.not10.i, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.p = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.k, align 4
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = zext i32 %.sroa.01.0.copyload.i.prol to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = add i8 %i.x, -1                          ; 2 uses
  %spec.select.i.i.prol = icmp ult i8 %i.y, -2
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !11

bb.b:                                             ; preds = %.lr.ph.i.prol
  store i8 %i.y, ptr %i.w, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol: ; preds = %bb.b, %.lr.ph.i.prol
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.z, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol ]
  %i.aa = icmp eq i64 %i.p, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1
  %.011.i = phi ptr [ %i.as, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1 ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  %spec.select.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !11

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.ai, ptr %i.ag, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i, i64 4
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.01.0.copyload.i.1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  %spec.select.i.i.1 = icmp ult i8 %i.ar, -2
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.as, %i.o
  br i1 %.not.i.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, label %.lr.ph.i

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8
  %.pre28 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre29 = add i64 %.pre28, %i.d                 ; 2 uses
  %.pre31 = inttoptr i64 %.pre29 to ptr
  br label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit, %bb.a
  %.pre-phi32 = phi ptr [ %.pre31, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi30 = phi i64 [ %.pre29, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre28, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.04.0.copyload = load i8, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = lshr i32 %1, 4
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 3 uses
  store ptr %.pre-phi32, ptr %i.au, align 8
  %i.bc = add i64 %3, 3
  %i.bd = lshr i64 %i.bc, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 2) ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = sub i64 %i.bg, %.pre-phi30
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = icmp ult i64 %i.bi, %.sroa.speculated.i.i.i
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %i.bk = sub i64 %i.bg, %.pre-phi
  %i.bl = lshr exact i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = add nuw i64 %i.bm, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 noundef %i.bn)
  %.pre.i.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre26 = load ptr, ptr %i.a, align 8
  %.pre27 = load ptr, ptr %i.aw, align 8
  %.pre33 = ptrtoint ptr %.pre26 to i64
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit
  %.pre-phi34 = phi i64 [ %.pre33, %bb.e ], [ %.pre-phi, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
  %i.bo = phi ptr [ %.pre27, %bb.e ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit ]
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor20HoleyFloat64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev20HoleyFloat64ToTagged14ConversionModeE:bb.a
  %i.aq = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSQ_IJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEENSQ_IJNS2_13FloatWithBitsILm32EEENSV_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS11_10AssumptionENS2_22RegisterRepresentationES14_(ptr noundef nonnull align 8 dereferenceable(666) %i.ag, i32 %1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 3, i8 0)
  %.pr = load ptr, ptr %i.af, align 8
  %i.ar = icmp eq ptr %.pr, null
  br i1 %i.ar, label %.critedge.2, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit, !prof !2423

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE39TruncateFloat64ToInt32OverflowUndefinedENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit
  %i.as = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_30ConvertUntaggedToJSPrimitiveOpEJNS2_14ShadowyOpIndexENSI_15JSPrimitiveKindENS2_22RegisterRepresentationENSI_19InputInterpretationENS1_21CheckForMinusZeroModeEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.ag, i32 %i.aq, i8 noundef zeroext 5, i8 0, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %i.at = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_30ConvertUntaggedToJSPrimitiveOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.ag, i32 %i.as)
  %.pr51 = load ptr, ptr %i.af, align 8           ; 2 uses
  %i.au = icmp eq ptr %.pr51, null
  br i1 %i.au, label %.critedge.2, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit
  store i8 1, ptr %i.ac, align 8
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 52
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp ne i32 %i.ax, -1
  %i.az = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.ag, ptr noundef nonnull %i.av, i1 noundef zeroext %i.ay), !inline_history !2430 ; 0 uses
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  %i.bc = load i32, ptr %i.bb, align 4
  %.not.i.i.i = icmp eq i32 %i.bc, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  %i.bd = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.be = load ptr, ptr %i.aa, align 8
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.bg = phi ptr [ %.pre.i.i.i.i.i.i, %bb.g ], [ %i.bd, %bb.f ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store ptr %i.bh, ptr %i.z, align 8
  store i32 %i.at, ptr %i.bg, align 4
  %i.bi = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.w, align 8
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit, !prof !7

bb.h:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i, %bb.h
  %i.bl = phi ptr [ %.pre.i.i4.i.i.i.i, %bb.h ], [ %i.bi, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.v, align 8
  store ptr %.pr51, ptr %i.bl, align 8
  %.pr53.pr = load ptr, ptr %i.af, align 8
  %i.bn = icmp eq ptr %.pr53.pr, null
  br i1 %i.bn, label %.critedge.2, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit
  %i.bo = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp ne i32 %i.bq, -1
  %i.bs = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.ag, ptr noundef nonnull %i.bo, i1 noundef zeroext %i.br), !inline_history !2430 ; 0 uses
  br label %.critedge.2

.critedge.2:                                      ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12Float64IsSmiENS2_1VINS2_13FloatWithBitsILm64EEEEE.exit, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit, %bb.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE39TruncateFloat64ToInt32OverflowUndefinedENS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.j

bb.j:                                             ; preds = %.critedge.2, %_ZN2v88internal8compiler10turboshaft5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEC2INS2_26GraphBuildingNodeProcessorEEEPT_NS_14SourceLocationE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit29, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_30ConvertUntaggedToJSPrimitiveOpEJNS2_14ShadowyOpIndexENSI_15JSPrimitiveKindENS2_22RegisterRepresentationENSI_19InputInterpretationENS1_21CheckForMinusZeroModeEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.bw, i32 %1, i8 noundef zeroext 3, i8 3, i8 noundef zeroext 3, i8 noundef zeroext 0)
  %i.by = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_30ConvertUntaggedToJSPrimitiveOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.bw, i32 %i.bx)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit29

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit29: ; preds = %bb.j, %bb.k
  %.sroa.06.0.i.i28 = phi i32 [ %i.by, %bb.k ], [ -1, %bb.j ] ; 2 uses
  %i.bz = load i8, ptr %i.ac, align 8, !range !5, !noundef !6
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit29
  %i.cb = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit37, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i31

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i31: ; preds = %bb.l
  store i8 1, ptr %i.ac, align 8
  %i.cd = load ptr, ptr %3, align 8               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = icmp ne i32 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ci = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.ch, ptr noundef nonnull %i.cd, i1 noundef zeroext %i.cg), !inline_history !2430 ; 0 uses
  %i.cj = load ptr, ptr %3, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 52
  %i.cl = load i32, ptr %i.ck, align 4
  %.not.i.i.i32 = icmp eq i32 %i.cl, -1
  br i1 %.not.i.i.i32, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i31
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i31
  %i.cm = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cn = load ptr, ptr %i.aa, align 8
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.o, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i33, !prof !7

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %.pre.i.i.i.i.i.i36 = load ptr, ptr %i.z, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i33

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i33: ; preds = %bb.o, %bb.n
  %i.cp = phi ptr [ %.pre.i.i.i.i.i.i36, %bb.o ], [ %i.cm, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store ptr %i.cq, ptr %i.z, align 8
  store i32 %.sroa.06.0.i.i28, ptr %i.cp, align 4
  %i.cr = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.cs = load ptr, ptr %i.w, align 8
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.p, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEE12RecordValuesEPNS2_5BlockERNS9_9BlockDataERKSt5tupleIJNS2_1VIS8_EEEE.exit.i.i34, !prof !7

bb.p:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i33
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %.pre.i.i4.i.i.i.i35 = load ptr, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEE12RecordValuesEPNS2_5BlockERNS9_9BlockDataERKSt5tupleIJNS2_1VIS8_EEEE.exit.i.i34

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEE12RecordValuesEPNS2_5BlockERNS9_9BlockDataERKSt5tupleIJNS2_1VIS8_EEEE.exit.i.i34: ; preds = %bb.p, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i33
  %i.cu = phi ptr [ %.pre.i.i4.i.i.i.i35, %bb.p ], [ %i.cr, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE9push_backESB_.exit.i.i.i.i33 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cv, ptr %i.v, align 8
  store ptr %i.cb, ptr %i.cu, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit37

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit37: ; preds = %bb.l, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEE12RecordValuesEPNS2_5BlockERNS9_9BlockDataERKSt5tupleIJNS2_1VIS8_EEEE.exit.i.i34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS8_EEEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.4489") align 4 %5, ptr noundef nonnull align 8 dereferenceable(105) %3, ptr noundef nonnull align 8 dereferenceable(936) %i.cw, ptr null)
  %.sroa.022.0.copyload = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit29, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit37
  %.sroa.022.0 = phi i32 [ %.sroa.022.0.copyload, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_9UndefinedEEEEEEEEEvRT_RKNSQ_17const_or_values_tE.exit37 ], [ %.sroa.06.0.i.i28, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE28ConvertUntaggedToJSPrimitiveENS2_1VINS2_13UntaggedUnionIJNSJ_IJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEENSJ_IJNS2_13FloatWithBitsILm32EEENSO_ILm64EEEEEEEEEEENS2_30ConvertUntaggedToJSPrimitiveOp15JSPrimitiveKindENS2_22RegisterRepresentationENSU_19InputInterpretationENS1_21CheckForMinusZeroModeE.exit29 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS2_5UnionIJNS2_3SmiENS2_10HeapNumberENS2_9UndefinedEEEEEELm2ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i32 %.sroa.022.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.4449") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey.4453", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !2770
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !2770
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !2770
  %i.g = load i32, ptr %i.f, align 8, !noalias !2770
  %i.h = icmp eq i32 %i.g, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !2770
  store ptr %1, ptr %3, align 8, !noalias !2770
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.i, align 8, !noalias !2770
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #27, !noalias !2770 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !2770
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2770, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.l, align 8, !noalias !2770
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.j
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !2775 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2775
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !2775
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %2, align 4, !noalias !2775 ; 2 uses
  %i.r = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !2775 ; 3 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.x, %bb.f ], [ %i.bb, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.ba, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !2775
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !2775 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.ah, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.a                     ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !noalias !2775
  %i.ao = icmp eq i32 %i.an, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ao, label %.critedge21.i, label %.critedge.i, !prof !11

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.066.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !7

.thread.i:                                        ; preds = %.critedge19.i
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.7.0.i, %i.au
  %i.aw = and i64 %i.av, %i.a
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.aw, i64 %.sroa.15.0.i) #27, !noalias !2775 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !2775, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !2775
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.ba = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit: ; preds = %.critedge21.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink82.i.sink = phi ptr [ @_ZN4absl18container_internal11kSooControlE, %bb.d ], [ %i.k, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ %i.ay, %.thread.i ], [ %i.bd, %.critedge21.i ]
  %.sink81.i.sink = phi ptr [ %i.f, %bb.d ], [ %i.m, %bb.e ], [ %i.e, %bb.c ], [ %i.az, %.thread.i ], [ %i.bc, %.critedge21.i ]
  %.sink.i.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  store ptr %.sink82.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.be, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !2574
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4
  %i.c = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.d = xor i64 %1, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_30ConvertUntaggedToJSPrimitiveOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !209
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.p = load i8, ptr %i.o, align 1, !noalias !2778 ; 2 uses
  %i.q = load i8, ptr %i.n, align 1, !noalias !2778 ; 2 uses
  %i.r = load i8, ptr %i.m, align 1, !noalias !2778 ; 2 uses
  %i.s = load i8, ptr %i.l, align 1, !noalias !2778 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.t = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.u = zext nneg i32 %i.t to i64
  %i.v = zext i8 %i.p to i64
  %i.w = mul nuw nsw i64 %i.v, 17
  %i.x = zext i8 %i.q to i64
  %i.y = add nuw nsw i64 %i.w, %i.x
  %i.z = mul nuw nsw i64 %i.y, 17
  %i.aa = zext i8 %i.r to i64
  %i.ab = add nuw nsw i64 %i.z, %i.aa
  %i.ac = mul nuw nsw i64 %i.ab, 17
  %i.ad = zext i8 %i.s to i64
  %i.ae = add nuw nsw i64 %i.ac, %i.ad
  %reass.add.i.i.i = add nuw nsw i64 %i.ae, %i.u
  %i.af = mul nuw nsw i64 %reass.add.i.i.i, 289
  %i.ag = add nuw nsw i64 %i.af, -807902598658493423 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i64 %i.ag, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.bu, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ao, %bb.b ]
  %i.aq = phi ptr [ %i.bs, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.am, %bb.b ] ; 2 uses
  %.02432.i = phi i64 [ %i.br, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.aj, %bb.b ]
  %i.ar = icmp eq i64 %.pre.pre, %i.ag
  br i1 %i.ar, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %i.d, align 8, !nonnull !6, !align !209
  %.sroa.0.0.copyload.i = load i32, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = icmp eq i8 %i.az, -127
  br i1 %i.ba, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.i, align 4
  %i.bc = icmp eq i32 %i.bb, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.bc, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2781
  %i.bg = load i8, ptr %i.bd, align 4, !noalias !2781
  %i.bh = icmp eq i8 %i.bg, %i.s
  %i.bi = icmp eq i8 %i.bf, %i.r
  %or.cond.i.i.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i.i.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.bk = load i8, ptr %i.bj, align 2, !noalias !2781
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2781
  %i.bn = icmp eq i8 %i.bk, %i.q
  %i.bo = icmp eq i8 %i.bm, %i.p
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_30ConvertUntaggedToJSPrimitiveOpEEEPNSJ_5EntryERKT_Pm.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.i, %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %i.bq = add i64 %.02432.i, 1
  %i.br = and i64 %i.bq, %i.ai                    ; 2 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.loopexit, label %.lr.ph.i, !llvm.loop !2784

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i, %bb.b
  %.ph = phi ptr [ %i.am, %bb.b ], [ %i.bs, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.thread.i ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cf = load i32, ptr %i.ce, align 4
  store i32 %1, ptr %.ph, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store i32 %.sroa.0.0.copyload.i16, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.ag, ptr %i.bw, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  store ptr %i.cd, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 24
  store i32 %i.cf, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cg = load ptr, ptr %i.ca, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  store ptr %.ph, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8
  br label %bb.i

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_30ConvertUntaggedToJSPrimitiveOpEEEPNSJ_5EntryERKT_Pm.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_30ConvertUntaggedToJSPrimitiveOpEE12EqualsForGVNERKS5_.exit.i
  %i.cl = load ptr, ptr %i.d, align 8, !nonnull !6, !align !209 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !2785 ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 5 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !2785
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = sub i64 %i.co, %i.cr                    ; 2 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = lshr i32 %i.ct, 4
  %i.cx = add nsw i32 %i.cw, -1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i64                   ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = sub i64 %i.cs, %i.dc
  %i.de = and i64 %i.dd, 4294967295
  %i.df = add i64 %i.de, %i.cr
  %i.dg = inttoptr i64 %i.df to ptr               ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 4
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dk ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.dn = load i16, ptr %i.dm, align 2            ; 2 uses
  %i.do = zext i16 %i.dn to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.do, 2          ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not10.i.i.i, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.preheader

end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev6SwitchERKNS4_15ProcessingStateE:bb.a
_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN2v88internal6maglev10BasicBlockESt6vectorINS4_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISE_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.am
  %i.ln = shl nuw nsw i64 %i.lj, 3                ; 2 uses
  %i.lo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lo, i8 0, i64 %i.ln, i1 false)
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN2v88internal6maglev10BasicBlockESt6vectorINS4_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISE_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, %bb.al
  %.0.i.i160 = phi ptr [ %i.ar, %bb.al ], [ %i.lo, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN2v88internal6maglev10BasicBlockESt6vectorINS4_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISE_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i ] ; 4 uses
  %i.lp = load ptr, ptr %i.as, align 8            ; 2 uses
  store ptr null, ptr %i.as, align 8
  %.not29.i = icmp eq ptr %i.lp, null
  br i1 %.not29.i, label %._crit_edge.i164, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.at
  %.031.i = phi ptr [ %i.lq, %bb.at ], [ %i.lp, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %.02530.i = phi i64 [ %.1.i162, %bb.at ], [ 0, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %i.lq = load ptr, ptr %.031.i, align 8          ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = urem i64 %i.lt, %i.lj                   ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i160, i64 %i.lu ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8            ; 2 uses
  %.not27.i = icmp eq ptr %i.lw, null
  br i1 %.not27.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.lr.ph.i161
  %i.lx = load ptr, ptr %i.as, align 8
  store ptr %i.lx, ptr %.031.i, align 8
  store ptr %.031.i, ptr %i.as, align 8
  store ptr %i.as, ptr %i.lv, align 8
  %i.ly = load ptr, ptr %.031.i, align 8
  %.not28.i = icmp eq ptr %i.ly, null
  br i1 %.not28.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i160, i64 %.02530.i
  store ptr %.031.i, ptr %i.lz, align 8
  br label %bb.at

bb.as:                                            ; preds = %.lr.ph.i161
  %i.ma = load ptr, ptr %i.lw, align 8
  store ptr %i.ma, ptr %.031.i, align 8
  %i.mb = load ptr, ptr %i.lv, align 8
  store ptr %.031.i, ptr %i.mb, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.1.i162 = phi i64 [ %.02530.i, %bb.as ], [ %i.lu, %bb.ar ], [ %i.lu, %bb.aq ]
  %.not.i163 = icmp eq ptr %i.lq, null
  br i1 %.not.i163, label %._crit_edge.i164, label %.lr.ph.i161, !llvm.loop !2751

._crit_edge.i164:                                 ; preds = %bb.at, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.mc = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ar
  br i1 %i.md, label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i164
  %i.me = load i64, ptr %i.ao, align 8
  %i.mf = shl i64 %i.me, 3
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #30
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit

_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit: ; preds = %._crit_edge.i164, %bb.au
  store i64 %i.lj, ptr %i.ao, align 8
  store ptr %.0.i.i160, ptr %i.am, align 8
  %i.mg = urem i64 %i.km, %i.lj
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i._crit_edge, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit
  %i.mh = phi ptr [ %.0.i.i160, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit ], [ %.pre263, %.loopexit.i._crit_edge ] ; 3 uses
  %.0.i19.i = phi i64 [ %i.mg, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit ], [ %i.ko, %.loopexit.i._crit_edge ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %.0.i19.i
  %i.mj = load ptr, ptr %i.mi, align 8            ; 3 uses
  %.not.i.i20.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i20.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mk = load ptr, ptr %i.mj, align 8
  store ptr %i.mk, ptr %i.lc, align 8
  store ptr %i.lc, ptr %i.mj, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.ml = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.ml, ptr %i.lc, align 8
  store ptr %i.lc, ptr %i.as, align 8
  %.not11.i.i.i = icmp eq ptr %i.ml, null
  br i1 %.not11.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load i64, ptr %i.ao, align 8
  %i.mo = load ptr, ptr %i.mm, align 8
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = urem i64 %i.mp, %i.mn
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mq
  store ptr %i.lc, ptr %i.mr, align 8
  %.pre.i159 = load ptr, ptr %i.am, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ms = phi ptr [ %.pre.i159, %bb.ay ], [ %i.mh, %bb.ax ]
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.0.i19.i
  store ptr %i.as, ptr %i.mt, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i

_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %bb.az, %bb.aw
  %i.mu = load i64, ptr %i.aq, align 8
  %i.mv = add i64 %i.mu, 1
  store i64 %i.mv, ptr %i.aq, align 8
  br label %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit

_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit: ; preds = %bb.ai, %bb.ah, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i = phi ptr [ %i.lc, %_ZNSt10_HashtableIPKN2v88internal6maglev10BasicBlockESt4pairIKS5_St6vectorINS1_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.ks, %bb.ah ], [ %i.kx, %bb.ai ] ; 3 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24 ; 4 uses
  %i.mx = load ptr, ptr %i.mw, align 8            ; 5 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8
  %.not.i.i85 = icmp eq ptr %i.mx, %i.mz
  br i1 %.not.i.i85, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit
  store ptr %i.kf, ptr %i.mx, align 8
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store ptr %.065237, ptr %.sroa.5178.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store i32 %i.jq, ptr %.sroa.6.0..sroa_idx, align 8
  %i.na = load ptr, ptr %i.mw, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store ptr %i.nb, ptr %i.mw, align 8
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92

bb.bb:                                            ; preds = %_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_St6vectorINS2_8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaISD_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS8_.exit
  %i.nc = load ptr, ptr %.1.i, align 8            ; 4 uses
  %i.nd = ptrtoint ptr %i.mx to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 6 uses
  %i.ng = icmp eq i64 %i.nf, 9223372036854775800
  br i1 %i.ng, label %bb.bc, label %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #28
  unreachable

_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86: ; preds = %bb.bb
  %i.nh = sdiv exact i64 %i.nf, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i87 = call i64 @llvm.umax.i64(i64 %i.nh, i64 1)
  %i.ni = add nsw i64 %.sroa.speculated.i.i.i.i87, %i.nh ; 2 uses
  %i.nj = icmp ult i64 %i.ni, %i.nh
  %i.nk = call i64 @llvm.umin.i64(i64 %i.ni, i64 384307168202282325)
  %i.nl = select i1 %i.nj, i64 384307168202282325, i64 %i.nk ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.nl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.nm = mul nuw nsw i64 %i.nl, 24
  %i.nn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #32 ; 4 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.nf ; 4 uses
  store ptr %i.kf, ptr %i.no, align 8
  %.sroa.5178.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %.065237, ptr %.sroa.5178.0..sroa_idx179, align 8
  %.sroa.6.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store i32 %i.jr, ptr %.sroa.6.0..sroa_idx181, align 8
  %i.np = icmp sgt i64 %i.nf, 0
  br i1 %i.np, label %bb.bd, label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89

bb.bd:                                            ; preds = %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nn, ptr align 8 %i.nc, i64 %i.nf, i1 false)
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89: ; preds = %bb.bd, %_ZNKSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i86
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %.not.i17.i.i.i90 = icmp eq ptr %i.nc, null
  br i1 %.not.i17.i.i.i90, label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.nf) #30
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91: ; preds = %bb.be, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i89
  store ptr %i.nn, ptr %.1.i, align 8
  store ptr %i.nq, ptr %i.mw, align 8
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %i.nl
  store ptr %i.nr, ptr %i.my, align 8
  br label %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92

_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92: ; preds = %bb.ba, %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i91
  %i.ns = load i64, ptr %i.ah, align 8            ; 6 uses
  %i.nt = icmp ult i64 %i.ns, 2
  br i1 %i.nt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92
  %i.nu = load i64, ptr %i.au, align 8
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.nu, 131071
  %i.nv = load ptr, ptr %i.at, align 8
  %i.nw = icmp eq ptr %i.nv, %storemerge236
  %or.cond.i = select i1 %.not.i.i.i.i.i.i, i1 %i.nw, i1 false
  br i1 %or.cond.i, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit, label %._crit_edge239

bb.bg:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.nx = load i64, ptr %i.au, align 8
  %sext.i.i.i.i = shl i64 %i.nx, 48
  %i.ny = ashr exact i64 %sext.i.i.i.i, 48
  %i.nz = xor i64 %i.km, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.oa = zext i64 %i.nz to i128
  %i.ob = mul nuw nsw i128 %i.oa, 8779197792823184629 ; 2 uses
  %i.oc = lshr i128 %i.ob, 64
  %i.od = xor i128 %i.oc, %i.ob
  %i.oe = trunc i128 %i.od to i64
  %i.of = xor i64 %i.ny, %i.oe                    ; 4 uses
  %i.og = lshr i64 %i.of, 57
  %i.oh = trunc nuw nsw i64 %i.og to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i = load ptr, ptr %i.av, align 8 ; 4 uses
  %i.oi = insertelement <16 x i8> poison, i8 %i.oh, i64 0
  %i.oj = shufflevector <16 x i8> %i.oi, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %bb.bg
  %.pn.i7.i.i.i.i = phi i64 [ %i.of, %bb.bg ], [ %i.pb, %bb.bj ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.bg ], [ %i.pa, %bb.bj ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i7.i.i.i.i, %i.ns ; 4 uses
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.ok, i32 0, i32 3, i32 1)
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  %i.om = load <16 x i8>, ptr %i.ol, align 1      ; 2 uses
  %i.on = icmp eq <16 x i8> %i.oj, %i.om
  %i.oo = bitcast <16 x i1> %i.on to i16          ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i16 %i.oo, 0
  br i1 %.not46.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %bb.bh, %bb.bi
  %.sroa.017.047.i.i.i.i.i = phi i16 [ %i.ox, %bb.bi ], [ %i.oo, %bb.bh ] ; 3 uses
  %i.op = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i, i1 true)
  %i.oq = zext nneg i16 %i.op to i64
  %i.or = add i64 %.sroa.6.0.i.i.i.i.i, %i.oq
  %i.os = and i64 %i.or, %i.ns
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.os
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = icmp eq ptr %i.ou, %storemerge236
  br i1 %i.ov, label %bb.bk, label %bb.bi, !prof !11

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i93
  %i.ow = add i16 %.sroa.017.047.i.i.i.i.i, -1
  %i.ox = and i16 %i.ow, %.sroa.017.047.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq i16 %i.ox, 0
  br i1 %.not.i.i.i.i.i94, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i93

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bi, %bb.bh
  %i.oy = icmp eq <16 x i8> %i.om, splat (i8 -128)
  %i.oz = bitcast <16 x i1> %i.oy to i16
  %.not44.i.i.i.i.i = icmp eq i16 %i.oz, 0
  br i1 %.not44.i.i.i.i.i, label %bb.bj, label %._crit_edge239, !prof !7

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.pa = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.pb = add i64 %i.pa, %.sroa.6.0.i.i.i.i.i
  br label %bb.bh, !llvm.loop !2606

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i.i93
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.prefetch.p0(ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !4009
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.pn.i.i = phi i64 [ %i.of, %bb.bk ], [ %i.pt, %bb.bm ]
  %.sroa.15.0.i.i = phi i64 [ 0, %bb.bk ], [ %i.ps, %bb.bm ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i.i, %i.ns        ; 5 uses
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.pc, i32 0, i32 3, i32 1), !noalias !4009
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i
  %i.pe = load <16 x i8>, ptr %i.pd, align 1, !noalias !4009 ; 2 uses
  %i.pf = icmp eq <16 x i8> %i.oj, %i.pe
  %i.pg = bitcast <16 x i1> %i.pf to i16          ; 2 uses
  %.not64.i.i = icmp eq i16 %i.pg, 0
  br i1 %.not64.i.i, label %.critedge19.i.i, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %bb.bl, %.critedge.i.i
  %.sroa.035.065.i.i = phi i16 [ %i.pp, %.critedge.i.i ], [ %i.pg, %bb.bl ] ; 3 uses
  %i.ph = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i.i, i1 true)
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = add i64 %.sroa.7.0.i.i, %i.pi
  %i.pk = and i64 %i.pj, %i.ns
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i.i, i64 %i.pk ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !noalias !4009
  %i.pn = icmp eq ptr %i.pm, %storemerge236
  br i1 %i.pn, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit, label %.critedge.i.i, !prof !11

.critedge.i.i:                                    ; preds = %.lr.ph.i.i96
  %i.po = add i16 %.sroa.035.065.i.i, -1
  %i.pp = and i16 %i.po, %.sroa.035.065.i.i       ; 2 uses
  %.not.i.i97 = icmp eq i16 %i.pp, 0
  br i1 %.not.i.i97, label %.critedge19.i.i, label %.lr.ph.i.i96

.critedge19.i.i:                                  ; preds = %.critedge.i.i, %bb.bl
  %i.pq = icmp eq <16 x i8> %i.pe, splat (i8 -128)
  %i.pr = bitcast <16 x i1> %i.pq to i16          ; 2 uses
  %.not57.i.i = icmp eq i16 %i.pr, 0
  br i1 %.not57.i.i, label %bb.bm, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread.i, !prof !7

bb.bm:                                            ; preds = %.critedge19.i.i
  %i.ps = add i64 %.sroa.15.0.i.i, 16             ; 2 uses
  %i.pt = add i64 %i.ps, %.sroa.7.0.i.i
  br label %bb.bl

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread.i: ; preds = %.critedge19.i.i
  %i.pu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pr, i1 true)
  %i.pv = zext nneg i16 %i.pu to i64
  %i.pw = add i64 %.sroa.7.0.i.i, %i.pv
  %i.px = and i64 %i.pw, %i.ns
  %i.py = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.of, i64 %i.px, i64 %.sroa.15.0.i.i) #27, !noalias !4009
  %.sroa.0.0.copyload.i.i.i2.i26.i.i = load ptr, ptr %i.av, align 8, !noalias !4009
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i.i, i64 %i.py ; 3 uses
  store ptr %storemerge236, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  store ptr null, ptr %i.qa, align 8
  br label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit

_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit: ; preds = %.lr.ph.i.i96, %bb.bf, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread.i
  %.sroa.3.07.i = phi ptr [ %i.pz, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread.i ], [ %i.at, %bb.bf ], [ %i.pl, %.lr.ph.i.i96 ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.3.07.i, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8            ; 2 uses
  %.not = icmp eq ptr %i.qc, null
  br i1 %.not, label %._crit_edge239, label %.lr.ph238, !llvm.loop !4012

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.gx, ptr %i.d, align 8
  %i.qd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.qe = load ptr, ptr %i.qd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv260 ; 3 uses
  store i8 0, ptr %i.qf, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  %i.qg = trunc nuw nsw i64 %indvars.iv260 to i32
  store i32 %i.qg, ptr %.sroa.4170.0..sroa_idx, align 4
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store ptr %i.qe, ptr %.sroa.5171.0..sroa_idx, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit, %._crit_edge239
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %i.qh = load i32, ptr %i.q, align 8
  %i.qi = sext i32 %i.qh to i64
  %i.qj = icmp slt i64 %indvars.iv.next261, %i.qi
  br i1 %i.qj, label %bb.u, label %._crit_edge242, !llvm.loop !4013

bb.bo:                                            ; preds = %bb.a
  br i1 %i.s, label %bb.bq, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %bb.bo
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17) #28
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.qk = zext nneg i32 %i.r to i64
  %i.ql = shl nuw nsw i64 %i.qk, 4                ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.qn = load i64, ptr %i.qm, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.qp = load i64, ptr %i.qo, align 8            ; 2 uses
  %i.qq = sub i64 %i.qn, %i.qp
  %i.qr = icmp ugt i64 %i.ql, %i.qq
  br i1 %i.qr, label %bb.br, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99, !prof !7

bb.br:                                            ; preds = %bb.bq
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.ql) #27
  %.pre.i.i98 = load i64, ptr %i.qo, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99: ; preds = %bb.bq, %bb.br
  %i.qs = phi i64 [ %.pre.i.i98, %bb.br ], [ %i.qp, %bb.bq ] ; 2 uses
  %i.qt = inttoptr i64 %i.qs to ptr               ; 2 uses
  %i.qu = add i64 %i.qs, %i.ql
  store i64 %i.qu, ptr %i.qo, align 8
  %i.qv = load i32, ptr %i.q, align 8
  %i.qw = icmp sgt i32 %i.qv, 0
  br i1 %i.qw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qy = load i32, ptr %i.qx, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.bs

._crit_edge:                                      ; preds = %bb.bs, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit99
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rc = load i8, ptr %i.rb, align 8, !range !5, !noundef !6
  %i.rd = trunc nuw i8 %i.rc to i1                ; 2 uses
  br i1 %i.rd, label %bb.bt, label %bb.bv

bb.bs:                                            ; preds = %.lr.ph, %bb.bs
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bs ] ; 4 uses
  %i.re = load ptr, ptr %i.qz, align 8
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv
  %i.rg = load ptr, ptr %i.rf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.rg, ptr %i.c, align 8
  %i.rh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ra, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ri = load ptr, ptr %i.rh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.rj = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %indvars.iv ; 3 uses
  store i8 0, ptr %i.rj, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.rk = trunc i64 %indvars.iv to i32
  %i.rl = add i32 %i.qy, %i.rk
  store i32 %i.rl, ptr %.sroa.4166.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store ptr %i.ri, ptr %.sroa.5.0..sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rm = load i32, ptr %i.q, align 8
  %i.rn = sext i32 %i.rm to i64
  %i.ro = icmp slt i64 %indvars.iv.next, %i.rn
  br i1 %i.ro, label %bb.bs, label %._crit_edge, !llvm.loop !4014

bb.bt:                                            ; preds = %._crit_edge
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 2 uses
  %i.rs = load ptr, ptr %2, align 8
  %i.rt = icmp eq ptr %i.rr, %i.rs
  br i1 %i.rt, label %_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ru = load ptr, ptr %i.rr, align 8
  br label %_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit

_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit: ; preds = %bb.bt, %bb.bu
  %.0.i100 = phi ptr [ %i.ru, %bb.bu ], [ null, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.0.i100, ptr %i.b, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.rw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev10BasicBlockESt4pairIKS6_PNS2_8compiler10turboshaft5BlockEENS2_13ZoneAllocatorISD_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.rv, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.rx = load ptr, ptr %i.rw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bx

bb.bv:                                            ; preds = %._crit_edge
  %i.ry = load ptr, ptr %i.m, align 8, !nonnull !6, !align !209 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 88 ; 3 uses
  %i.sa = load i64, ptr %i.rz, align 8            ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 80
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = icmp eq i64 %i.sa, %i.sc
  br i1 %i.sd, label %bb.bw, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102, !prof !7

bb.bw:                                            ; preds = %bb.bv
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.ry)
  %.pre.i101 = load i64, ptr %i.rz, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102: ; preds = %bb.bv, %bb.bw
  %i.se = phi i64 [ %i.sa, %bb.bv ], [ %.pre.i101, %bb.bw ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 72
  %i.sg = add i64 %i.se, 1
  store i64 %i.sg, ptr %i.rz, align 8
  %i.sh = load ptr, ptr %i.sf, align 8
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.se
  %i.sj = load ptr, ptr %i.si, align 8            ; 8 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.sj, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.sk, align 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 48
  store i32 -1, ptr %i.sl, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 52
  store i32 -1, ptr %i.sm, align 4
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 88
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 96
  store i32 0, ptr %i.sp, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.sn, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.so, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102, %_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit
  %.067 = phi ptr [ %i.rx, %_ZNK2v88internal6maglev15ProcessingState10next_blockEv.exit ], [ %i.sj, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit102 ] ; 20 uses
  %i.sq = getelementptr inbounds i8, ptr %1, i64 -8
  %i.sr = load ptr, ptr %i.sq, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.sr, ptr %i.a, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109.thread, label %bb.by, !prof !2817

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109.thread: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit112

bb.by:                                            ; preds = %bb.bx
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.sw = load ptr, ptr %i.sv, align 8
  %i.sx = icmp eq ptr %i.sr, %i.sw
  br i1 %i.sx, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109.thread324, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109, !prof !7

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109.thread324: ; preds = %bb.by
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i107 = load ptr, ptr %i.sy, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i107, i64 16
  %.sroa.02.0.copyload.i.i.i108 = load i32, ptr %i.sz, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bz

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109: ; preds = %bb.by
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.tb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ta, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.sroa.01.0.copyload.i.i105 = load i32, ptr %i.tb, align 4
  %.pre = load ptr, ptr %i.ss, align 8
  %i.tc = icmp eq ptr %.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.tc, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit112, label %bb.bz, !prof !2423

bb.bz:                                            ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109.thread324, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109
  %.sroa.01.0.i.i106326 = phi i32 [ %.sroa.02.0.copyload.i.i.i108, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109.thread324 ], [ %.sroa.01.0.copyload.i.i105, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit109 ]
  %i.td = load i32, ptr %i.q, align 8
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.tg = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceSwitchENS2_1VINS2_12WordWithBitsILm32EEEEENSB_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(666) %i.tf, i32 %.sroa.01.0.i.i106326, ptr %i.qt, i64 %i.te, ptr noundef %.067, i8 noundef zeroext 0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit112
end_hunk_3
