inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ac = and i32 %i.ab, -2
  %or.cond.i = icmp eq i32 %i.ac, 8               ; 2 uses
  %..i = select i1 %or.cond.i, i32 10, i32 2      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !97
  %i.af = and i32 %i.ae, 512
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a
  %i.at = mul i32 %spec.store.select5129.lcssa, 6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = load i32, ptr %i.au, align 8, !tbaa !102
  %19 = or disjoint i32 %..i, 256
  %.sroa.0101.0.insert.insert = zext nneg i32 %19 to i64
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %spec.store.select127.lcssa, i32 noundef %i.at, i32 noundef %i.av, i64 %.sroa.0101.0.insert.insert) #34
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.aw, ptr noundef nonnull align 8 dereferenceable(160) %4) #34 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a
  %i.cr = load i32, ptr %i.c, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !102
  %20 = or disjoint i32 %..i, 256
  %.sroa.099.0.insert.insert = zext nneg i32 %20 to i64
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef %i.ct, i64 %.sroa.099.0.insert.insert) #34
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.cu, ptr noundef nonnull align 8 dereferenceable(160) %5) #34 ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.ac = and i32 %i.b, 4096
  %.not36 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.str.47..str.48.i = select i1 %.not36, ptr @.str.48, ptr @.str.47
  br label %.split.i

end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not37, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.aj = select i1 %.not36, i32 30768, i32 22576 ; 2 uses
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %4 = shl nuw nsw i32 %i.aj, 8
  %i.ak = select i1 %.not.i7, i32 %i.aj, i32 %4
  %i.al = or i32 %i.ak, %.sroa.2.0.extract.trunc.i
  %i.am = add i32 %i.al, 33554432
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %i.bf = and i32 %i.b, 4096
  %.not39 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not39, i32 25136, i32 16944 ; 2 uses
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %5 = shl nuw nsw i32 %i.bg, 8
  %i.bh = select i1 %.not.i15, i32 %i.bg, i32 %5
  %i.bi = or i32 %i.bh, %.sroa.2.0.extract.trunc.i
  %i.bj = add i32 %i.bi, 33554432
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.f, 4096
  %.not97 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not97, i32 30768, i32 22576  ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %8 = shl nuw nsw i32 %i.x, 8
  %i.y = select i1 %.not.i, i32 %i.x, i32 %8
  %i.z = or i32 %i.y, %2
  %i.aa = add i32 %i.z, 33554432
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bj = and i32 %i.f, 4096
  %.not100 = icmp eq i32 %i.bj, 0
  %i.bk = select i1 %.not100, i32 25136, i32 16944 ; 2 uses
  %.not.i63 = icmp eq i32 %2, 0
  %9 = shl nuw nsw i32 %i.bk, 8
  %i.bl = select i1 %.not.i63, i32 %i.bk, i32 %9
  %i.bm = or i32 %i.bl, %2
  %i.bn = add i32 %i.bm, 33554432
end_hunk_7
begin_hunk_8_@_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.k:                                             ; preds = %bb.j
  %i.v = and i32 %i.f, 4096
  %.not97 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not97, i32 30768, i32 22576  ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %8 = shl nuw nsw i32 %i.w, 8
  %i.x = select i1 %.not.i, i32 %i.w, i32 %8
  %i.y = or i32 %i.x, %2
  %i.z = add i32 %i.y, 33554432
end_hunk_8
begin_hunk_9_@_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE:bb.a

bb.q:                                             ; preds = %bb.p
  %i.bj = and i32 %i.f, 4096
  %.not100 = icmp eq i32 %i.bj, 0
  %i.bk = select i1 %.not100, i32 25136, i32 16944 ; 2 uses
  %.not.i63 = icmp eq i32 %2, 0
  %9 = shl nuw nsw i32 %i.bk, 8
  %i.bl = select i1 %.not.i63, i32 %i.bk, i32 %9
  %i.bm = or i32 %i.bl, %2
  %i.bn = add i32 %i.bm, 33554432
end_hunk_9
begin_hunk_10_@_ZN3fmt3v126detail12format_floatIeEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.g ], [ %i.ad, %bb.h ]
  %.sroa.6.0 = phi i32 [ %.0.i, %bb.g ], [ %i.be, %bb.h ]
  %i.bi = phi i1 [ %i.bd, %bb.g ], [ %i.bh, %bb.h ]
  %spec.select = select i1 %i.bi, i32 3, i32 2    ; 2 uses
  %6 = or disjoint i32 %spec.select, 4
  %.1 = select i1 %i.d, i32 %6, i32 %spec.select
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !486
end_hunk_10
begin_hunk_11_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.aa = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %.str.47..str.48.i = select i1 %.not37, ptr @.str.48, ptr @.str.47
  br label %.split.i

end_hunk_11
begin_hunk_12_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ag = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i8 = icmp eq i32 %2, 0
  %5 = shl nuw nsw i32 %i.ag, 8
  %i.ah = select i1 %.not.i8, i32 %i.ag, i32 %5
  %i.ai = or i32 %i.ah, %2
  %i.aj = add i32 %i.ai, 33554432
end_hunk_12
begin_hunk_13_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %i.bc = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not40, i32 25136, i32 16944 ; 2 uses
  %.not.i16 = icmp eq i32 %2, 0
  %6 = shl nuw nsw i32 %i.bd, 8
  %i.be = select i1 %.not.i16, i32 %i.bd, i32 %6
  %i.bf = or i32 %i.be, %2
  %i.bg = add i32 %i.bf, 33554432
end_hunk_13
begin_hunk_14_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.e:                                             ; preds = %bb.a
  %i.ac = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.str.47..str.48.i = select i1 %.not37, ptr @.str.48, ptr @.str.47
  br label %.split.i

end_hunk_14
begin_hunk_15_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit
  %i.aj = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i5 = icmp eq i32 %.sroa.2.0.copyload, 0
  %4 = shl nuw nsw i32 %i.aj, 8
  %i.ak = select i1 %.not.i5, i32 %i.aj, i32 %4
  %i.al = or i32 %i.ak, %.sroa.2.0.copyload
  %i.am = add i32 %i.al, 33554432
end_hunk_15
begin_hunk_16_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12
  %i.bf = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not40, i32 25136, i32 16944 ; 2 uses
  %.not.i13 = icmp eq i32 %.sroa.2.0.copyload, 0
  %5 = shl nuw nsw i32 %i.bg, 8
  %i.bh = select i1 %.not.i13, i32 %i.bg, i32 %5
  %i.bi = or i32 %i.bh, %.sroa.2.0.copyload
  %i.bj = add i32 %i.bi, 33554432
end_hunk_16
begin_hunk_17_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %.0108 = phi i32 [ %i.ah, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.0107 = phi i64 [ %i.aj, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = mul nsw i32 %.0108, 315653
  %i.ar = ashr i32 %i.aq, 20                      ; 4 uses
  %.neg125 = add nsw i32 %i.ar, -2                ; 2 uses
  %i.as = sub nsw i32 2, %i.ar                    ; 3 uses
  %i.at = mul nsw i32 %i.as, 1741647
  %i.au = ashr i32 %i.at, 19                      ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.da = zext i1 %i.cy to i64
  %i.db = add nuw i64 %i.da, %i.cr                ; 3 uses
  %i.dc = icmp ne i64 %i.cz, 0                    ; 4 uses
  %i.dd = icmp ugt i64 %i.db, 999999999999999999  ; 2 uses
  %i.de = mul nuw i64 %i.db, 10
  %.0112 = select i1 %i.dd, i32 19, i32 18        ; 4 uses
  %.0111 = select i1 %i.dd, i64 %i.db, i64 %i.de  ; 3 uses
  br i1 %i.d, label %bb.l, label %bb.p

end_hunk_18
begin_hunk_19_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  br label %bb.av

.thread217:                                       ; preds = %bb.p
  %6 = add nsw i32 %i.ar, -3
  %i.kl = add nsw i32 %6, %.0112
  store i32 %i.kl, ptr %i.a, align 4, !tbaa !3
  br i1 %3, label %bb.aw, label %bb.ax

end_hunk_19
