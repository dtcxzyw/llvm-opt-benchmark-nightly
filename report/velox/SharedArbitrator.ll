inline.NumInlined: 7735
inline.NumDeleted: 3262
begin_hunk_0_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.ad = and i32 %i.c, 4096
  %.not26 = icmp eq i32 %i.ad, 0                  ; 3 uses
  %.str.217..str.218.i = select i1 %.not26, ptr @.str.218, ptr @.str.217
  br label %.split.i

end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not27, label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ak = select i1 %.not26, i32 30768, i32 22576
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %5 = select i1 %.not26, i32 7876608, i32 5779456
  %i.al = select i1 %.not.i7, i32 %i.ak, i32 %5
  %i.am = or i32 %i.al, %.sroa.2.0.extract.trunc.i
  %i.an = add i32 %i.am, 33554432
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %i.bg = and i32 %i.c, 4096
  %.not29 = icmp eq i32 %i.bg, 0                  ; 2 uses
  %i.bh = select i1 %.not29, i32 25136, i32 16944
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %6 = select i1 %.not29, i32 6434816, i32 4337664
  %i.bi = select i1 %.not.i15, i32 %i.bh, i32 %6
  %i.bj = or i32 %i.bi, %.sroa.2.0.extract.trunc.i
  %i.bk = add i32 %i.bj, 33554432
end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.ab = and i32 %i.c, 4096
  %.not27 = icmp eq i32 %i.ab, 0                  ; 3 uses
  %.str.217..str.218.i = select i1 %.not27, ptr @.str.218, ptr @.str.217
  br label %.split.i

end_hunk_3
begin_hunk_4_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not28, label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ah = select i1 %.not27, i32 30768, i32 22576
  %.not.i8 = icmp eq i32 %2, 0
  %6 = select i1 %.not27, i32 7876608, i32 5779456
  %i.ai = select i1 %.not.i8, i32 %i.ah, i32 %6
  %i.aj = or i32 %i.ai, %2
  %i.ak = add i32 %i.aj, 33554432
end_hunk_4
begin_hunk_5_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %i.bd = and i32 %i.c, 4096
  %.not30 = icmp eq i32 %i.bd, 0                  ; 2 uses
  %i.be = select i1 %.not30, i32 25136, i32 16944
  %.not.i16 = icmp eq i32 %2, 0
  %7 = select i1 %.not30, i32 6434816, i32 4337664
  %i.bf = select i1 %.not.i16, i32 %i.be, i32 %7
  %i.bg = or i32 %i.bf, %2
  %i.bh = add i32 %i.bg, 33554432
end_hunk_5
