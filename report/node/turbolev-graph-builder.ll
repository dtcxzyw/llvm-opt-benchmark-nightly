inline.NumInlined: 65941
inline.NumDeleted: 17507
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE:bb.a
  %i.br = add i64 %i.bq, %.sroa.7.0.i
  br label %bb.h

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %bb.f, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51
  %i.bs = phi ptr [ %i.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51 ], [ %i.p, %bb.d ], [ %.pre, %bb.f ]
  %.sroa.3.047 = phi ptr [ %i.bp, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread51 ], [ %i.v, %bb.d ], [ %i.ac, %bb.f ] ; 3 uses
  store ptr %i.bs, ptr %.sroa.3.047, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE:bb.a
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread
  %i.bu = phi ptr [ %.pre101, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.p, %bb.e ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %.sroa.3.048 = phi ptr [ %.sroa.3.047, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.w, %bb.e ], [ %i.bd, %.lr.ph.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.3.048, i64 8
  store ptr %i.e, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %1, align 8               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE:bb.a
  br i1 %or.cond, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56, label %.thread58

bb.l:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.cl = load i64, ptr %i.ca, align 8
  %sext.i.i.i = shl i64 %i.cl, 48
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE:bb.a
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = icmp eq ptr %i.dj, %i.cf
  br i1 %i.dk, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50, label %bb.n, !prof !11

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread50: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread56

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dl = add i16 %.sroa.017.047.i.i.i.i, -1
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE:bb.a
  %i.eq = add i64 %i.ep, %.sroa.7.0.i25
  br label %bb.t

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread: ; preds = %bb.r, %bb.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread64
  %.sroa.343.060 = phi ptr [ %i.eo, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i7.thread64 ], [ %i.bz, %bb.p ], [ %i.ds, %bb.r ] ; 3 uses
  %i.er = load ptr, ptr %i.b, align 8, !noalias !2633
  store ptr %i.er, ptr %.sroa.343.060, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer12FindLoopBodyESt16reverse_iteratorIPKPNS0_6maglev10BasicBlockEE:bb.a
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
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8 ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE:bb.a
  br label %bb.d, !llvm.loop !2618

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  tail call void @llvm.prefetch.p0(ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !2636
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE:bb.a
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEEixIS8_S9_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISH_EPT_RSN_EclL_ZSt7declvalIRSH_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit: ; preds = %.lr.ph.i, %bb.b, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread
  %.sroa.3.07 = phi ptr [ %i.bn, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread ], [ %i.e, %bb.b ], [ %i.az, %.lr.ph.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.3.07, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE8containsIS8_EEbRKT_.exit.thread
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.o = load i64, ptr %i.n, align 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, %i.g
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34, label %bb.f, !prof !11

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i) ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb:bb.a
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34.a: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread34, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_:bb.a
  store ptr %2, ptr %i.i, align 8, !noalias !2789
  %i.j = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #27, !noalias !2789 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !2789
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2789, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.l, align 8, !noalias !2789
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.j
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
end_hunk_12
begin_hunk_13_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_:bb.a
  %i.av = add i64 %.sroa.7.0.i, %i.au
  %i.aw = and i64 %i.av, %i.a
  %i.ax = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.aw, i64 %.sroa.15.0.i) #27, !noalias !2794 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !2794, !nonnull !6, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.ax
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !2794
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ax
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE28find_or_prepare_insert_smallIS7_EESH_INSL_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.ba = add i64 %.sroa.15.0.i, 16               ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_6maglev19ValueRepresentationEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_:bb.a
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
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev6SwitchERKNS4_15ProcessingStateE:bb.a
  br i1 %or.cond.i, label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit, label %._crit_edge239

bb.bg:                                            ; preds = %_ZNSt6vectorIN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18GeneratorSplitEdgeESaIS5_EE9push_backEOS5_.exit92
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8 ; 5 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.nx = load i64, ptr %i.au, align 8
  %sext.i.i.i.i = shl i64 %i.nx, 48
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev6SwitchERKNS4_15ProcessingStateE:bb.a
  br label %bb.bh, !llvm.loop !2618

bb.bk:                                            ; preds = %.lr.ph.i.i.i.i.i93
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.prefetch.p0(ptr nonnull %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !4035
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %bb.bk
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev6SwitchERKNS4_15ProcessingStateE:bb.a
  br label %_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit

_ZN2v88internal8compiler10turboshaft17GeneratorAnalyzer13GetLoopHeaderEPKNS0_6maglev10BasicBlockE.exit: ; preds = %.lr.ph.i.i96, %bb.bf, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread.i
  %.sroa.3.07.i = phi ptr [ %i.pz, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal6maglev10BasicBlockES8_EENS0_6HashEqIS8_vE4HashENSB_2EqENS4_13ZoneAllocatorISt4pairIKS8_S8_EEEE22find_or_prepare_insertIS8_EESF_INSJ_8iteratorEbERKT_.exit.i.i.i.thread.i ], [ %i.at, %bb.bf ], [ %i.pl, %.lr.ph.i.i96 ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.3.07.i, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8            ; 2 uses
  %.not = icmp eq ptr %i.qc, null
end_hunk_17
