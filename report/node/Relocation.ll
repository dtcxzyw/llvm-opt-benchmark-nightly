inline.NumInlined: 2350
inline.NumDeleted: 641
begin_hunk_0_@_ZNK4LIEF5MachO10Relocation5printERSo:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.ff = icmp ult i8 %i.fe, 10
  %i.fg = icmp ult i8 %i.fe, 100
  %15 = select i1 %i.fg, i64 2, i64 3
  %i.fh = select i1 %i.ff, i64 1, i64 %15
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.fi, ptr %13, align 8, !alias.scope !13
end_hunk_0
begin_hunk_1_@_ZNK4LIEF5MachO10Relocation5printERSo:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !13
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i8 %i.fr, ptr %i.fs, align 1
  %i.ft = load i8, ptr %i.fp, align 2, !noalias !13
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store i8 %i.ft, ptr %i.fu, align 1
  br label %bb.ah

end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.ad = and i32 %i.c, 4096
  %.not26 = icmp eq i32 %i.ad, 0                  ; 3 uses
  %.str.14..str.15.i = select i1 %.not26, ptr @.str.15, ptr @.str.14
  br label %.split.i

end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not27, label %_ZN3fmt3v116detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ak = select i1 %.not26, i32 30768, i32 22576
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %5 = select i1 %.not26, i32 7876608, i32 5779456
  %i.al = select i1 %.not.i7, i32 %i.ak, i32 %5
  %i.am = or i32 %i.al, %.sroa.2.0.extract.trunc.i
  %i.an = add i32 %i.am, 33554432
end_hunk_3
begin_hunk_4_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %i.bg = and i32 %i.c, 4096
  %.not29 = icmp eq i32 %i.bg, 0                  ; 2 uses
  %i.bh = select i1 %.not29, i32 25136, i32 16944
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %6 = select i1 %.not29, i32 6434816, i32 4337664
  %i.bi = select i1 %.not.i15, i32 %i.bh, i32 %6
  %i.bj = or i32 %i.bi, %.sroa.2.0.extract.trunc.i
  %i.bk = add i32 %i.bj, 33554432
end_hunk_4
begin_hunk_5_@_ZN3fmt3v116detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.v = and i32 %i.f, 4096
  %.not82 = icmp eq i32 %i.v, 0                   ; 2 uses
  %i.w = select i1 %.not82, i32 30768, i32 22576
  %.not.i = icmp eq i32 %2, 0
  %11 = select i1 %.not82, i32 7876608, i32 5779456
  %i.x = select i1 %.not.i, i32 %i.w, i32 %11
  %i.y = or i32 %i.x, %2
  %i.z = add i32 %i.y, 33554432
end_hunk_5
begin_hunk_6_@_ZN3fmt3v116detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bk = and i32 %i.f, 4096
  %.not85 = icmp eq i32 %i.bk, 0                  ; 2 uses
  %i.bl = select i1 %.not85, i32 25136, i32 16944
  %.not.i53 = icmp eq i32 %2, 0
  %12 = select i1 %.not85, i32 6434816, i32 4337664
  %i.bm = select i1 %.not.i53, i32 %i.bl, i32 %12
  %i.bn = or i32 %i.bm, %2
  %i.bo = add i32 %i.bn, 33554432
end_hunk_6
begin_hunk_7_@_ZN3fmt3v116detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.j:                                             ; preds = %bb.i
  %i.u = and i32 %i.f, 4096
  %.not82 = icmp eq i32 %i.u, 0                   ; 2 uses
  %i.v = select i1 %.not82, i32 30768, i32 22576
  %.not.i = icmp eq i32 %2, 0
  %11 = select i1 %.not82, i32 7876608, i32 5779456
  %i.w = select i1 %.not.i, i32 %i.v, i32 %11
  %i.x = or i32 %i.w, %2
  %i.y = add i32 %i.x, 33554432
end_hunk_7
begin_hunk_8_@_ZN3fmt3v116detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.r:                                             ; preds = %bb.q
  %i.bk = and i32 %i.f, 4096
  %.not85 = icmp eq i32 %i.bk, 0                  ; 2 uses
  %i.bl = select i1 %.not85, i32 25136, i32 16944
  %.not.i53 = icmp eq i32 %2, 0
  %12 = select i1 %.not85, i32 6434816, i32 4337664
  %i.bm = select i1 %.not.i53, i32 %i.bl, i32 %12
  %i.bn = or i32 %i.bm, %2
  %i.bo = add i32 %i.bn, 33554432
end_hunk_8
begin_hunk_9_@_ZN3fmt3v116detail12format_floatIeEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.g ], [ %i.ad, %bb.h ]
  %.sroa.6.0 = phi i32 [ %.0.i, %bb.g ], [ %i.be, %bb.h ]
  %i.bi = phi i1 [ %i.bd, %bb.g ], [ %i.bh, %bb.h ] ; 2 uses
  %spec.select = select i1 %i.bi, i32 3, i32 2
  %6 = select i1 %i.bi, i32 7, i32 6
  %.1 = select i1 %i.d, i32 %6, i32 %spec.select
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16
end_hunk_9
begin_hunk_10_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.ab = and i32 %i.c, 4096
  %.not27 = icmp eq i32 %i.ab, 0                  ; 3 uses
  %.str.14..str.15.i = select i1 %.not27, ptr @.str.15, ptr @.str.14
  br label %.split.i

end_hunk_10
begin_hunk_11_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not28, label %_ZN3fmt3v116detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ah = select i1 %.not27, i32 30768, i32 22576
  %.not.i8 = icmp eq i32 %2, 0
  %6 = select i1 %.not27, i32 7876608, i32 5779456
  %i.ai = select i1 %.not.i8, i32 %i.ah, i32 %6
  %i.aj = or i32 %i.ai, %2
  %i.ak = add i32 %i.aj, 33554432
end_hunk_11
begin_hunk_12_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %i.bd = and i32 %i.c, 4096
  %.not30 = icmp eq i32 %i.bd, 0                  ; 2 uses
  %i.be = select i1 %.not30, i32 25136, i32 16944
  %.not.i16 = icmp eq i32 %2, 0
  %7 = select i1 %.not30, i32 6434816, i32 4337664
  %i.bf = select i1 %.not.i16, i32 %i.be, i32 %7
  %i.bg = or i32 %i.bf, %2
  %i.bh = add i32 %i.bg, 33554432
end_hunk_12
begin_hunk_13_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.ad = and i32 %i.c, 4096
  %.not26 = icmp eq i32 %i.ad, 0                  ; 3 uses
  %.str.14..str.15.i = select i1 %.not26, ptr @.str.15, ptr @.str.14
  br label %.split.i

end_hunk_13
begin_hunk_14_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not27, label %_ZN3fmt3v116detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit
  %i.ak = select i1 %.not26, i32 30768, i32 22576
  %.not.i5 = icmp eq i32 %.sroa.2.0.copyload, 0
  %5 = select i1 %.not26, i32 7876608, i32 5779456
  %i.al = select i1 %.not.i5, i32 %i.ak, i32 %5
  %i.am = or i32 %i.al, %.sroa.2.0.copyload
  %i.an = add i32 %i.am, 33554432
end_hunk_14
begin_hunk_15_@_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v116detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12
  %i.bg = and i32 %i.c, 4096
  %.not29 = icmp eq i32 %i.bg, 0                  ; 2 uses
  %i.bh = select i1 %.not29, i32 25136, i32 16944
  %.not.i13 = icmp eq i32 %.sroa.2.0.copyload, 0
  %6 = select i1 %.not29, i32 6434816, i32 4337664
  %i.bi = select i1 %.not.i13, i32 %i.bh, i32 %6
  %i.bj = or i32 %i.bi, %.sroa.2.0.copyload
  %i.bk = add i32 %i.bj, 33554432
end_hunk_15
begin_hunk_16_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %.0108 = phi i32 [ %i.ah, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.0107 = phi i64 [ %i.aj, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = mul nsw i32 %.0108, 315653
  %i.ar = ashr i32 %i.aq, 20                      ; 3 uses
  %.neg125 = add nsw i32 %i.ar, -2                ; 3 uses
  %i.as = sub nsw i32 2, %i.ar                    ; 3 uses
  %i.at = mul nsw i32 %i.as, 1741647
  %i.au = ashr i32 %i.at, 19                      ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.da = zext i1 %i.cy to i64
  %i.db = add nuw i64 %i.da, %i.cr                ; 3 uses
  %i.dc = icmp ne i64 %i.cz, 0                    ; 4 uses
  %i.dd = icmp ugt i64 %i.db, 999999999999999999  ; 3 uses
  %i.de = mul nuw i64 %i.db, 10
  %.0112 = select i1 %i.dd, i32 19, i32 18        ; 3 uses
  %.0111 = select i1 %i.dd, i64 %i.db, i64 %i.de  ; 3 uses
  br i1 %i.d, label %bb.l, label %bb.n

end_hunk_17
begin_hunk_18_@_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  br label %bb.at

.thread241:                                       ; preds = %bb.n
  %7 = select i1 %i.dd, i32 18, i32 17
  %i.kk = add nsw i32 %7, %.neg125
  store i32 %i.kk, ptr %i.a, align 4
  br i1 %3, label %bb.au, label %bb.av

end_hunk_18
