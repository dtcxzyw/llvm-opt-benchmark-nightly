inline.NumInlined: 13980
inline.NumDeleted: 5200
begin_hunk_0_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_:bb.a
  %.val.i6.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !440
  %.val3.i7.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !440
  %i.o = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !441  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
end_hunk_1
begin_hunk_2_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_:bb.a
  %.val.i8.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !443
  %.val3.i9.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !443
  %i.t = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.t, i1 %i.o, i1 false
  %i.u = and i1 %i.j, %3
  ret i1 %i.u
}

end_hunk_2
begin_hunk_3_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_3
begin_hunk_4_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i4.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i5.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.n = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  %3 = select i1 %i.n, i1 %i.e, i1 false
  br label %_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2EEJNS0_18DataMemberPropertyINS_7compute17MakeStructOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEENS2_IS4_S5_IbSaIbEEEENS2_IS4_S5_ISt10shared_ptrIKNS_16KeyValueMetadataEESaISL_EEEEERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE:bb.a

.preheader.i.i:                                   ; preds = %bb.a
  %i.q = icmp eq ptr %.val3.i, %.val.i
  br i1 %i.q, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i
  %.0106.i.i = phi i64 [ %i.y, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2EEJNS0_18DataMemberPropertyINS_7compute17MakeStructOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEENS2_IS4_S5_IbSaIbEEEENS2_IS4_S5_ISt10shared_ptrIKNS_16KeyValueMetadataEESaISL_EEEEERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE:bb.a
_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i, %bb.b
  %i.y = add nuw i64 %.0106.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1054

.loopexit.i:                                      ; preds = %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, %.preheader.i.i
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i8, ptr %2, align 8, !tbaa !932, !range !10, !noundef !11
  br label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit: ; preds = %.lr.ph.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i, %bb.a, %.loopexit.i
  %4 = phi i8 [ %3, %.loopexit.i ], [ 0, %bb.a ], [ 0, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !986 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2EEJNS0_18DataMemberPropertyINS_7compute17MakeStructOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEENS2_IS4_S5_IbSaIbEEEENS2_IS4_S5_ISt10shared_ptrIKNS_16KeyValueMetadataEESaISL_EEEEERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE:bb.a
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.c, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit: ; preds = %bb.c, %.lr.ph.i.i9, %.preheader.i.i8, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit
  %5 = phi i8 [ 0, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit ], [ %4, %.preheader.i.i8 ], [ %4, %bb.c ], [ 0, %.lr.ph.i.i9 ]
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %5, ptr %6, align 8, !tbaa !932
  tail call void @_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  ret void
}
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m:bb.a
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp eq i64 %i.m, %i.s
  br i1 %.not.i, label %.preheader.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.t = icmp eq ptr %i.i, %i.j
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i
  %i.u = phi ptr [ %i.al, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ %i.j, %.preheader.i ]
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m:bb.a
_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i
  %i.ac = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val7.pr.i.i)
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, %.lr.ph.i
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !1018 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m:bb.a
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !1018
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !1018
  %i.ag = tail call noundef zeroext i1 @_ZNK5arrow16KeyValueMetadata6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.af)
  br i1 %i.ag, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.ah = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val.i.i)
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %bb.c, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.aj = add nuw i64 %.01015.i, 1                ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m:bb.a
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %.not20.i = icmp ult i64 %i.aj, %i.ap
  br i1 %.not20.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1056

_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %bb.c, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

.loopexit:                                        ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, %.preheader.i
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = load i8, ptr %4, align 8, !tbaa !932, !range !10, !noundef !11
  br label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread, %.loopexit
  %6 = phi ptr [ %4, %.loopexit ], [ %3, %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread ]
  %7 = phi i8 [ %5, %.loopexit ], [ 0, %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit.thread ]
  store i8 %7, ptr %6, align 8, !tbaa !932
  ret void
}

end_hunk_11
begin_hunk_12_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
_ZN5arrow7compute8internal11CompareImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi i1 [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %narrow = select i1 %.0.i.i.i.i.i.i, i1 %i.o, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
end_hunk_12
begin_hunk_13_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_13
begin_hunk_14_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i6.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i7.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.n = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  %3 = select i1 %i.n, i1 %i.e, i1 false
  br label %_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_14
begin_hunk_15_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !255, !range !10, !noundef !11
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !255, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %4 = select i1 %i.t, i1 %i.o, i1 false
  ret i1 %4
}

end_hunk_15
begin_hunk_16_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a
  %.val.i6.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.val3.i7.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !34
  %i.j = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1877 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l ; 2 uses
end_hunk_16
begin_hunk_17_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i8.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i9.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.s = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  %4 = select i1 %i.s, i1 %3, i1 false
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_17
begin_hunk_18_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i

_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
end_hunk_18
begin_hunk_19_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a

bb.e:                                             ; preds = %bb.d
  %bcmp.i.i.i10.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i6.i.i.i.i, ptr readonly %.val4.i8.i.i.i.i, i64 %.val3.i7.i.i.i.i)
  %bcmp.i.i.fr.i13.i.i.i.i = freeze i32 %bcmp.i.i.i10.i.i.i.i
  %i.s = icmp eq i32 %bcmp.i.i.fr.i13.i.i.i.i, 0
  %i.t = and i1 %i.j, %i.s
  br label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit

end_hunk_19
begin_hunk_20_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val.i4.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !2029
  %.val3.i5.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !2029
  %i.j = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %3
}

end_hunk_20
begin_hunk_21_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_:bb.a
  %.val.i10.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !2192
  %.val3.i11.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !2192
  %i.j = icmp eq i8 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2193 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
end_hunk_21
begin_hunk_22_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_:bb.a
  %.val.i12.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !255, !range !10, !noundef !11
  %.val3.i13.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !255, !range !10, !noundef !11
  %i.o = icmp eq i8 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2193 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
end_hunk_22
begin_hunk_23_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_:bb.a
  %.val.i14.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !255, !range !10, !noundef !11
  %.val3.i15.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !255, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i14.i.i.i.i, %.val3.i15.i.i.i.i
  %i.u = and i1 %i.o, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !2193 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
end_hunk_23
begin_hunk_24_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_:bb.a
  %.val3.i17.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !255, !range !10, !noundef !11
  %i.z = icmp eq i8 %.val.i16.i.i.i.i, %.val3.i17.i.i.i.i
  %i.aa = and i1 %i.u, %i.z
  %3 = select i1 %i.aa, i1 %i.j, i1 false
  %narrow = select i1 %3, i1 %i.e, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
end_hunk_24
begin_hunk_25_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !2029
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !2029
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %4 = select i1 %i.o, i1 %.0.i.i.i.i.i.i, i1 false
  ret i1 %4
}

end_hunk_25
begin_hunk_26_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESH_:bb.a
  %.val.i6.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.val3.i7.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !34
  %i.j = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2576 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
end_hunk_26
begin_hunk_27_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESH_:bb.a
  %.val.i8.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !34
  %.val3.i9.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !34
  %i.o = icmp eq i64 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.o, i1 %i.j, i1 false
  %4 = select i1 %3, i1 %i.e, i1 false
  ret i1 %4
}

end_hunk_27
begin_hunk_28_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %.val.i10.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !34
  %.val3.i11.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !34
  %i.t = icmp eq i64 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !2630 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v ; 2 uses
end_hunk_28
begin_hunk_29_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %i.ab = icmp eq i8 %.val3.i13.i.i.i.i, %.val5.i15.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i16.i.i.i.i = and i1 %i.ab, %i.aa
  %i.ac = icmp eq i8 %.val.i12.i.i.i.i, %.val4.i14.i.i.i.i
  %3 = select i1 %brmerge.not.i.i.i16.i.i.i.i, i1 %i.ac, i1 %i.ab
  %4 = select i1 %3, i1 %i.t, i1 false
  %i.ad = select i1 %4, i1 %i.o, i1 false
  %narrow5 = select i1 %i.ad, i1 %i.e, i1 false
  ret i1 %narrow5
}

; Function Attrs: mustprogress uwtable
end_hunk_29
begin_hunk_30_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_30
begin_hunk_31_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a
  %.val.i6.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !34
  %.val3.i7.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !34
  %i.o = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2748 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
end_hunk_31
begin_hunk_32_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !255, !range !10, !noundef !11
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !255, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.t, i1 %i.o, i1 false
  %i.u = and i1 %i.j, %3
  ret i1 %i.u
}

end_hunk_32
begin_hunk_33_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESI_:bb.a
  %.val.i4.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !255, !range !10, !noundef !11
  %.val3.i5.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !255, !range !10, !noundef !11
  %i.j = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %narrow = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
end_hunk_33
begin_hunk_34_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_34
begin_hunk_35_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_35
begin_hunk_36_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_:bb.a
  %.val.i6.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !2973
  %.val3.i7.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !2973
  %i.o = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2974 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
end_hunk_36
begin_hunk_37_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_:bb.a
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !255, !range !10, !noundef !11
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !255, !range !10, !noundef !11
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = select i1 %i.t, i1 %i.o, i1 false
  %i.u = and i1 %i.j, %3
  ret i1 %i.u
}

end_hunk_37
begin_hunk_38_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_:bb.a

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %bcmp.i.i.fr.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i
  %i.i = icmp eq i32 %bcmp.i.i.fr.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
end_hunk_38
begin_hunk_39_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val.i4.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !34
  %.val3.i5.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !34
  %i.j = icmp eq i64 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %3
}

end_hunk_39
