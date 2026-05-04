inline.NumInlined: 1150
inline.NumDeleted: 569
begin_hunk_0_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_:bb.a
.thread30.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ai, %.lr.ph.i.us.us ], [ %i.au, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %.us-phi8 = phi ptr [ %i.aj, %.lr.ph.i.us.us ], [ %i.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %.us-phi
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S9_EEE4findIS7_EENSH_8iteratorERKT_m.exit

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011614flags_internal12FlagRegistry12RegisterFlagERNS0_15CommandLineFlagEPKc:bb.a
          to label %.noexc153 unwind label %bb.ab ; 2 uses

.noexc153:                                        ; preds = %bb.q
  %.fca.0.extract.i.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bx, 0 ; 2 uses
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { i64, i8 } %i.bx, 1 ; 2 uses
  %i.by = trunc i8 %.fca.1.extract.i.i.i.i.i.i.i to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011614flags_internal12FlagRegistry12RegisterFlagERNS0_15CommandLineFlagEPKc:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !17, !noalias !50
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !66, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.cg

end_hunk_2
