inline.NumInlined: 4356
inline.NumDeleted: 1798
begin_hunk_0_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val3.i9.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  %3 = and i1 %i.e, %i.p
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val3.i9.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  %3 = and i1 %i.e, %i.p
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit, !llvm.loop !692

_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !693  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
end_hunk_2
begin_hunk_3_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a
  %.val.i8.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !695
  %.val3.i9.i.i.i.i = load i32, ptr %i.v, align 4, !tbaa !695
  %i.w = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = and i1 %.1.i.i.i.i.i.i, %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !696  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
end_hunk_3
begin_hunk_4_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_:bb.a
  %.val3.i13.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ag = icmp eq i32 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.ah = and i1 %i.ab, %i.ag
  %i.ai = and i1 %3, %i.ah
  ret i1 %i.ai
}

end_hunk_4
begin_hunk_5_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit, !llvm.loop !692

_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !949  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
end_hunk_5
begin_hunk_6_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %.val.i10.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !3
  %.val3.i11.i.i.i.i = load i32, ptr %i.v, align 4, !tbaa !3
  %i.w = icmp eq i32 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %3 = and i1 %.1.i.i.i.i.i.i, %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !949  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
end_hunk_6
begin_hunk_7_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %.val.i12.i.i.i.i = load i32, ptr %i.z, align 4, !tbaa !3
  %.val3.i13.i.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp eq i32 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %4 = and i1 %3, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !951 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
end_hunk_7
begin_hunk_8_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_:bb.a
  %.val3.i17.i.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.al = icmp eq i32 %.val.i16.i.i.i.i, %.val3.i17.i.i.i.i
  %i.am = and i1 %i.ag, %i.al
  %i.an = and i1 %4, %i.am
  ret i1 %i.an
}

end_hunk_8
