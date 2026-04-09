inline.NumInlined: 5240
inline.NumDeleted: 882
begin_hunk_0_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.au = add i64 %.0.v.i.i.i57129, %i.ar
  %4 = add i64 %i.au, 8
  %5 = sub i64 %4, %i.c
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %.lr.ph.preheader139, label %vector.ph

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.au = add i64 %.0.v.i.i.i57129, %i.ar
  %4 = add i64 %i.au, 8
  %5 = sub i64 %4, %i.c
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %.lr.ph.preheader139, label %vector.ph

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = add i64 %i.d, %i.z
  %4 = shl i64 %i.ac, 2
  %5 = add i64 %4, 8
  %i.ad = shl i64 %i.c, 2
  %6 = sub i64 %5, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %6
  %bound0 = icmp ult ptr %i.aa, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = add i64 %i.d, %i.z
  %4 = shl i64 %i.ac, 2
  %5 = add i64 %4, 8
  %i.ad = shl i64 %i.c, 2
  %6 = sub i64 %5, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %6
  %bound0 = icmp ult ptr %i.aa, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = add i64 %i.d, %i.z
  %4 = shl i64 %i.ac, 2
  %5 = add i64 %4, 8
  %i.ad = shl i64 %i.c, 2
  %6 = sub i64 %5, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %6
  %bound0 = icmp ult ptr %i.aa, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = add i64 %i.d, %i.z
  %4 = shl i64 %i.ac, 2
  %5 = add i64 %4, 8
  %i.ad = shl i64 %i.c, 2
  %6 = sub i64 %5, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %6
  %bound0 = icmp ult ptr %i.aa, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = add i64 %i.d, %i.z
  %4 = shl i64 %i.ac, 3
  %5 = add i64 %4, 8
  %i.ad = shl i64 %i.c, 3
  %6 = sub i64 %5, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %6
  %bound0 = icmp ult ptr %i.aa, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ac = add i64 %i.d, %i.z
  %4 = shl i64 %i.ac, 3
  %5 = add i64 %4, 8
  %i.ad = shl i64 %i.c, 3
  %6 = sub i64 %5, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %6
  %bound0 = icmp ult ptr %i.aa, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_7
