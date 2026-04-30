inline.NumInlined: 118
inline.NumDeleted: 23
begin_hunk_0_@_ZN4absl12lts_2024011612log_internal10ProtoField10DecodeFromEPNS0_4SpanIKcEE:bb.a
  %.111.i27 = phi i64 [ %i.bv, %._ZN4absl12lts_2024011612log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit29_crit_edge ], [ 0, %.preheader40.preheader ], [ %i.bv, %.preheader40 ] ; 2 uses
  %.1.i28 = phi i64 [ %i.bw, %._ZN4absl12lts_2024011612log_internal12_GLOBAL__N_112DecodeVarintEPNS0_4SpanIKcEE.exit29_crit_edge ], [ %i.m, %.preheader40.preheader ], [ %i.m, %.preheader40 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1.i28 ; 2 uses
  store ptr %i.bx, ptr %1, align 8, !tbaa !31
  %i.by = sub i64 %i.m, %.1.i28                   ; 2 uses
  store i64 %i.by, ptr %i.a, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011612log_internal10ProtoField10DecodeFromEPNS0_4SpanIKcEE:bb.a
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  %2 = load ptr, ptr %1, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated
  store ptr %i.cb, ptr %1, align 8, !tbaa !31
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !29
  %i.cd = sub i64 %i.cc, %.sroa.speculated
end_hunk_1
