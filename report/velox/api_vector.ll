inline.NumInlined: 6494
inline.NumDeleted: 2802
begin_hunk_0_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_:bb.a
  %.val.i4.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !704
  %.val3.i5.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !704
  %i.j = icmp eq i32 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

end_hunk_0
begin_hunk_1_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_:bb.a
  br i1 %i.ac, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !829 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
end_hunk_1
begin_hunk_2_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val.i4.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !704
  %.val3.i5.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !704
  %i.j = icmp eq i32 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

end_hunk_2
begin_hunk_3_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.w, %i.ac
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i, !llvm.loop !828

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.ad = phi ptr [ %i.y, %bb.b ], [ %i.l, %.preheader.i.i.i.i.i.i ]
end_hunk_3
begin_hunk_4_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %.01012.i.i.i.i.i.i
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %.01012.i.i.i.i.i.i
  %i.ah = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.ae, ptr noundef nonnull align 8 dereferenceable(44) %i.ag) ; 2 uses
  br i1 %i.ah, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i

_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %3 = and i1 %i.e, %i.ah
  br label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.a, %.preheader.i.i.i.i.i.i, %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ %i.e, %.preheader.i.i.i.i.i.i ], [ %3, %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i ]
  ret i1 %.1.i.i.i.i.i.i
}

; Function Attrs: mustprogress uwtable
end_hunk_4
begin_hunk_5_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_:bb.a
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !481, !range !230, !noundef !231
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !481, !range !230, !noundef !231
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.j, %i.o
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
end_hunk_5
begin_hunk_6_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a
  br i1 %i.ac, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1502 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
end_hunk_6
begin_hunk_7_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !704
  %.val3.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !704
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %3 = and i1 %.1.i.i.i.i.i.i, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1504 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
end_hunk_7
begin_hunk_8_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_:bb.a
  %.val.i6.i.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !1506
  %.val3.i7.i.i.i.i = load i32, ptr %i.al, align 4, !tbaa !1506
  %i.am = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.an = and i1 %3, %i.am
  ret i1 %i.an
}

end_hunk_8
