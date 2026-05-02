inline.NumInlined: 2454
inline.NumDeleted: 1412
begin_hunk_0_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %.val.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.val3.i.i, i1 noundef zeroext false)
  br label %_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE.exit

_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2ELm3ELm4ELm5ELm6EEJNS0_18DataMemberPropertyINS_7compute11CastOptionsENS_10TypeHolderEEENS2_IS4_bEES7_S7_S7_S7_S7_ERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i.i = phi i1 [ %i.h, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i64, ptr %i.i, align 8, !tbaa !303  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
end_hunk_0
begin_hunk_1_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val.i14.i = load i8, ptr %i.k, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i15.i = load i8, ptr %i.l, align 1, !tbaa !305, !range !77, !noundef !78
  %i.m = icmp eq i8 %.val.i14.i, %.val3.i15.i
  %3 = and i1 %.0.i.i.i.i, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i64, ptr %i.n, align 8, !tbaa !303  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
end_hunk_1
begin_hunk_2_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val.i16.i = load i8, ptr %i.p, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i17.i = load i8, ptr %i.q, align 1, !tbaa !305, !range !77, !noundef !78
  %i.r = icmp eq i8 %.val.i16.i, %.val3.i17.i
  %i.s = and i1 %3, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !303  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
end_hunk_2
begin_hunk_3_@_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11CastOptionsEJNS_8internal18DataMemberPropertyIS3_NS_10TypeHolderEEENS5_IS3_bEES8_S8_S8_S8_S8_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_:bb.a
  %.val.i24.i = load i8, ptr %i.an, align 1, !tbaa !305, !range !77, !noundef !78
  %.val3.i25.i = load i8, ptr %i.ao, align 1, !tbaa !305, !range !77, !noundef !78
  %i.ap = icmp eq i8 %.val.i24.i, %.val3.i25.i
  %i.aq = and i1 %i.ak, %i.ap
  ret i1 %i.aq
}

end_hunk_3
