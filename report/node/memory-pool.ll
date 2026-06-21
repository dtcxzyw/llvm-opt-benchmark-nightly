inline.NumInlined: 2403
inline.NumDeleted: 1226
begin_hunk_0_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE8PutLocalEPNS0_7IsolateES9_:bb.a
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = load i64, ptr %0, align 8, !noalias !60  ; 4 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !67
  %.not.i.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !67 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, align 8, !noalias !67
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !67
  store ptr %0, ptr %3, align 8, !noalias !67
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.j, align 8, !noalias !67
  %i.k = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #20, !noalias !67
  %i.l = extractvalue { ptr, ptr } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !67
  %.pre = load ptr, ptr %i.a, align 8, !noalias !70
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !71 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !71
  %sext.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i, 48
  %i.q = ptrtoint ptr %1 to i64
  %i.r = xor i64 %i.q, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64
  %i.x = xor i64 %i.p, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !71 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i
  %.pn.i = phi i64 [ %i.x, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i ], [ %i.au, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !71
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !71 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ah, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.d ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.c
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !71
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit, label %.critedge.i, !prof !21

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.065.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.065.i         ; 2 uses
  %.not.i2 = icmp eq i16 %i.aq, 0
  br i1 %.not.i2, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i, !prof !26

bb.e:                                             ; preds = %.critedge19.i
  %i.at = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.ay, i64 %.sroa.15.0.i) #20, !noalias !71
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !71
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i
  %i.bb = phi ptr [ %.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i ], [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i ]
  %.sroa.3.0 = phi ptr [ %i.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i ], [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i ] ; 3 uses
  store ptr %i.bb, ptr %.sroa.3.0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit: ; preds = %.lr.ph.i, %bb.c, %bb.f
  %.sroa.3.1 = phi ptr [ %.sroa.3.0, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.c ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bk, align 8
  store ptr %i.bn, ptr %i.bm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i

_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i: ; preds = %bb.h, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  store ptr null, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.bd, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.bs, ptr %i.bd, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 8
  call void @_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i, %bb.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal10MemoryPool6RemoveEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.547", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.547") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 3) #20, !inline_history !74 ; 0 uses
  br label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.05 = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %.05
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.547") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %.sroa.0105 = alloca %"struct.std::_Tuple_impl.539", align 8 ; 5 uses
  %.sroa.0 = alloca %"struct.std::_Tuple_impl.539", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = icmp ult i64 %i.e, 2                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.k = icmp eq ptr %i.j, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.k, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %sext.i = shl i64 %i.n, 48
  %i.o = ashr exact i64 %sext.i, 48
  %i.p = ptrtoint ptr %2 to i64
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw nsw i128 %i.r, 8779197792823184629 ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s
  %i.v = trunc i128 %i.u to i64
  %i.w = xor i64 %i.o, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.w, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.e        ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.e                     ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.am, %2
  br i1 %i.an, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not44.i.i = icmp eq i16 %i.as, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ao, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  %i.av = icmp ult i64 %i.n, 131072
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i
  %.not.i.i17 = phi i1 [ %i.av, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ true, %bb.b ], [ false, %bb.c ]
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ay = icmp eq ptr %i.aw, null                 ; 2 uses
  %i.az = icmp eq ptr %i.aw, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  %i.ba = load i8, ptr %i.aw, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  br i1 %i.az, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.ay, label %bb.k, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -16 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0105)
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0105, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0105, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit: ; preds = %bb.m, %bb.n
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  store ptr null, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -40 ; 4 uses
  store ptr %i.bu, ptr %i.bj, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i14, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bw, ptr %i.c, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i: ; preds = %bb.o
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i, %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit
  store ptr null, ptr %i.bv, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i32 noundef 3) #20, !inline_history !76 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit: ; preds = %bb.q, %bb.r
  %i.ce = load ptr, ptr %i.bh, align 8
  %i.cf = load ptr, ptr %i.bj, align 8
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit
  %i.ch = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  store ptr %i.ci, ptr %i.be, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.s ] ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.co, ptr %i.b, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  store ptr null, ptr %i.cn, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, i32 noundef 3) #20, !inline_history !78 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq ptr %i.cw, %i.cm
  br i1 %.not.i.i.i.i.i.i15, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.cj, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i, %bb.s
  %i.cx = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i ], [ %i.ck, %bb.s ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i
  %i.cy = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #22
  br label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit

_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit: ; preds = %bb.x, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  store ptr %i.bn, ptr %i.dd, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0105, i64 16, i1 false)
  store ptr %i.bp, ptr %i.de, align 8
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit, %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bs, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.dg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0105)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge:                                        ; preds = %bb.l, %bb.k
  br i1 %.not.i.i17, label %.critedge13, label %bb.z, !prof !26

bb.z:                                             ; preds = %.critedge
  br i1 %i.f, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i19 = load ptr, ptr %i.dh, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.di, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dj, align 8 ; 2 uses
  %i.dk = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1
  %i.dl = icmp slt i8 %i.dk, -1
  br i1 %i.dl, label %.lr.ph.i.i18, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

.lr.ph.i.i18:                                     ; preds = %bb.ab, %.lr.ph.i.i18
  %i.dm = phi ptr [ %i.dp, %.lr.ph.i.i18 ], [ %.sroa.0.0.copyload.i.i.i, %bb.ab ]
  %i.dn = phi ptr [ %i.do, %.lr.ph.i.i18 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ab ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = icmp slt i8 %i.dq, -1
  br i1 %i.dr, label %.lr.ph.i.i18, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit, !llvm.loop !53

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit: ; preds = %.lr.ph.i.i18, %bb.ab, %bb.aa, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %.sroa.038.0 = phi ptr [ %i.aw, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ab ], [ @_ZN4absl18container_internal11kSooControlE, %bb.aa ], [ %i.do, %.lr.ph.i.i18 ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %i.ax, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit ], [ %.sroa.0.0.copyload.i.i.i, %bb.ab ], [ %.sroa.0.0.copyload.i.i.i.i.i.i19, %bb.aa ], [ %i.dp, %.lr.ph.i.i18 ] ; 3 uses
  %i.ds = icmp eq ptr %.sroa.038.0, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.ds, label %.critedge99, label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit
  %i.dt = load i8, ptr %.sroa.038.0, align 1
  %i.du = icmp sgt i8 %i.dt, -1
  br i1 %i.du, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

.critedge99:                                      ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %bb.ac
  %i.dv = load i8, ptr %.sroa.038.0, align 1
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit: ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 16 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 5 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %.critedge13, label %bb.af

bb.af:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i8 0, i64 24, i1 false)
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 -24 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 3 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i21, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds i8, ptr %i.ea, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22: ; preds = %bb.af, %bb.ag
  %i.eh = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8
  store ptr null, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.dz, align 8            ; 5 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -40 ; 4 uses
  store ptr %i.ek, ptr %i.dz, align 8
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i23, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.em, ptr %i.a, align 8
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 -24
  %i.eo = load ptr, ptr %i.en, align 8
  %.not.i.i.i.i.i24 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i24, label %bb.ai, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i25

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i25: ; preds = %bb.ah
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i25, %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22
  store ptr null, ptr %i.el, align 8
  %i.er = getelementptr inbounds i8, ptr %i.ej, i64 -24
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = call noundef zeroext i1 %i.es(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 8 dereferenceable(40) %i.ek, i32 noundef 3) #20, !inline_history !76 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27

_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27: ; preds = %bb.aj, %bb.ak
  %i.eu = load ptr, ptr %i.dx, align 8
  %i.ev = load ptr, ptr %i.dz, align 8
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5eraseENSQ_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %.sroa.038.0, ptr nonnull %.sroa.8.0)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  store ptr %i.ed, ptr %i.ex, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i28, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store ptr %i.ef, ptr %i.ey, align 8
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34: ; preds = %bb.am, %bb.an
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ei, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.fa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge13:                                      ; preds = %.critedge, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.fb, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34, %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit, %.critedge13
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool8AddLargeEPNS0_7IsolateERSt6vectorIPNS0_17LargePageMetadataESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.565", align 8 ; 5 uses
  %5 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %6 = alloca %"class.std::unique_ptr.565", align 8 ; 5 uses
  %7 = alloca %"class.v8::base::TimeDelta", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = tail call noundef zeroext i1 @_ZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS0_17LargePageMetadataESaIS5_EEm(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.b)
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1240), align 8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %or.cond = and i1 %i.d, %i.f
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.g = zext nneg i32 %i.e to i64
  %i.h = mul nuw nsw i64 %i.g, 1000000
  store i64 %i.h, ptr %7, align 8
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !79 ; 6 uses
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef %1) #20, !noalias !79
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskE, i64 16), ptr %i.i, align 8, !noalias !79
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskE, i64 64), ptr %i.j, align 8, !noalias !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %1, ptr %i.k, align 8, !noalias !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %0, ptr %i.l, align 8, !noalias !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %i.b, ptr %i.m, align 8, !noalias !79
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1966), align 2, !range !8, !noundef !9
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 63840
  %i.q = load ptr, ptr %i.p, align 8, !noalias !82 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 63848
  %i.s = load ptr, ptr %i.r, align 8, !noalias !82 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal7Isolate11task_runnerEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !noalias !82
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.t, align 4, !noalias !82
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !noalias !82
  br label %_ZNK2v88internal7Isolate11task_runnerEv.exit

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4, !noalias !82 ; 0 uses
  br label %_ZNK2v88internal7Isolate11task_runnerEv.exit

_ZNK2v88internal7Isolate11task_runnerEv.exit:     ; preds = %bb.c, %bb.e, %bb.f
  %i.y = call noundef double @_ZNK2v84base9TimeDelta10InSecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.constant, ptr %5, align 8
  %i.z = ptrtoint ptr %i.j to i64
  store i64 %i.z, ptr %6, align 8
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %6, double noundef %i.y, ptr noundef nonnull align 8 dereferenceable(8) %5) #20, !inline_history !85
  %i.ad = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i: ; preds = %_ZNK2v88internal7Isolate11task_runnerEv.exit
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #20, !inline_history !86
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i, %_ZNK2v88internal7Isolate11task_runnerEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.s, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !87
  %i.ap = load ptr, ptr %i.s, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !87
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.as = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.j ], [ %i.au, %bb.k ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.l, label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit, !prof !26

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit

bb.m:                                             ; preds = %bb.b
  %i.aw = tail call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #20 ; 2 uses
  %i.ax = call noundef double @_ZNK2v84base9TimeDelta10InSecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.constant.5, ptr %3, align 8
  %i.ay = ptrtoint ptr %i.j to i64
  store i64 %i.ay, ptr %4, align 8
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef zeroext 0, ptr noundef nonnull %4, double noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %3) #20, !inline_history !88
  %i.bc = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i8, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i9

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i9: ; preds = %bb.m
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #20, !inline_history !89
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i9, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12, %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit, %bb.a
  ret void
}

declare noundef double @_ZNK2v84base9TimeDelta10InSecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal10MemoryPool11RemoveLargeEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_ZN2v88internal10MemoryPool17LargePagePoolImpl6RemoveEPNS0_7IsolateEm.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d
  %i.g = icmp eq ptr %.sroa.014.1.i, %i.d
  br i1 %i.g, label %_ZN2v88internal10MemoryPool17LargePagePoolImpl6RemoveEPNS0_7IsolateEm.exit, label %bb.e

end_hunk_0
