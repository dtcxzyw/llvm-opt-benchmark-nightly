inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %i.ea = sext i8 %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = lshr i64 %i.du, %i.eb                   ; 4 uses
  %i.ed = sub nuw nsw i64 %i.du, %i.ec
  %i.ee = lshr i32 %i.b, 15
  %i.ef = and i32 %i.ee, 7
  %i.eg = zext nneg i32 %i.ef to i64
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_mcEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_:bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 248
  %i.q = load i64, ptr %i.p, align 8, !tbaa !143  ; 5 uses
  %i.r = lshr i64 %i.q, 25
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = sub nsw i32 40, %i.m
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.s, %i.u
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nuw nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.dg = sext i8 %i.df to i64
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = lshr i64 %i.da, %i.dh                   ; 4 uses
  %i.dj = sub nuw nsw i64 %i.da, %i.di
  %i.dk = lshr i32 %i.cm, 15
  %i.dl = and i32 %i.dk, 7
  %i.dm = zext nneg i32 %i.dl to i64
end_hunk_7
begin_hunk_8_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_8
begin_hunk_9_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_9
begin_hunk_10_@_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_:bb.a
_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ax, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.c ] ; 5 uses
  %i.ay = lshr i64 %.sroa.3.0.i, 54
  %i.az = sub nuw i64 %.sroa.3.0.i, %i.ay
  %i.ba = sub nsw i32 11, %i.n
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.az, %i.bb
end_hunk_10
begin_hunk_11_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nuw nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_11
begin_hunk_12_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.dg = sext i8 %i.df to i64
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = lshr i64 %i.da, %i.dh                   ; 4 uses
  %i.dj = sub nuw nsw i64 %i.da, %i.di
  %i.dk = lshr i32 %i.cm, 15
  %i.dl = and i32 %i.dk, 7
  %i.dm = zext nneg i32 %i.dl to i64
end_hunk_12
begin_hunk_13_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_13
begin_hunk_14_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_14
begin_hunk_15_@_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE:bb.a
  %i.bp = sext i8 %i.bo to i64
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = lshr i64 %i.bj, %i.bq                   ; 4 uses
  %i.bs = sub nuw nsw i64 %i.bj, %i.br
  %i.bt = lshr i32 %i.n, 15
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
end_hunk_15
begin_hunk_16_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nuw nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_16
begin_hunk_17_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nuw nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_17
begin_hunk_18_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESA_SA_SH_mmOSB_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_18
begin_hunk_19_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_:bb.a
  %i.l = sext i8 %i.k to i64
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.e, %i.m                      ; 4 uses
  %i.o = sub nuw nsw i64 %i.e, %i.n
  %i.p = lshr i32 %i.f, 15
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64
end_hunk_19
begin_hunk_20_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %i.dx = sext i8 %i.dw to i64
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = lshr i64 %i.dr, %i.dy                   ; 4 uses
  %i.ea = sub nuw nsw i64 %i.dr, %i.dz
  %i.eb = lshr i32 %i.b, 15
  %i.ec = and i32 %i.eb, 7
  %i.ed = zext nneg i32 %i.ec to i64
end_hunk_20
begin_hunk_21_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %i.ea = sext i8 %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = lshr i64 %i.du, %i.eb                   ; 4 uses
  %i.ed = sub nuw nsw i64 %i.du, %i.ec
  %i.ee = lshr i32 %i.b, 15
  %i.ef = and i32 %i.ee, 7
  %i.eg = zext nneg i32 %i.ef to i64
end_hunk_21
begin_hunk_22_@_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE:bb.a
  %i.bz = sext i8 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = lshr i64 %i.bt, %i.ca                   ; 4 uses
  %i.cc = sub nuw nsw i64 %i.bt, %i.cb
  %i.cd = lshr i32 %i.n, 15
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
end_hunk_22
begin_hunk_23_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nuw nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_23
begin_hunk_24_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nuw nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_24
begin_hunk_25_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_25
begin_hunk_26_@_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE:bb.a
  %i.bz = sext i8 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = lshr i64 %i.bt, %i.ca                   ; 4 uses
  %i.cc = sub nuw nsw i64 %i.bt, %i.cb
  %i.cd = lshr i32 %i.n, 15
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
end_hunk_26
begin_hunk_27_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nuw nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_27
begin_hunk_28_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nuw nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_28
begin_hunk_29_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_29
begin_hunk_30_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nuw nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_30
