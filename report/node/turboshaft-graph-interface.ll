inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(504) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  store i64 %i.l, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.n, %i.p
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.q = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.n, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.s, ptr %i.t, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.u = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.012.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.012.i, align 8          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 -1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.p
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.ae = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -32
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.an, 16
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 16, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ak, align 8
  store ptr %i.ap, ptr %i.ai, align 8
  store ptr %i.ai, ptr %i.ak, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ah, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 480
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i: ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i, %bb.d
  %storemerge.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.aw, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE15_M_pop_back_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit: ; preds = %._crit_edge.i, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ae, %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE8pop_backEv.exit.i ], [ %i.u, %._crit_edge.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 4
  %i.ba = zext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4
  %.not.i1 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i1, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bk = lshr i64 %i.ba, 1
  %i.bl = add nuw nsw i64 %i.ba, 32
  %i.bm = add nuw nsw i64 %i.bl, %i.bk
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bt)
  %.pre.i2 = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit, %bb.h
  %i.bu = phi ptr [ %.pre.i2, %bb.h ], [ %i.be, %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE4SealEv.exit ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ba ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !10, !noundef !11
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = ptrtoint ptr %.sroa.0.0.i to i64
  br i1 %i.by, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  store i8 1, ptr %i.bw, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit

_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, %bb.i
  store i64 %i.bz, ptr %i.bv, align 8
  store ptr null, ptr %i.ax, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS8_ESD_IS8_NSt5decayISG_E4typeEEEEESt16is_constructibleIS8_JSG_EESt13is_assignableIRS8_SG_EEERS9_E4typeEOSG_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8, !noalias !68  ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !75
  %.not.i.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !75 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !75
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4, !noalias !75
  %i.g = icmp eq i32 %i.f, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !75
  store ptr %0, ptr %2, align 8, !noalias !75
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.h, align 8, !noalias !75
  %i.i = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft10BlockIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #22, !noalias !75
  %i.j = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !75
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !78 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !78
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !78
  %sext.i = shl i64 %i.m, 48
  %i.n = ashr exact i64 %sext.i, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 4, !noalias !78 ; 2 uses
  %i.o = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.p = xor i64 %i.n, %i.o
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64                   ; 3 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.x, align 8, !noalias !78 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i
  %.pn.i = phi i64 [ %i.u, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i ], [ %i.ar, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i.i ], [ %i.aq, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1), !noalias !78
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !noalias !78 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ae, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.an, %.critedge.i ], [ %i.ae, %bb.d ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.7.0.i, %i.ag
  %i.ai = and i64 %i.ah, %i.a
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !78
  %i.al = icmp eq i32 %i.ak, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.al, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit, label %.critedge.i, !prof !8

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.am = add i16 %.sroa.035.065.i, -1
  %i.an = and i16 %i.am, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.an, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ao = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.ap, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i, !prof !9

bb.e:                                             ; preds = %.critedge19.i
  %i.aq = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i: ; preds = %.critedge19.i
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.7.0.i, %i.at
  %i.av = and i64 %i.au, %i.a
  %i.aw = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.u, i64 %i.av, i64 %.sroa.15.0.i) #22, !noalias !78 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.k, align 8, !noalias !78
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.aw
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.x, align 8, !noalias !78
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i
  %.sroa.6.0 = phi ptr [ %i.j, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.thread.i.i ], [ %i.ax, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_.exit.i._crit_edge.i ] ; 3 uses
  %i.ay = load i32, ptr %1, align 4, !noalias !81
  store i32 %i.ay, ptr %.sroa.6.0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 40
  store i8 0, ptr %i.az, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_.exit: ; preds = %.lr.ph.i, %bb.c, %bb.f
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.c ], [ %i.aj, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 8
  ret ptr %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void

.lr.ph:                                           ; preds = %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit, %.lr.ph
  %.01012 = phi ptr [ %i.o, %.lr.ph ], [ %i.l, %_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE14EnsureCapacityEm.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.j
  br i1 %i.p, label %.lr.ph, label %.preheader, !llvm.loop !82
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 3
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE8SnapshotEEA_SB_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #22
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEA_S9_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #15 comdat {
bb.a:
  tail call void @abort() #21
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES8_SB_EEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSD_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSN_13VariableTableES4_S5_E16StartNewSnapshotISV_EEvNSS_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSS_IKT0_EEEEUlSR_RST_S1C_E_EEvS12_S15_RS1A_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b, !prof !8

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6NullOpEJNS0_4wasm9ValueTypeEEEENS2_7OpIndexEDpT0_:bb.a

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi9 = phi i64 [ %i.i, %bb.a ], [ %.pre8, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi9 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi9, 4
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
  store i8 14, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.al = lshr i64 %i.i, 4
  %i.am = and i64 %i.al, 268435455                ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not.i.i = icmp ugt i64 %i.au, %i.am
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 200 ; 2 uses
  %i.aw = lshr i64 %i.am, 1
  %i.ax = add nuw nsw i64 %i.am, 32
  %i.ay = add nuw nsw i64 %i.ax, %i.aw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ap, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bf)
  %.pre.i.i = load ptr, ptr %i.ap, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bg = phi ptr [ %.pre.i.i, %bb.c ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_6NullOpEE3NewIJNS0_4wasm9ValueTypeEEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bh = trunc i64 %i.i to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.am
  store i32 %.sroa.0.0.copyload.i, ptr %i.bi, align 4
  ret i32 %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_17Simd128ConstantOpEJPKhEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre6 = ptrtoint ptr %.pre to i64
  %.pre7 = sub i64 %.pre10.i.i.i.i, %.pre6
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi8 = phi i64 [ %i.i, %bb.a ], [ %.pre7, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi8 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi8, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 3, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 24
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 3, ptr %i.af, align 2
  store i8 35, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.al = lshr i64 %i.i, 4
  %i.am = and i64 %i.al, 268435455                ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %.not.i.i = icmp ugt i64 %i.au, %i.am
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 200 ; 2 uses
  %i.aw = lshr i64 %i.am, 1
  %i.ax = add nuw nsw i64 %i.am, 32
  %i.ay = add nuw nsw i64 %i.ax, %i.aw
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ap, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bf)
  %.pre.i.i = load ptr, ptr %i.ap, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bg = phi ptr [ %.pre.i.i, %bb.c ], [ %i.aq, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17Simd128ConstantOpEE3NewIJPKhEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bh = trunc i64 %i.i to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.am
  store i32 %.sroa.0.0.copyload.i, ptr %i.bi, align 4
  ret i32 %i.bh
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  %4 = alloca [2 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 5 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i1 noundef zeroext %2), !inline_history !120
  tail call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESE_b(ptr noundef nonnull align 8 dereferenceable(696) %i.a, ptr noundef %i.c, ptr noundef %1, i1 noundef zeroext false), !inline_history !120
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.not34 = icmp eq i32 %i.g, -1
  br i1 %.not34, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load i64, ptr %i.k, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.l, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
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
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 488
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
  br i1 %i.an, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a, label %bb.f, !prof !8

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not44.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not44.i.i.i.i, label %bb.g, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, !prof !9

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !121

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit: ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8
  %i.av = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4
  %i.aw = icmp eq i32 %i.av, %i.g
  br i1 %i.aw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a: ; preds = %.lr.ph.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 %i.g, ptr %3, align 4
  %i.ax = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEEixIS7_SI_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISQ_EPT_RSW_EclL_ZSt7declvalIRSQ_EDTcl9__declvalISW_ELi0EEEvEEEEEOS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i8, ptr %i.ay, align 8, !range !10, !noundef !11
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a
  call void @_ZSt27__throw_bad_optional_accessv() #25
  unreachable

_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread32.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.bc, %i.be
  br i1 %.not37, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.038 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bq, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload24 = load ptr, ptr %.038, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = zext i32 %.sroa.4.0.copyload to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %4, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload24, i64 16
  %.sroa.02.0.copyload.i = load i32, ptr %i.bo, align 4
  store i32 %.sroa.02.0.copyload.i, ptr %i.bf, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.sroa.0.0.copyload = load i8, ptr %i.bp, align 4
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_5PhiOpEJNS_4base6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationEEEEvS8_DpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.bg, i32 %.sroa.4.0.copyload, ptr nonnull %4, i64 2, i8 %.sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %.038, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.be
  br i1 %.not, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread, label %bb.i

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.i, %_ZNRSt8optionalIN2v88internal10ZoneVectorISt4pairINS1_8compiler10turboshaft16SnapshotTableKeyINS5_7OpIndexENS5_12VariableDataEEES7_EEEE5valueEv.exit, %bb.c, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE8containsIS7_EEbRSP_.exit, %bb.a
  ret i32 %i.d
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
  br i1 %spec.select.i.i.prol, label %bb.b, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.prol, !prof !8

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
  br i1 %spec.select.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i, !prof !8

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
  br i1 %spec.select.i.i.1, label %bb.d, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.1, !prof !8

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
  br i1 %i.bj, label %bb.e, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !9

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
begin_hunk_2_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16NewBlockWithPhisEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE:bb.a
  %i.ag = add nuw nsw i64 %i.af, 4
  %i.ah = and i64 %i.ag, 34359738360              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = sub i64 %i.aj, %i.al
  %i.an = icmp ugt i64 %i.ah, %i.am
  br i1 %i.an, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 noundef %i.ah) #22
  %.pre.i.i = load i64, ptr %i.ak, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit: ; preds = %bb.d, %bb.e
  %i.ao = phi i64 [ %.pre.i.i, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 7 uses
  %i.aq = add i64 %i.ao, %i.ah
  store i64 %i.aq, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.as = load ptr, ptr %i.ar, align 8            ; 5 uses
  %i.at = load i32, ptr %i.z, align 8             ; 2 uses
  %i.au = zext i32 %i.at to i64
  %.idx = shl nuw nsw i64 %i.au, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx
  %.not9.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit
  %i.aw = ptrtoaddr ptr %i.as to i64
  %i.ax = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  %i.ba = sub i64 %i.ao, %i.aw
  %diff.check = icmp ult i64 %i.ba, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ap, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.as, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.be ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep42, align 4
  %wide.load43 = load <4 x i32>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load43, ptr %i.bg, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.preheader47

.lr.ph.i.i.i.preheader47:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader47, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader47 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader47 ] ; 2 uses
  %i.bi = load i32, ptr %.0810.i.i.i, align 4
  store i32 %i.bi, ptr %.011.i.i.i, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bj, %i.av
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i, !llvm.loop !288

_ZSt18uninitialized_copyIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt18uninitialized_copyIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %wide.trip.count = zext i32 %i.ac to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp eq i32 %i.ac, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.bn = trunc nuw i64 %indvars.iv to i32
  %i.bo = add i32 %i.aa, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bp
  %i.br = load i32, ptr %2, align 8
  %i.bs = icmp eq i32 %i.br, 1
  %i.bt = load ptr, ptr %i.bl, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = select i1 %i.bs, ptr %i.bl, ptr %i.bu
  %i.bw = load i32, ptr %i.bv, align 4
  store i32 %i.bw, ptr %i.bq, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next to i32
  %i.by = add i32 %i.aa, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bz
  %i.cb = load i32, ptr %2, align 8
  %i.cc = icmp eq i32 %i.cb, 1
  %i.cd = load ptr, ptr %i.bl, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next
  %i.cf = select i1 %i.cc, ptr %i.bl, ptr %i.ce
  %i.cg = load i32, ptr %i.cf, align 4
  store i32 %i.cg, ptr %i.ca, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !289

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.ch = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ci = add i32 %i.aa, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cj
  %i.cl = load i32, ptr %2, align 8
  %i.cm = icmp eq i32 %i.cl, 1
  %i.cn = load ptr, ptr %i.bl, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.epil.init
  %i.cp = select i1 %i.cm, ptr %i.bl, ptr %i.co
  %i.cq = load i32, ptr %i.cp, align 4
  store i32 %i.cq, ptr %i.ck, align 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit: ; preds = %.epil.preheader, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit.loopexit.unr-lcssa, %_ZSt18uninitialized_copyIPN2v88internal4wasm9ValueTypeES4_ET0_T_S6_S5_.exit
  %i.cr = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.cs = shl i32 %i.ad, 1                        ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ugt i64 %i.cu, %i.cz
  br i1 %i.da, label %bb.g, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis17AllocatePhiInputsEPNS0_4ZoneE.exit, !prof !9

bb.g:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, i64 noundef %i.cu) #22
  %.pre.i.i.i = load i64, ptr %i.cx, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis17AllocatePhiInputsEPNS0_4ZoneE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis17AllocatePhiInputsEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit, %bb.g
  %i.db = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.cy, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhisC2EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE.exit ] ; 2 uses
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = add i64 %i.db, %i.cu
  store i64 %i.dd, ptr %i.cx, align 8
  %i.de = load i64, ptr %i.w, align 8, !noalias !290 ; 4 uses
  %i.df = icmp ult i64 %i.de, 2
  br i1 %i.df, label %bb.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis17AllocatePhiInputsEPNS0_4ZoneE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !305
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dh, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !noalias !305
  %i.dj = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !305
  %i.dk = icmp eq ptr %i.dj, %i.p
  br i1 %i.dk, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE7emplaceIJRS8_SB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !305
  store ptr %i.w, ptr %3, align 8, !noalias !305
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.dl, align 8, !noalias !305
  %i.dm = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal8compiler10turboshaft5BlockEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #22, !noalias !305
  %i.dn = extractvalue { ptr, ptr } %i.dm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !305
  %.pre = load ptr, ptr %i.a, align 8, !noalias !308
  br label %bb.l

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis17AllocatePhiInputsEPNS0_4ZoneE.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.do, align 8, !noalias !309 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !309
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !309
  %sext.i = shl i64 %i.dq, 48
  %i.dr = ashr exact i64 %sext.i, 48
  %i.ds = ptrtoint ptr %i.p to i64
  %i.dt = xor i64 %i.ds, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.du = zext i64 %i.dt to i128
  %i.dv = mul nuw nsw i128 %i.du, 8779197792823184629 ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = xor i128 %i.dw, %i.dv
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = xor i64 %i.dr, %i.dy                    ; 3 uses
  %i.ea = lshr i64 %i.dz, 57
  %i.eb = trunc nuw nsw i64 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ec, align 8, !noalias !309 ; 2 uses
  %i.ed = insertelement <16 x i8> poison, i8 %i.eb, i64 0
  %i.ee = shufflevector <16 x i8> %i.ed, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.pn.i = phi i64 [ %i.dz, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i ], [ %i.ew, %bb.k ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i.i.i.i.i.i ], [ %i.ev, %bb.k ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.de            ; 5 uses
  %i.ef = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ef, i32 0, i32 3, i32 1), !noalias !309
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.eh = load <16 x i8>, ptr %i.eg, align 1, !noalias !309 ; 2 uses
  %i.ei = icmp eq <16 x i8> %i.ee, %i.eh
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ej, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.es, %.critedge.i ], [ %i.ej, %bb.j ] ; 3 uses
  %i.ek = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.7.0.i, %i.el
  %i.en = and i64 %i.em, %i.de
  %i.eo = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !309
  %i.eq = icmp eq ptr %i.ep, %i.p
  br i1 %i.eq, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE7emplaceIJRS8_SB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_.exit, label %.critedge.i, !prof !8

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.er = add i16 %.sroa.035.065.i, -1
  %i.es = and i16 %i.er, %.sroa.035.065.i         ; 2 uses
  %.not.i3 = icmp eq i16 %i.es, 0
  br i1 %.not.i3, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.j
  %i.et = icmp eq <16 x i8> %i.eh, splat (i8 -128)
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.eu, 0
  br i1 %.not57.i, label %bb.k, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i._crit_edge.i.i.i.i.i, !prof !9

bb.k:                                             ; preds = %.critedge19.i
  %i.ev = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ew = add i64 %i.ev, %.sroa.7.0.i
  br label %bb.j

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i._crit_edge.i.i.i.i.i: ; preds = %.critedge19.i
  %i.ex = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eu, i1 true)
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = add i64 %.sroa.7.0.i, %i.ey
  %i.fa = and i64 %i.ez, %i.de
  %i.fb = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dz, i64 %i.fa, i64 %.sroa.15.0.i) #22, !noalias !309 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.do, align 8, !noalias !309
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.fb
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ec, align 8, !noalias !309
  %i.fc = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.fb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i._crit_edge.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i
  %i.fd = phi ptr [ %i.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i._crit_edge.i.i.i.i.i ], [ %.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i ]
  %.sroa.2.0.copyload.i.i.i.i.i.i = phi ptr [ %i.fc, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.i._crit_edge.i.i.i.i.i ], [ %i.dn, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE22find_or_prepare_insertIS8_EESI_INSM_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i ] ; 11 uses
  store ptr %i.fd, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store ptr %i.ap, ptr %i.fe, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  store ptr %i.dc, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 24
  store i32 %i.cs, ptr %.sroa.96.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 28
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 32
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 36
  store i32 %i.ad, ptr %.sroa.137.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 40
  store i32 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 44
  store i32 2, ptr %.sroa.18.0..sroa_idx, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 56
  store ptr %i.y, ptr %i.ff, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  %.pre26 = load ptr, ptr %i.a, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE7emplaceIJRS8_SB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE7emplaceIJRS8_SB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_.exit: ; preds = %.lr.ph.i, %bb.i, %bb.l
  %i.fh = phi ptr [ %.pre26, %bb.l ], [ %i.p, %bb.i ], [ %i.p, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %i.fh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS0_6HashEqIPN2v88internal8compiler10turboshaft5BlockEvE4HashES8_Lb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = xor i64 %2, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE19transfer_n_slots_fnEPvSN_SN_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.p, %.lr.ph ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.r, %.lr.ph ], [ %1, %bb.a ] ; 7 uses
  %.01012 = phi ptr [ %i.q, %.lr.ph ], [ %2, %bb.a ] ; 7 uses
  %i.a = load ptr, ptr %.01012, align 8
  store ptr %i.a, ptr %.0913, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.0913, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %.0913, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.0913, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr %i.e, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.01012, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.p = add i64 %.014, -1                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %.0913, i64 80
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !312

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSS_PFvSS_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !313

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bq, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.t ; 7 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = xor i64 %i.w, %i.ae                     ; 6 uses
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = sub i64 %i.t, %i.af                     ; 2 uses
  %i.aj = and i64 %i.h, %i.ai
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %.lr.ph
  %i.al = and i64 %i.ai, 15
  %i.am = add i64 %i.al, %i.af
  %i.an = and i64 %i.am, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.af, %i.b
  %.not.i = icmp ult i64 %i.ao, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.ap = and i64 %i.af, %i.a                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1
  %i.as = icmp slt <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.at, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add i64 %i.ap, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ah, i64 noundef %i.t, i64 noundef %i.af) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.aw, %bb.g ], [ %i.an, %bb.d ] ; 3 uses
  %i.ax = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ah, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface2IfEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueEPNS2_7ControlE:bb.a
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.r, align 4
  %i.bo = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ult ptr %i.bo, %i.bq
  br i1 %i.br, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.av, align 8
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %i.bx = add nsw i64 %i.bw, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.bx)
  %.pre.i17 = load ptr, ptr %i.at, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.h, %bb.i
  %i.by = phi ptr [ %i.bo, %bb.h ], [ %.pre.i17, %bb.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.at, align 8
  store ptr %i.o, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.s, align 8             ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.j, label %.preheader.i, !prof !9

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.o, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %bb.n

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.ca, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = sub nsw i32 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = sub nsw i32 %i.cj, %i.cm
  %i.co = icmp eq i32 %i.ck, %i.cn
  br i1 %i.co, label %bb.k, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.k, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.cq, %bb.k ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.07.lcssa.i, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.0.i.i, ptr %i.cs, align 8
  %i.ct = load i32, ptr %i.cg, align 4
  %i.cu = add nsw i32 %i.ct, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  store ptr %i.da, ptr %i.o, align 8
  store ptr %i.o, ptr %i.cz, align 8
  %.pre.i20 = load i32, ptr %i.cv, align 4
  br label %bb.n

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i18, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.ca, %.preheader.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp sgt i32 %i.dc, %i.de               ; 2 uses
  %spec.select.i.i = select i1 %i.df, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.df, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.dh = load i32, ptr %i.dg, align 4            ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.dj = load i32, ptr %i.di, align 4
  %.not18.i.i = icmp eq i32 %i.dj, %i.dh
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.dl = load i32, ptr %i.dk, align 8
  %.not6.i.i = icmp slt i32 %i.dl, %i.dh
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.dn = load i32, ptr %i.dm, align 4
  %.not.i.i = icmp eq i32 %i.dn, %i.dh
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !37

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.m
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.m ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.m ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = icmp eq ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph23.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.dv, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.l ], [ %i.dr, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.du, %bb.l ], [ %i.dp, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !38

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.m, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.m ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i18 = load ptr, ptr %.0.in.i, align 8       ; 2 uses
  %.not.i19 = icmp eq ptr %.0.i18, null
  br i1 %.not.i19, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !39

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.j
  %i.dw = phi i32 [ %.pre.i20, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.j ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ar, i64 232 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.dy, i32 %i.dw)
  store i32 %.sroa.speculated, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ai, i64 672
  store ptr %i.o, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(504) %i.ea, ptr noundef nonnull %i.o)
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.g, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface20SetupControlFlowEdgeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEjNSA_1VINS0_6ObjectEEEPNS1_5MergeINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 %4, ptr noundef %5) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %.not.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 2 uses
  %i.l = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.m = icmp eq ptr %i.l, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.m, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %i.r = ptrtoint ptr %2 to i64
  %i.s = xor i64 %i.r, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64
  %i.y = xor i64 %i.q, %i.x                       ; 2 uses
  %i.z = lshr i64 %i.y, 57
  %i.aa = trunc nuw nsw i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i7.i = phi i64 [ %i.y, %bb.e ], [ %i.aw, %bb.h ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.e ], [ %i.av, %bb.h ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.g        ; 4 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ag = load <16 x i8>, ptr %i.af, align 1      ; 2 uses
  %i.ah = icmp eq <16 x i8> %i.ad, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.017.047.i.i = phi i16 [ %i.as, %bb.g ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.6.0.i.i, %i.ak
  %i.am = and i64 %i.al, %i.g                     ; 2 uses
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %2
  br i1 %i.ap, label %.thread33.i.i, label %bb.g, !prof !8

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.am ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i16 %.sroa.017.047.i.i, -1
  %i.as = and i16 %i.ar, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.at = icmp eq <16 x i8> %i.ag, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not44.i.i = icmp eq i16 %i.au, 0
  br i1 %.not44.i.i, label %bb.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i, !prof !9

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.av = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aw = add i64 %i.av, %.sroa.6.0.i.i
  br label %bb.f, !llvm.loop !329

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.aq, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.an, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit: ; preds = %bb.c, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.c ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 0     ; 3 uses
  %i.ay = extractvalue { ptr, ptr } %.pn.i, 1     ; 18 uses
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  %i.ba = icmp eq ptr %i.ax, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.ax, align 1
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = sub i32 %i.bf, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 28 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %.pre = load i32, ptr %i.bn, align 4
  %.pre47 = load i32, ptr %i.bo, align 8
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit
  %i.bt = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bt, label %._crit_edge41, label %bb.r

bb.n:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit
  %i.bu = phi i32 [ %.pre47, %.lr.ph ], [ %i.ch, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ]
  %i.bv = phi i32 [ %.pre, %.lr.ph ], [ %i.cd, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ]
  %i.bw = phi ptr [ %i.bm, %.lr.ph ], [ %i.cm, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ]
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.ck, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.037
  %.sroa.05.0.copyload = load i32, ptr %i.bx, align 4
  %.not.i = icmp ult i32 %i.bv, %i.bu
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call preserve_mostcc void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis16GrowInputsVectorEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bd)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = load ptr, ptr %i.bp, align 8
  %i.bz = load i32, ptr %i.bq, align 8
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca
  store i32 %.sroa.05.0.copyload, ptr %i.cb, align 4
  %i.cc = load i32, ptr %i.bn, align 4
  %i.cd = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr %i.bn, align 4
  %i.ce = load i32, ptr %i.br, align 4
  %i.cf = load i32, ptr %i.bq, align 8
  %i.cg = add i32 %i.cf, %i.ce                    ; 2 uses
  store i32 %i.cg, ptr %i.bq, align 8
  %i.ch = load i32, ptr %i.bo, align 8            ; 2 uses
  %.not1.i = icmp ult i32 %i.cg, %i.ch
  br i1 %.not1.i, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load i32, ptr %i.bs, align 8
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 %i.cj, ptr %i.bs, align 8
  store i32 %i.cj, ptr %i.bq, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit: ; preds = %bb.p, %bb.q
  %i.ck = add nuw i64 %.037, 1                    ; 2 uses
  %i.cl = load ptr, ptr %i.bj, align 8
  %i.cm = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  %i.cr = icmp ult i64 %i.ck, %i.cq
  br i1 %i.cr, label %bb.n, label %._crit_edge, !llvm.loop !330

bb.r:                                             ; preds = %._crit_edge
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load i32, ptr %5, align 8
  %i.ct = icmp eq i32 %i.cs, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = select i1 %i.ct, ptr %i.cu, ptr %i.cv
  br label %.lr.ph40

bb.t:                                             ; preds = %bb.r
  %i.cx = add i32 %i.bi, %3
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = zext i32 %i.cx to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.db
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.s, %bb.t
  %.ph = phi ptr [ %i.dc, %bb.t ], [ %i.cw, %bb.s ]
  %i.dd = zext i32 %i.bi to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ay, i64 28 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %.pre48 = load i32, ptr %i.de, align 4
  %.pre49 = load i32, ptr %i.df, align 8
  br label %bb.u

._crit_edge41:                                    ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29, %._crit_edge
  %.not33 = icmp eq i32 %4, -1
  br i1 %.not33, label %bb.aa, label %bb.y

bb.u:                                             ; preds = %.lr.ph40, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29
  %i.dk = phi i32 [ %.pre49, %.lr.ph40 ], [ %i.dx, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ]
  %i.dl = phi i32 [ %.pre48, %.lr.ph40 ], [ %i.dt, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ]
  %.02438 = phi i64 [ 0, %.lr.ph40 ], [ %i.ea, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis14AddInputForPhiEmNS0_8compiler10turboshaft7OpIndexE.exit29 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.ph, i64 %.02438
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.dn, align 4
  %.not.i27 = icmp ult i32 %i.dl, %i.dk
  br i1 %.not.i27, label %bb.w, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  tail call preserve_mostcc void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9BlockPhis16GrowInputsVectorEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bd)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.do = load ptr, ptr %i.dg, align 8
  %i.dp = load i32, ptr %i.dh, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dq
  store i32 %.sroa.01.0.copyload, ptr %i.dr, align 4
  %i.ds = load i32, ptr %i.de, align 4
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.dt, ptr %i.de, align 4
  %i.du = load i32, ptr %i.di, align 4
  %i.dv = load i32, ptr %i.dh, align 8
  %i.dw = add i32 %i.dv, %i.du                    ; 2 uses
  store i32 %i.dw, ptr %i.dh, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface24BindBlockAndGeneratePhisEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEPNS1_5MergeINS2_5ValueEEEPNSA_7OpIndexE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.v, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = load ptr, ptr %i.o, align 8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.at)
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.au = phi ptr [ %i.ak, %bb.f ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.m, align 8
  store ptr %2, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.h, label %.preheader.i, !prof !9

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.h:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %2, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.l

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.ax, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = sub nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = sub nsw i32 %i.bg, %i.bj
  %i.bl = icmp eq i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.bn, %bb.i ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.07.lcssa.i, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.bd, align 4
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %2, align 8
  store ptr %2, ptr %i.bw, align 8
  %.pre.i44 = load i32, ptr %i.bs, align 4
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i42, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.ax, %.preheader.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp sgt i32 %i.bz, %i.cb               ; 2 uses
  %spec.select.i.i = select i1 %i.cc, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.cc, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %.not18.i.i = icmp eq i32 %i.cg, %i.ce
  br i1 %.not18.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
  %.not6.i.i = icmp slt i32 %i.ci, %i.ce
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %.not.i.i = icmp eq i32 %i.ck, %i.ce
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !37

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.k ], [ %spec.select17.i.i, %.preheader.i.i ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.k ], [ %.116.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph23.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.cs, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.j ], [ %i.co, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.cr, %bb.j ], [ %i.cm, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !38

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.k, %.preheader.i.i
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i ], [ %.3.i.i, %bb.k ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i42 = load ptr, ptr %.0.in.i, align 8       ; 2 uses
  %.not.i43 = icmp eq ptr %.0.i42, null
  br i1 %.not.i43, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !39

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.h
  %i.ct = phi i32 [ %.pre.i44, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.h ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 232 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cv, i32 %i.ct)
  store i32 %.sroa.speculated, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  store ptr %2, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(504) %i.cx, ptr noundef nonnull %2)
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.e, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8            ; 3 uses
  %i.da = icmp ult i64 %i.cz, 2
  br i1 %i.da, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = load i64, ptr %i.db, align 8
  %.not.i.i.i = icmp ult i64 %i.dc, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.dd, align 8 ; 2 uses
  %i.de = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.df = icmp eq ptr %i.de, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i47 = select i1 %i.df, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.dg, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = load i64, ptr %i.dh, align 8
  %sext.i = shl i64 %i.di, 48
  %i.dj = ashr exact i64 %sext.i, 48
  %i.dk = ptrtoint ptr %2 to i64
  %i.dl = xor i64 %i.dk, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.dm = zext i64 %i.dl to i128
  %i.dn = mul nuw nsw i128 %i.dm, 8779197792823184629 ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = xor i128 %i.do, %i.dn
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = xor i64 %i.dj, %i.dq                    ; 2 uses
  %i.ds = lshr i64 %i.dr, 57
  %i.dt = trunc nuw nsw i64 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.du, align 8 ; 2 uses
  %i.dv = insertelement <16 x i8> poison, i8 %i.dt, i64 0
  %i.dw = shufflevector <16 x i8> %i.dv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.pn.i7.i = phi i64 [ %i.dr, %bb.o ], [ %i.ep, %bb.r ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.o ], [ %i.eo, %bb.r ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.cz       ; 4 uses
  %i.dx = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.dx, i32 0, i32 3, i32 1)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.dz = load <16 x i8>, ptr %i.dy, align 1      ; 2 uses
  %i.ea = icmp eq <16 x i8> %i.dw, %i.dz
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.eb, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %bb.p, %bb.q
  %.sroa.017.047.i.i = phi i16 [ %i.el, %bb.q ], [ %i.eb, %bb.p ] ; 3 uses
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.6.0.i.i, %i.ed
  %i.ef = and i64 %i.ee, %i.cz                    ; 2 uses
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ef ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = icmp eq ptr %i.eh, %2
  br i1 %i.ei, label %.thread33.i.i, label %bb.q, !prof !8

.thread33.i.i:                                    ; preds = %.lr.ph.i.i45
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ef ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i45
  %i.ek = add i16 %.sroa.017.047.i.i, -1
  %i.el = and i16 %i.ek, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i46 = icmp eq i16 %i.el, 0
  br i1 %.not.i.i46, label %._crit_edge.i.i, label %.lr.ph.i.i45

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.p
  %i.em = icmp eq <16 x i8> %i.dz, splat (i8 -128)
  %i.en = bitcast <16 x i1> %i.em to i16
  %.not44.i.i = icmp eq i16 %i.en, 0
  br i1 %.not44.i.i, label %bb.r, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i, !prof !9

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.eo = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.6.0.i.i
  br label %bb.p, !llvm.loop !329

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ej, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.eg, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit: ; preds = %bb.m, %bb.n, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE10find_largeIS8_EENSM_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.m ], [ %spec.select.i.i47, %bb.n ] ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.er = extractvalue { ptr, ptr } %.pn.i, 1     ; 10 uses
  %i.es = icmp eq ptr %i.eq, null
  br i1 %i.es, label %bb.s, label %bb.t, !prof !9

bb.s:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE4findIS8_EENSM_8iteratorERKT_.exit
  %i.et = icmp eq ptr %i.eq, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.et, label %bb.u, label %bb.v, !prof !9

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eu = load i8, ptr %i.eq, align 1
  %i.ev = icmp sgt i8 %i.eu, -1
  br i1 %i.ev, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.101) #22
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit: ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit
  %i.ex = load i32, ptr %3, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit, %bb.x
  %i.ey = phi i32 [ %i.ex, %bb.x ], [ 0, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE8iteratorptEv.exit ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 8
  %.not76 = icmp eq i32 %i.fa, 0
  br i1 %.not76, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.z

.preheader:                                       ; preds = %bb.z, %bb.y
  %.not77 = icmp eq i32 %i.ey, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.ey to i64
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 4 uses
  %i.fj = load i32, ptr %i.fb, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul nuw i64 %indvars.iv, %i.fk
  %i.fm = load ptr, ptr %i.fc, align 8
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load i32, ptr %i.fd, align 8
  %i.fp = zext i32 %i.fo to i64
  %i.fq = load ptr, ptr %i.ew, align 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.fr, align 4
  %i.fs = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %i.fn, i64 %i.fp, i32 %.sroa.0.0.copyload.i)
  %i.ft = load ptr, ptr %i.fe, align 8
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv
  store i32 %i.fs, ptr %i.fu, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fv = load i32, ptr %i.ez, align 8
  %i.fw = zext i32 %i.fv to i64
  %i.fx = icmp samesign ult i64 %indvars.iv.next, %i.fw
  br i1 %i.fx, label %bb.z, label %.preheader, !llvm.loop !338

._crit_edge:                                      ; preds = %bb.aa, %.preheader
  %.not41 = icmp eq ptr %4, null
  br i1 %.not41, label %bb.ag, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph75, %bb.aa
  %indvars.iv82 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next83, %bb.aa ] ; 3 uses
  %i.fy = load i32, ptr %i.ez, align 8
  %i.fz = trunc nuw i64 %indvars.iv82 to i32
  %i.ga = add i32 %i.fy, %i.fz
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = load i32, ptr %i.ff, align 4
  %i.gd = zext i32 %i.gc to i64
  %i.ge = mul nuw i64 %i.gb, %i.gd
  %i.gf = load ptr, ptr %i.fg, align 8
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load i32, ptr %i.fh, align 8
  %i.gi = zext i32 %i.gh to i64
  %i.gj = load ptr, ptr %i.ew, align 8
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gb
  %.sroa.0.0.copyload.i52 = load i32, ptr %i.gk, align 4
  %i.gl = tail call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %i.gg, i64 %i.gi, i32 %.sroa.0.0.copyload.i52)
  %i.gm = load i32, ptr %3, align 8
  %i.gn = icmp eq i32 %i.gm, 1
  %i.go = load ptr, ptr %i.fi, align 8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv82
  %i.gq = select i1 %i.gn, ptr %i.fi, ptr %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 %i.gl, ptr %i.gr, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !339

bb.ab:                                            ; preds = %._crit_edge
  %i.gs = load i32, ptr %4, align 4
  %.not68 = icmp eq i32 %i.gs, -1
  br i1 %.not68, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8            ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 2 uses
  %i.ha = ashr exact i64 %i.gz, 2                 ; 2 uses
  %i.hb = icmp eq ptr %i.gw, %i.gu
  br i1 %i.hb, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.ac
  %.not17.i = icmp eq i64 %i.gz, 4
  %.sroa.08.0.copyload.pre.i = load i32, ptr %i.gu, align 4 ; 3 uses
  br i1 %.not17.i, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %.lr.ph.i55

bb.ad:                                            ; preds = %.lr.ph.i55
  %i.hc = add nuw i64 %.016.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hc, %i.ha
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %.lr.ph.i55, !llvm.loop !340

.lr.ph.i55:                                       ; preds = %.preheader.i54, %bb.ad
  %.016.i = phi i64 [ %i.hc, %bb.ad ], [ 1, %.preheader.i54 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.016.i
  %i.he = load i32, ptr %i.hd, align 4
  %.not.i56 = icmp eq i32 %i.he, %.sroa.08.0.copyload.pre.i
  br i1 %.not.i56, label %bb.ad, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i55
  %i.hf = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 672
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, label %bb.af, !prof !9

bb.af:                                            ; preds = %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hk = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEEEE9ReducePhiENS8_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 1 dereferenceable(1) %i.hj, ptr nonnull %i.gu, i64 %i.ha, i8 4)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit: ; preds = %bb.ad, %bb.ac, %.preheader.i54, %bb.ae, %bb.af
  %.sroa.08.1.i = phi i32 [ -1, %bb.ac ], [ %i.hk, %bb.af ], [ -1, %bb.ae ], [ %.sroa.08.0.copyload.pre.i, %.preheader.i54 ], [ %.sroa.08.0.copyload.pre.i, %bb.ad ]
  store i32 %.sroa.08.1.i, ptr %4, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8MaybePhiENS_4base6VectorIKNS0_8compiler10turboshaft7OpIndexEEENS1_9ValueTypeE.exit, %bb.ab, %._crit_edge
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal8compiler10turboshaft5BlockENS4_4wasm32TurboshaftGraphBuildingInterface9BlockPhisEEENS0_6HashEqIS8_vE4HashENSE_2EqENS4_13ZoneAllocatorISt4pairIKS8_SB_EEEE5eraseENSM_8iteratorE(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr nonnull %i.eq, ptr %i.er)
  ret void
end_hunk_4
