Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/format?download=true
inline.NumInlined: 2606
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refEEN14format_handler15on_format_specsEiPKcSF_:bb.a
  br i1 %i.dq, label %_ZN3fmt3v116detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge193

._crit_edge193:                                   ; preds = %bb.y
  %.pre194 = load i16, ptr %i.at, align 1
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge193, %bb.x
  %i.dr = phi i16 [ %.pre194, %._crit_edge193 ], [ %i.dn, %bb.x ]
  %i.ds = lshr i16 %i.dr, 4
  %i.dt = and i16 %i.ds, 7
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !112
  %i.dx = zext i32 %i.dw to i64
  %i.dy = shl nuw i64 %i.dx, 32
  %.sroa.0.0.insert.ext.i74 = zext i32 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.142 to i64
  %.sroa.0.0.insert.insert.i75 = or disjoint i64 %i.dy, %.sroa.0.0.insert.ext.i74
  %i.dz = call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, i64 %.sroa.0.0.insert.insert.i75, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aa:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.ea = load i16, ptr %i.at, align 1
  %i.eb = and i16 %i.ea, 512
  %.not.i50 = icmp eq i16 %i.eb, 0
  br i1 %.not.i50, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 3, ptr %i.ec, align 16, !tbaa !111, !alias.scope !673
  %.sroa.01.0.insert.ext.i.i.i76 = zext i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139 to i128
  store i128 %.sroa.01.0.insert.ext.i.i.i76, ptr %23, align 16, !tbaa !82, !alias.scope !673
  %i.ed = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %23, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72)
  br i1 %i.ed, label %_ZN3fmt3v116detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ee = icmp slt i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, 0
  br i1 %i.ee, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ef = sub i64 0, %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139
  br label %_ZN3fmt3v116detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.eg = load i16, ptr %i.at, align 1
  %i.eh = lshr i16 %i.eg, 4
  %i.ei = and i16 %i.eh, 7
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !112
  br label %_ZN3fmt3v116detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

_ZN3fmt3v116detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit: ; preds = %bb.ad, %bb.ae
  %.06.i77 = phi i32 [ 16777261, %bb.ad ], [ %i.el, %bb.ae ]
  %.0.i78 = phi i64 [ %i.ef, %bb.ad ], [ %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, %bb.ae ]
  %i.em = call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, i64 %.0.i78, i32 %.06.i77, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.ab, %_ZN3fmt3v116detail18make_write_int_argIxEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.af:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.en = load i16, ptr %i.at, align 1            ; 2 uses
  %i.eo = and i16 %i.en, 512
  %.not.i52 = icmp eq i16 %i.eo, 0
  br i1 %.not.i52, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 4, ptr %i.ep, align 16, !tbaa !111, !alias.scope !674
  %.sroa.01.0.insert.ext.i.i.i79 = zext i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139 to i128
  store i128 %.sroa.01.0.insert.ext.i.i.i79, ptr %22, align 16, !tbaa !82, !alias.scope !674
  %i.eq = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %22, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72)
  br i1 %i.eq, label %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge189

._crit_edge189:                                   ; preds = %bb.ag
  %.pre190 = load i16, ptr %i.at, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge189, %bb.af
  %i.er = phi i16 [ %.pre190, %._crit_edge189 ], [ %i.en, %bb.af ]
  %i.es = lshr i16 %i.er, 4
  %i.et = and i16 %i.es, 7
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !112
  %i.ex = call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, i32 %i.ew, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.ai:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.ey = load i16, ptr %i.at, align 1            ; 2 uses
  %i.ez = and i16 %i.ey, 512
  %.not.i54 = icmp eq i16 %i.ez, 0
  br i1 %.not.i54, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 5, ptr %i.fa, align 16, !tbaa !111, !alias.scope !675
  store i128 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.131, ptr %20, align 16, !tbaa !82, !alias.scope !675
  %i.fb = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %20, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72)
  br i1 %i.fb, label %_ZN3fmt3v116detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge186

._crit_edge186:                                   ; preds = %bb.aj
  %.pre187 = load i16, ptr %i.at, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge186, %bb.ai
  %i.fc = phi i16 [ %.pre187, %._crit_edge186 ], [ %i.ey, %bb.ai ]
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.fd = icmp slt i128 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.131, 0
  br i1 %i.fd, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fe = sub i128 0, %.sroa.0130.0..sroa.0130.0..sroa.0130.0.131
  br label %_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

bb.am:                                            ; preds = %bb.ak
  %i.ff = lshr i16 %i.fc, 4
  %i.fg = and i16 %i.ff, 7
  %i.fh = zext nneg i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !112, !noalias !676
  br label %_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit: ; preds = %bb.al, %bb.am
  %.06.i82 = phi i32 [ 16777261, %bb.al ], [ %i.fj, %bb.am ]
  %.0.i83 = phi i128 [ %i.fe, %bb.al ], [ %.sroa.0130.0..sroa.0130.0..sroa.0130.0.131, %bb.am ]
  store i128 %.0.i83, ptr %21, align 16, !tbaa !678, !alias.scope !676
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 %.06.i82, ptr %i.fk, align 16, !tbaa !679, !alias.scope !676
  %i.fl = call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"struct.fmt::v11::detail::write_int_arg.95") align 16 %21, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.aj, %_ZN3fmt3v116detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.an:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.fm = load i16, ptr %i.at, align 1            ; 2 uses
  %i.fn = and i16 %i.fm, 512
  %.not.i55 = icmp eq i16 %i.fn, 0
  br i1 %.not.i55, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 6, ptr %i.fo, align 16, !tbaa !111, !alias.scope !680
  store i128 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.131, ptr %18, align 16, !tbaa !82, !alias.scope !680
  %i.fp = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %18, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72)
  br i1 %i.fp, label %_ZN3fmt3v116detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ao
  %.pre = load i16, ptr %i.at, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.an
  %i.fq = phi i16 [ %.pre, %._crit_edge ], [ %i.fm, %bb.an ]
  %i.fr = lshr i16 %i.fq, 4
  %i.fs = and i16 %i.fr, 7
  %i.ft = zext nneg i16 %i.fs to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !112, !noalias !681
  store i128 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.131, ptr %19, align 16, !tbaa !678, !alias.scope !681
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %i.fv, ptr %i.fw, align 16, !tbaa !679, !alias.scope !681
  %i.fx = call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"struct.fmt::v11::detail::write_int_arg.95") align 16 %19, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aq:                                            ; preds = %bb.r
  %i.fy = load i8, ptr %i.as, align 8, !tbaa !142
  switch i8 %i.fy, label %bb.ar [
    i8 0, label %bb.au
    i8 2, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.fz = load i16, ptr %i.at, align 1            ; 2 uses
  %i.ga = and i16 %i.fz, 512
  %.not.i.i84 = icmp eq i16 %i.ga, 0
  br i1 %.not.i.i84, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 1, ptr %i.gb, align 16, !tbaa !111, !alias.scope !682
  %.sroa.01.0.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.144 to i128
  store i128 %.sroa.01.0.insert.ext.i.i.i.i, ptr %13, align 16, !tbaa !82, !alias.scope !682
  %i.gc = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %13, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr null)
  br i1 %i.gc, label %_ZN3fmt3v116detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.as
  %.pre.i = load i16, ptr %i.at, align 1
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i, %bb.ar
  %i.gd = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.fz, %bb.ar ]
  %i.ge = lshr i16 %i.gd, 4
  %i.gf = and i16 %i.ge, 7
  %i.gg = zext nneg i16 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v116detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !112
  %i.gj = zext i32 %i.gi to i64
  %i.gk = shl nuw i64 %i.gj, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i8 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.144 to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.gk, %.sroa.0.0.insert.ext.i.i
  %i.gl = call ptr @_ZN3fmt3v116detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr null) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit.i

_ZN3fmt3v116detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit.i: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.au:                                            ; preds = %bb.aq, %bb.aq
  %i.gm = trunc nuw i8 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.144 to i1 ; 2 uses
  %i.gn = select i1 %i.gm, ptr @.str.16, ptr @.str.17
  %i.go = select i1 %i.gm, i64 4, i64 5           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store ptr %i.gn, ptr %12, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.go, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !73
  %i.gp = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5align4typeE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS4_1ES6_EET1_S8_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS6_E_EES8_S8_SD_mmOT2_(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull align 4 dereferenceable(16) %26, i64 noundef %i.go, i64 noundef %i.go, ptr noundef nonnull align 8 dereferenceable(16) %12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.av:                                            ; preds = %bb.r
  %i.gq = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, i8 noundef signext %.sroa.0130.0..sroa.0130.0..sroa.0130.0.144, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.aw:                                            ; preds = %bb.r
  %.sroa.01.0.copyload.i25 = load i64, ptr %26, align 8 ; 2 uses
  %.sroa.2.0.copyload.i27 = load i64, ptr %i.as, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.01.0.copyload.i25, ptr %10, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %.sroa.2.0.copyload.i27, ptr %i.gr, align 8
  %i.gs = and i64 %.sroa.2.0.copyload.i27, 131072
  %.not.i86 = icmp eq i64 %i.gs, 0
  br i1 %.not.i86, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 9, ptr %i.gt, align 16, !tbaa !111, !alias.scope !683
  %.sroa.01.0.insert.ext.i.i.i.i87 = zext i32 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.142 to i128
  store i128 %.sroa.01.0.insert.ext.i.i.i.i87, ptr %11, align 16, !tbaa !82, !alias.scope !683
  %i.gu = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %11, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr %.sroa.0.0.copyload.i72)
  br i1 %i.gu, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge.i88

._crit_edge.i88:                                  ; preds = %bb.ax
  %.sroa.01.0.copyload.pre.i = load i64, ptr %10, align 8
  %.sroa.2.0.copyload.pre.i = load i64, ptr %i.gr, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i88, %bb.aw
  %.sroa.2.0.copyload.i89 = phi i64 [ %.sroa.2.0.copyload.pre.i, %._crit_edge.i88 ], [ %.sroa.2.0.copyload.i27, %bb.aw ]
  %.sroa.01.0.copyload.i90 = phi i64 [ %.sroa.01.0.copyload.pre.i, %._crit_edge.i88 ], [ %.sroa.01.0.copyload.i25, %bb.aw ]
  %i.gv = call ptr @_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEfEET0_S5_T1_NS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, float noundef %.sroa.0130.0..sroa.0130.0..sroa.0130.0.140, i64 %.sroa.01.0.copyload.i90, i64 %.sroa.2.0.copyload.i89, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.az:                                            ; preds = %bb.r
  %.sroa.01.0.copyload.i30 = load i64, ptr %26, align 8 ; 2 uses
  %.sroa.2.0.copyload.i32 = load i64, ptr %i.as, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.01.0.copyload.i30, ptr %8, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %.sroa.2.0.copyload.i32, ptr %i.gw, align 8
  %i.gx = and i64 %.sroa.2.0.copyload.i32, 131072
  %.not.i92 = icmp eq i64 %i.gx, 0
  br i1 %.not.i92, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 10, ptr %i.gy, align 16, !tbaa !111, !alias.scope !684
  %.sroa.01.0.insert.ext.i.i.i.i93 = zext i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139 to i128
  store i128 %.sroa.01.0.insert.ext.i.i.i.i93, ptr %9, align 16, !tbaa !82, !alias.scope !684
  %i.gz = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %9, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr %.sroa.0.0.copyload.i72)
  br i1 %i.gz, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge.i94

._crit_edge.i94:                                  ; preds = %bb.ba
  %.sroa.01.0.copyload.pre.i95 = load i64, ptr %8, align 8
  %.sroa.2.0.copyload.pre.i96 = load i64, ptr %i.gw, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i94, %bb.az
  %.sroa.2.0.copyload.i97 = phi i64 [ %.sroa.2.0.copyload.pre.i96, %._crit_edge.i94 ], [ %.sroa.2.0.copyload.i32, %bb.az ]
  %.sroa.01.0.copyload.i98 = phi i64 [ %.sroa.01.0.copyload.pre.i95, %._crit_edge.i94 ], [ %.sroa.01.0.copyload.i30, %bb.az ]
  %i.ha = call ptr @_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEdEET0_S5_T1_NS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, double noundef %.sroa.0130.0..sroa.0130.0..sroa.0130.0.136, i64 %.sroa.01.0.copyload.i98, i64 %.sroa.2.0.copyload.i97, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.bc:                                            ; preds = %bb.r
  %.sroa.01.0.copyload.i35 = load i64, ptr %26, align 8 ; 2 uses
  %.sroa.2.0.copyload.i37 = load i64, ptr %i.as, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.01.0.copyload.i35, ptr %6, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %.sroa.2.0.copyload.i37, ptr %i.hb, align 8
  %i.hc = and i64 %.sroa.2.0.copyload.i37, 131072
  %.not.i100 = icmp eq i64 %i.hc, 0
  br i1 %.not.i100, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 11, ptr %i.hd, align 16, !tbaa !111, !alias.scope !685
  %.sroa.01.0.insert.ext.i.i.i.i101 = zext i80 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.132.in to i128
  store i128 %.sroa.01.0.insert.ext.i.i.i.i101, ptr %7, align 16, !tbaa !82, !alias.scope !685
  %i.he = call noundef zeroext i1 @_ZN3fmt3v116detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull byval(%"class.fmt::v11::loc_value") align 16 %7, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr %.sroa.0.0.copyload.i72)
  br i1 %i.he, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit, label %._crit_edge.i102

._crit_edge.i102:                                 ; preds = %bb.bd
  %.sroa.01.0.copyload.pre.i103 = load i64, ptr %6, align 8
  %.sroa.2.0.copyload.pre.i104 = load i64, ptr %i.hb, align 8
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge.i102, %bb.bc
  %.sroa.2.0.copyload.i105 = phi i64 [ %.sroa.2.0.copyload.pre.i104, %._crit_edge.i102 ], [ %.sroa.2.0.copyload.i37, %bb.bc ]
  %.sroa.01.0.copyload.i106 = phi i64 [ %.sroa.01.0.copyload.pre.i103, %._crit_edge.i102 ], [ %.sroa.01.0.copyload.i35, %bb.bc ]
  %i.hf = call ptr @_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEeEET0_S5_T1_NS0_12format_specsENS1_10locale_refE(ptr %.sroa.0.0.copyload.i71, x86_fp80 noundef %.sroa.0130.0..sroa.0130.0..sroa.0130.0.132, i64 %.sroa.01.0.copyload.i106, i64 %.sroa.2.0.copyload.i105, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.bf:                                            ; preds = %bb.r
  %i.hg = load i8, ptr %i.as, align 8, !tbaa !142
  %i.hh = icmp eq i8 %i.hg, 3
  br i1 %i.hh, label %.preheader212, label %bb.bg

.preheader212:                                    ; preds = %bb.bf, %.preheader212
  %.03.i.i.i.i = phi i64 [ %i.hj, %.preheader212 ], [ %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, %bb.bf ]
  %.0.i.i.i.i = phi i32 [ %i.hi, %.preheader212 ], [ 0, %bb.bf ] ; 2 uses
  %i.hi = add nuw nsw i32 %.0.i.i.i.i, 1          ; 2 uses
  %i.hj = lshr i64 %.03.i.i.i.i, 4                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, label %.preheader212, !llvm.loop !7

_ZN3fmt3v116detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i: ; preds = %.preheader212
  %narrow.i.i = add nuw i32 %.0.i.i.i.i, 3
  %i.hk = zext i32 %narrow.i.i to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, ptr %5, align 8, !tbaa !148
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.hi, ptr %i.hl, align 8, !tbaa !149
  %i.hm = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5align4typeE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS6_mEET0_S8_T1_PKNS0_12format_specsEEUlS6_E_EES9_S9_RSB_mmOT2_(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull align 4 dereferenceable(16) %26, i64 noundef %i.hk, i64 noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.bg:                                            ; preds = %bb.bf
  %.not.i108 = icmp eq i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, 0
  br i1 %.not.i108, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.48) #34
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.hn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0130.0..sroa.0130.0..sroa.0130.0.137) #36
  %i.ho = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i71, ptr nonnull %.sroa.0130.0..sroa.0130.0..sroa.0130.0.137, i64 %i.hn, ptr noundef nonnull align 4 dereferenceable(16) %26) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.bj:                                            ; preds = %bb.r
  %i.hp = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i71, ptr %.sroa.0130.0..sroa.0130.0..sroa.0130.0.137, i64 %.sroa.0130.8..sroa.0130.8..sroa.0130.8.148, ptr noundef nonnull align 4 dereferenceable(16) %26) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

.preheader:                                       ; preds = %bb.r, %.preheader
  %.03.i.i.i.i109 = phi i64 [ %i.hr, %.preheader ], [ %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, %bb.r ]
  %.0.i.i.i.i110 = phi i32 [ %i.hq, %.preheader ], [ 0, %bb.r ] ; 2 uses
  %i.hq = add nuw nsw i32 %.0.i.i.i.i110, 1       ; 2 uses
  %i.hr = lshr i64 %.03.i.i.i.i109, 4             ; 2 uses
  %.not.i.i.i.i111 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i111, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS1_10locale_refE.exit, label %.preheader, !llvm.loop !7

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %.preheader
  %narrow.i.i113 = add nuw i32 %.0.i.i.i.i110, 3
  %i.hs = zext i32 %narrow.i.i113 to i64          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i64 %.sroa.0130.0..sroa.0130.0..sroa.0130.0.139, ptr %4, align 8, !tbaa !148
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.hq, ptr %i.ht, align 8, !tbaa !149
  %i.hu = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5align4typeE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS6_mEET0_S8_T1_PKNS0_12format_specsEEUlS6_E_EES9_S9_RSB_mmOT2_(ptr %.sroa.0.0.copyload.i71, ptr noundef nonnull align 4 dereferenceable(16) %26, i64 noundef %i.hs, i64 noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(12) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.r, %bb.bi, %_ZN3fmt3v116detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsE.exit.i, %bb.au, %_ZN3fmt3v116detail5writeIciTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit.i, %_ZN3fmt3v116detail13arg_formatterIcEclIiEENS0_14basic_appenderIcEET_.exit, %_ZN3fmt3v116detail5writeIcjTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, %_ZN3fmt3v116detail5writeIcxTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, %_ZN3fmt3v116detail5writeIcyTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, %_ZN3fmt3v116detail5writeIcnTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, %_ZN3fmt3v116detail5writeIcoTnNSt9enable_ifIXaaaasr11is_integralIT0_EE5valuentsr3std7is_sameIS4_bEE5valuentsr3std7is_sameIS4_T_EE5valueEiE4typeELi0EEENS0_14basic_appenderIS5_EES9_S4_RKNS0_12format_specsENS1_10locale_refE.exit, %bb.av, %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit, %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit, %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS1_10locale_refE.exit, %bb.bj, %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS1_10locale_refE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit, %bb.e
  %.0 = phi ptr [ %i.aq, %bb.e ], [ %i.ba, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail13arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit ]
  ret ptr %.0
}
end_hunk_0
