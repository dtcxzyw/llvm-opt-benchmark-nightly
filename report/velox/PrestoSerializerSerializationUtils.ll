inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E_EEvSE_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = sext i32 %i.ag to i64
  %.pre6 = load ptr, ptr %1, align 8, !tbaa !2571
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSD_.exit
  %2 = phi ptr [ %.pre6, %.lr.ph ], [ %4, %_ZZN8facebook5velox10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSD_.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSD_.exit ] ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !2561
  %i.am = load ptr, ptr %2, align 8, !tbaa !444
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !2572, !nonnull !9, !align !640
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1929
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !131
  %i.av = getelementptr inbounds [16 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !1927
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E_EEvSE_:bb.a
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !2571  ; 3 uses
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E_EEvSE_:bb.a
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %3 = phi ptr [ %.pre, %bb.s ], [ %.pre, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.pre, %bb.o ], [ %2, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ]
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !130
  br label %_ZZN8facebook5velox10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSD_.exit

_ZZN8facebook5velox10FlatVectorISt10shared_ptrIvEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E_clIiEEDaSD_.exit: ; preds = %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %4 = phi ptr [ %2, %bb.i ], [ %3, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
end_hunk_2
