inline.NumInlined: 712
inline.NumDeleted: 410
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17RecordAllocateUseENS2_7OpIndexES4_:bb.a
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !24 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noalias !24
  %sext.i = shl i64 %i.p, 48
  %i.q = ashr exact i64 %sext.i, 48
  %i.r = zext i32 %1 to i64
  %i.s = xor i64 %i.q, %i.r
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw nsw i128 %i.t, 8779197792823184629 ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u
  %i.x = trunc i128 %i.w to i64                   ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !24 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i
  %.pn.i = phi i64 [ %i.x, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i ], [ %i.au, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !24 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ah, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.d ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.c                     ; 2 uses
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noalias !24
  %i.ao = icmp eq i32 %i.an, %1
  br i1 %i.ao, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit, label %.critedge.i, !prof !12

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.065.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i, !prof !27

bb.e:                                             ; preds = %.critedge19.i
  %i.at = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.ay, i64 %.sroa.15.0.i) #13, !noalias !24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.n, align 8, !noalias !24, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.az
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !24
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i
  %i.bc = phi i32 [ %.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i ], [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i ]
  %.sroa.6.0 = phi ptr [ %i.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i ], [ %i.bb, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.thread.i.i ], [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE22find_or_prepare_insertIS7_EESH_INSL_8iteratorEbERKT_.exit.i._crit_edge.i ]
  store i32 %i.bc, ptr %.sroa.6.0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.be = load ptr, ptr %i.b, align 8, !noalias !23
  store ptr %i.be, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit: ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.al
  %i.bh = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %i.bh, label %bb.g, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread, !prof !28

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread: ; preds = %bb.f, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit
  %.sroa.0.118 = phi ptr [ %i.bg, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ %.sroa.0.0, %bb.f ] ; 2 uses
  %.sroa.6.117 = phi ptr [ %i.am, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ %.sroa.6.0, %bb.f ] ; 6 uses
  %.sroa.11.116 = phi i1 [ false, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit ], [ true, %bb.f ]
  %i.bi = icmp eq ptr %.sroa.0.118, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.bi, label %bb.h, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread, !prof !29

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #13
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread
  %i.bj = load i8, ptr %.sroa.0.118, align 1
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit, label %bb.i, !prof !12

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread.thread: ; preds = %bb.c
  %i.bl = load i8, ptr @_ZN4absl18container_internal11kSooControlE, align 1
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread, label %bb.i, !prof !12

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread.thread, %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5) #13
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE11try_emplaceIS7_Li0EJRPNS4_4ZoneEETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISA_SD_SF_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INST_8iteratorEbERSI_DpOT1_.exit.thread.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.6.117, i64 8 ; 4 uses
  br i1 %.sroa.11.116, label %bb.j, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

bb.j:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit
  %i.bp = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.sroa.0.0.copyload = load i32, ptr %4, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = zext i32 %.sroa.0.0.copyload to i64
  %i.bu = add i64 %i.bs, %i.bt
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i64                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.6.117, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.6.117, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  %.not.i.i = icmp ult i64 %i.cg, %i.by
  br i1 %.not.i.i, label %bb.k, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 noundef %i.by)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread, %bb.k, %bb.j, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit
  %i.ch = phi ptr [ %i.bn, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread ], [ %i.bo, %bb.k ], [ %i.bo, %bb.j ], [ %i.bo, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit ]
  %.sroa.6.117234750 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit.thread ], [ %.sroa.6.117, %bb.k ], [ %.sroa.6.117, %bb.j ], [ %.sroa.6.117, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorptEv.exit ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.6.117234750, i64 24 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.6.117234750, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = icmp ult ptr %i.cj, %i.cl
  br i1 %i.cm, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit, label %bb.l, !prof !12

bb.l:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.6.117234750, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 2
  %i.ct = add nsw i64 %i.cs, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.ct)
  %.pre.i = load ptr, ptr %i.ci, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit, %bb.l
  %i.cu = phi ptr [ %i.cj, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE7reserveEm.exit ], [ %.pre.i, %bb.l ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store ptr %i.cv, ptr %i.ci, align 8
  store i32 %2, ptr %i.cu, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer20AllocationIsEscapingENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 4 uses
  store i32 %1, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.h = icmp eq i32 %i.g, %1
  %i.i = select i1 %i.h, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %sext.i = shl i64 %i.l, 48
  %i.m = ashr exact i64 %sext.i, 48
  %i.n = zext i32 %1 to i64
  %i.o = xor i64 %i.m, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %.thread, !prof !27

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit: ; preds = %.thread33.i.i, %bb.c
  %.pn.i = phi ptr [ %i.i, %bb.c ], [ %i.al, %.thread33.i.i ] ; 3 uses
  %i.as = icmp eq ptr %.pn.i, null                ; 2 uses
  %i.at = icmp eq ptr %.pn.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  %i.au = load i8, ptr %.pn.i, align 1
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  br i1 %i.at, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit, !prof !31

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.as, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  %i.aw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not21 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not21, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %.sroa.01.0.copyload.pre26 = load i32, ptr %2, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread
  %.sroa.01.0.copyload = phi i32 [ %.sroa.01.0.copyload28, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread ], [ %.sroa.01.0.copyload.pre26, %.lr.ph.preheader ] ; 4 uses
  %.01122 = phi ptr [ %i.bv, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread ], [ %i.ay, %.lr.ph.preheader ] ; 2 uses
  %.sroa.02.0.copyload.a = load i32, ptr %.01122, align 4
  %i.bb = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = zext i32 %.sroa.01.0.copyload to i64
  %i.bg = add i64 %i.be, %i.bf
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = icmp eq i8 %i.bi, 104
  br i1 %i.bj, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i: ; preds = %bb.l
  %i.bn = call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
  %i.bo = and i32 %i.bn, 262144
  %.not15.i = icmp eq i32 %i.bo, 0
  %.sroa.01.0.copyload.pre = load i32, ptr %2, align 4 ; 2 uses
  br i1 %.not15.i, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i
  %.pre.i = load ptr, ptr %0, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre17.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.pre18.i = ptrtoint ptr %.pre17.i to i64
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i, %bb.l
  %.sroa.01.0.copyload27 = phi i32 [ %.sroa.01.0.copyload.pre, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i ], [ %.sroa.01.0.copyload, %bb.l ]
  %.pre-phi.i = phi i64 [ %.pre18.i, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13_crit_edge.i ], [ %i.be, %bb.l ]
  %i.bp = zext i32 %.sroa.02.0.copyload.a to i64
  %i.bq = add i64 %.pre-phi.i, %i.bp
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = load i8, ptr %i.br, align 4
  %.not.i = icmp eq i8 %i.bs, 78
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit, label %.thread

_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bt, align 4
  %i.bu = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.01.0.copyload
  br i1 %i.bu, label %.thread, label %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread

_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, %.lr.ph, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit
  %.sroa.01.0.copyload28 = phi i32 [ %.sroa.01.0.copyload.pre, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i ], [ %.sroa.01.0.copyload, %.lr.ph ], [ %.sroa.01.0.copyload27, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.01122, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.ba
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %._crit_edge.i.i, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i, %bb.b, %bb.k, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  %.3 = phi i1 [ false, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit ], [ false, %bb.k ], [ true, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit ], [ false, %bb.b ], [ false, %_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer17EscapesThroughUseENS2_7OpIndexES4_.exit.thread ], [ true, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread13.i ], [ false, %._crit_edge.i.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft26LateEscapeAnalysisAnalyzer12MarkToRemoveENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 2 uses
  store i32 %1, ptr %2, align 4
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  tail call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6DeadOpEJEEEvNS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.a, i32 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8
  %i.h = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 4
  %i.i = icmp eq i32 %i.h, %1
  %i.j = select i1 %i.i, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %sext.i = shl i64 %i.m, 48
  %i.n = ashr exact i64 %sext.i, 48
  %i.o = zext i32 %1 to i64
  %i.p = xor i64 %i.n, %i.o
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64                   ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.c        ; 4 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !12

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = add i16 %.sroa.017.047.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i, label %bb.g, label %.loopexit, !prof !27

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !30

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit: ; preds = %.thread33.i.i, %bb.c
  %.pn.i = phi ptr [ %i.j, %bb.c ], [ %i.am, %.thread33.i.i ] ; 3 uses
  %i.at = icmp eq ptr %.pn.i, null                ; 2 uses
  %i.au = icmp eq ptr %.pn.i, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  %i.av = load i8, ptr %.pn.i, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE4findIS7_EENSL_8iteratorERSI_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit, !prof !31

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #13
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.at, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE2atIS7_SA_EEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERSI_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not19 = icmp eq ptr %i.az, %i.bb
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %.020 = phi ptr [ %i.az, %.lr.ph ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %.020, align 4 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = zext i32 %.sroa.04.0.copyload to i64
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4 ; 2 uses
  %i.bo = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.bp = add i64 %i.bo, %i.bj
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = icmp eq i8 %i.br, -87
  br i1 %i.bs, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bu = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.bf, align 8
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = add nsw i64 %i.ca, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.cb)
  %.pre.i.i = load ptr, ptr %i.bc, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit: ; preds = %bb.m, %bb.n
  %i.cc = phi ptr [ %i.bt, %bb.m ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store ptr %i.cd, ptr %i.bc, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.cc, align 4
  %.pre = load ptr, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit, %bb.l
  %i.ce = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE9push_backEOS4_.exit ], [ %i.bg, %bb.l ]
  call void @_ZN2v88internal8compiler10turboshaft5Graph7ReplaceINS2_6DeadOpEJEEEvNS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(328) %i.ce, i32 %.sroa.04.0.copyload)
  %i.cf = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.bb
  br i1 %.not, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %._crit_edge.i.i, %bb.o, %bb.b, %bb.k, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS4_10ZoneVectorIS7_EEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_S9_EEEE8iteratorESO_.exit
  ret void
end_hunk_0
