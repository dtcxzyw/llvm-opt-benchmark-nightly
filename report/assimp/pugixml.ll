inline.NumInlined: 2219
inline.NumDeleted: 425
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i: ; preds = %bb.w, %bb.v, %bb.t
  %.sink.i.i27.i.i = phi i64 [ 1, %bb.t ], [ 2, %bb.v ], [ 3, %bb.w ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.02937.i20.i.i, i64 %.sink.i.i27.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.039.i18.i.i, i64 2
  br label %bb.ab
end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i: ; preds = %bb.ao, %bb.an, %bb.al
  %.sink.i.i28.i.i = phi i64 [ 1, %bb.al ], [ 2, %bb.an ], [ 3, %bb.ao ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.02938.i20.i.i, i64 %.sink.i.i28.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 2
  br label %bb.at
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.sink.i.i59.i = phi i64 [ 4, %bb.bc ], [ 1, %bb.ay ], [ 2, %bb.ba ], [ 3, %bb.bb ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.01119.i19.i.i, i64 %.sink.i.i59.i ; 2 uses
  %.1.i21.i.i = getelementptr inbounds nuw i8, ptr %.020.i18.i.i, i64 4
  %.114.i22.i.i = add nsw i64 %.01318.i20.i.i, -1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %.sink.i.i79.i = phi i64 [ 4, %bb.bj ], [ 1, %bb.bf ], [ 2, %bb.bh ], [ 3, %bb.bi ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.01119.i19.i76.i, i64 %.sink.i.i79.i ; 2 uses
  %.1.i21.i80.i = getelementptr inbounds nuw i8, ptr %.020.i18.i75.i, i64 4
  %.114.i22.i81.i = add nsw i64 %.01318.i20.i77.i, -1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
.thread361.i.i:                                   ; preds = %bb.ia, %thread-pre-split.i.i
  %i.re = phi i8 [ %.pr365.i.i, %thread-pre-split.i.i ], [ %i.ajy, %bb.ia ] ; 3 uses
  %.1216.i.i = phi ptr [ %.0215.ph.i.i, %thread-pre-split.i.i ], [ %.3218.i.i, %bb.ia ]
  %.1198.i.i = phi ptr [ %.1198.ph.i.i, %thread-pre-split.i.i ], [ %i.ajg, %bb.ia ] ; 30 uses
  %i.rf = zext i8 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !noalias !62
end_hunk_4
begin_hunk_5_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %i.zs = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  %i.zt = load i8, ptr %i.zs, align 1, !noalias !62
  %i.zu = icmp eq i8 %i.zt, 45
  br i1 %i.zu, label %bb.en, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1033

bb.en:                                            ; preds = %bb.em
  %i.zv = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 3 ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %i.add = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  %i.ade = load i8, ptr %i.add, align 1, !noalias !62
  %i.adf = icmp eq i8 %i.ade, 67
  br i1 %i.adf, label %bb.fi, label %.split.loop.exit.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.adg = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 3
  %i.adh = load i8, ptr %i.adg, align 1, !noalias !62
  %i.adi = icmp eq i8 %i.adh, 68
  br i1 %i.adi, label %bb.fj, label %.split.loop.exit.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.adj = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 4
  %i.adk = load i8, ptr %i.adj, align 1, !noalias !62
  %i.adl = icmp eq i8 %i.adk, 65
  br i1 %i.adl, label %bb.fk, label %.split.loop.exit.i.i

bb.fk:                                            ; preds = %bb.fj
  %i.adm = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 5
  %i.adn = load i8, ptr %i.adm, align 1, !noalias !62
  %i.ado = icmp eq i8 %i.adn, 84
  br i1 %i.ado, label %bb.fl, label %.split.loop.exit.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.adp = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 6
  %i.adq = load i8, ptr %i.adp, align 1, !noalias !62
  %i.adr = icmp eq i8 %i.adq, 65
  br i1 %i.adr, label %bb.fm, label %.split.loop.exit.i.i

bb.fm:                                            ; preds = %bb.fl
  %i.ads = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 7
  %i.adt = load i8, ptr %i.ads, align 1, !noalias !62
  %i.adu = icmp eq i8 %i.adt, 91
  br i1 %i.adu, label %bb.fn, label %.split.loop.exit.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.adv = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 8 ; 7 uses
end_hunk_6
begin_hunk_7_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %i.afl = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 %i.afk
  br label %.outer.i.i.backedge

.split.loop.exit.i.i:                             ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh
  %.pn.i.i = phi i64 [ 4, %bb.fj ], [ 3, %bb.fi ], [ 7, %bb.fm ], [ 6, %bb.fl ], [ 5, %bb.fk ], [ 2, %bb.fh ]
  %.4.i.i.i = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 %.pn.i.i
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.ga:                                            ; preds = %bb.el
  %i.afm = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  %i.afn = load i8, ptr %i.afm, align 1, !noalias !62
end_hunk_7
begin_hunk_8_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %i.agf = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 24
  %i.agg = load ptr, ptr %i.agf, align 8, !noalias !62
  %.not.i303.i.i = icmp eq ptr %i.agg, null
  br i1 %.not.i303.i.i, label %bb.gh, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1030

bb.gh:                                            ; preds = %bb.gg
  %i.agh = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 8
end_hunk_8
begin_hunk_9_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %spec.select1124 = select i1 %.not263.i.i, i32 0, i32 14
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1030: ; preds = %bb.gg
  %i.akb = getelementptr inbounds i8, ptr %.1198.i.i, i64 -1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1033: ; preds = %bb.em
  %i.akc = getelementptr inbounds nuw i8, ptr %.1198.i.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i: ; preds = %.noexc61, %.noexc59, %bb.hh, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %.noexc58, %.noexc57, %bb.ef, %bb.ed, %.thread122.i.i.i, %.noexc55, %bb.eb, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dk, %bb.di, %bb.dg, %bb.df, %bb.de, %bb.dc, %.noexc52, %.thread46.thread.i.i, %.critedge.i.i39.i, %bb.gj, %.preheader185.split.us.i.i.i, %.preheader185.split.i.i.i, %.preheader184.split.us.i.i.i, %.preheader184.split.i.i.i, %.preheader.split.us.i312.i.i, %.preheader.split.i313.i.i, %.preheader131.split.us.i.i.i, %.preheader131.split.i.i.i, %.preheader.split.us.i.i.i, %.preheader.split.i.i.i, %bb.cy, %bb.cw, %.loopexit1073.i.i, %.noexc53, %bb.dl, %bb.gy, %bb.gm, %bb.hb, %.loopexit.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1033, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1030, %bb.hk, %.thread182.i.i.i, %bb.hj, %.split.loop.exit.i.i, %bb.fu, %bb.fc, %bb.dp, %bb.do, %bb.cx
  %.sroa.11.2.i = phi ptr [ %.1125.us.i.i.i, %.preheader185.split.us.i.i.i ], [ %i.akb, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1030 ], [ %i.zq, %bb.hj ], [ %.5.us.i.i.i, %.preheader.split.us.i.i.i ], [ %i.zq, %.thread182.i.i.i ], [ %i.acr, %bb.fc ], [ %.13.i.i, %bb.do ], [ %.0124.us.i.i.i, %.preheader.split.us.i312.i.i ], [ %i.vo, %bb.dp ], [ %.2.us.i.i.i, %.preheader184.split.us.i.i.i ], [ %.017.i.i.i, %bb.gm ], [ %.5.i.i.i, %.preheader.split.i.i.i ], [ %.0124.i.i.i, %.preheader.split.i313.i.i ], [ %i.akc, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1033 ], [ %.10.i.i, %.loopexit1073.i.i ], [ %.2.i310.i.i, %.preheader184.split.i.i.i ], [ %i.aeq, %bb.fu ], [ %i.ut, %bb.cx ], [ %.042.i.i.i, %.critedge.i.i39.i ], [ %.3.i.i43.i, %bb.hb ], [ %.4.i.i.i, %.split.loop.exit.i.i ], [ %spec.select, %.loopexit.i.i ], [ %i.vo, %bb.dl ], [ %.1125.i.i.i, %.preheader185.split.i.i.i ], [ %.284.us.i.i.i, %.preheader131.split.us.i.i.i ], [ %.1198.i.i, %bb.hk ], [ %.2.i.i40.i, %bb.gy ], [ %.284.i.i.i, %.preheader131.split.i.i.i ], [ %i.ur, %bb.cy ], [ %.6203.i.i, %.noexc53 ], [ %.11.i.i, %bb.cw ], [ %.031.i.i, %.thread46.thread.i.i ], [ %.031.i.i, %bb.gj ], [ %i.zq, %bb.gb ], [ %i.zq, %bb.ga ], [ %.14.i.i, %bb.dt ], [ %i.zq, %bb.ge ], [ %i.sn, %bb.df ], [ %.ptr97.i.i.i, %bb.du ], [ %i.xv, %bb.ef ], [ %i.zq, %bb.gf ], [ %i.ajg, %.noexc61 ], [ %.082.ptr.i.i.i.le, %bb.eb ], [ %.082.ptr.i.i.i.le, %.thread122.i.i.i ], [ %i.xv, %bb.ed ], [ %.082.ptr.i.i.i.le, %bb.dv ], [ %.082.ptr.i.i.i.le, %.noexc55 ], [ %i.zv, %.noexc57 ], [ %i.adv, %.noexc58 ], [ %.5.i306.i.i, %.noexc59 ], [ %.3200.ph.i.i, %bb.di ], [ %.6203.i.i, %bb.de ], [ %i.sn, %bb.dg ], [ %i.vo, %bb.dk ], [ %i.sv, %bb.dc ], [ %i.zq, %bb.gd ], [ %i.zq, %bb.gc ], [ %.031.i.i, %bb.hh ], [ %.1198.i.i, %.noexc52 ], [ %.14.i.i, %bb.ds ] ; 2 uses
  %.sroa.57.2.i = phi i32 [ 8, %.preheader185.split.us.i.i.i ], [ 9, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1030 ], [ 7, %bb.hj ], [ 6, %.preheader.split.us.i.i.i ], [ %spec.select66.i, %.thread182.i.i.i ], [ 7, %bb.fc ], [ 13, %bb.do ], [ 7, %.preheader.split.us.i312.i.i ], [ 14, %bb.dp ], [ 8, %.preheader184.split.us.i.i.i ], [ 9, %bb.gm ], [ 6, %.preheader.split.i.i.i ], [ 7, %.preheader.split.i313.i.i ], [ 7, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit796.split.loop.exit1033 ], [ 12, %.loopexit1073.i.i ], [ 8, %.preheader184.split.i.i.i ], [ 8, %bb.fu ], [ 12, %bb.cx ], [ 9, %.thread46.thread.i.i ], [ 9, %bb.hb ], [ 8, %.split.loop.exit.i.i ], [ %spec.select1124, %.loopexit.i.i ], [ 14, %bb.dl ], [ 8, %.preheader185.split.i.i.i ], [ 6, %.preheader131.split.us.i.i.i ], [ %spec.select67.i, %bb.hk ], [ 9, %bb.gy ], [ 6, %.preheader131.split.i.i.i ], [ 12, %bb.cy ], [ 3, %.noexc53 ], [ 12, %bb.cw ], [ 9, %bb.gj ], [ 9, %.critedge.i.i39.i ], [ 5, %bb.gb ], [ 5, %bb.ga ], [ 13, %bb.dt ], [ 5, %bb.ge ], [ 11, %bb.df ], [ 6, %bb.du ], [ 6, %bb.ef ], [ 5, %bb.gf ], [ 3, %.noexc61 ], [ 6, %bb.eb ], [ 3, %.thread122.i.i.i ], [ 6, %bb.ed ], [ 6, %bb.dv ], [ 3, %.noexc55 ], [ 3, %.noexc57 ], [ 3, %.noexc58 ], [ 3, %.noexc59 ], [ 11, %bb.di ], [ 11, %bb.de ], [ 11, %bb.dg ], [ 14, %bb.dk ], [ 11, %bb.dc ], [ 5, %bb.gd ], [ 5, %bb.gc ], [ 9, %bb.hh ], [ 3, %.noexc52 ], [ 13, %bb.ds ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #52, !noalias !62
  %.not31.i = icmp eq ptr %.sroa.11.2.i, null
  %i.akd = ptrtoint ptr %.sroa.11.2.i to i64
end_hunk_9
begin_hunk_10_@_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 4, %bb.h ], [ 1, %bb.d ], [ 2, %bb.f ], [ 3, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.01119.i.i.i16.i, i64 %.sink.i.i.i.i
  %.1.i.i.i18.i = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 4
  %.114.i.i.i19.i = add i64 %.01318.i.i.i17.i, -1 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4pugi4impl12_GLOBAL__N_112as_utf8_implB5cxx11EPKwm:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 4, %bb.g ], [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01119.i.i.i12, i64 %.sink.i.i.i
  %.1.i.i.i14 = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 4
  %.114.i.i.i15 = add i64 %.01318.i.i.i13, -1     ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE:bb.a
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.e, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.c, %bb.b
  %.sink = phi i64 [ 16, %bb.c ], [ 16, %bb.b ], [ 8, %tailrecurse ]
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.f, align 8
  br label %tailrecurse
end_hunk_12
begin_hunk_13_@_ZN4pugi4impl12_GLOBAL__N_114strconv_escapeEPcRNS1_3gapE:bb.a
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3anyEPhj.exit

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3anyEPhj.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  %.sink.i = phi i64 [ 4, %bb.o ], [ 1, %bb.k ], [ 2, %bb.m ], [ 3, %bb.n ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i ; 2 uses
  %i.bp = ptrtoint ptr %.478 to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
end_hunk_13
