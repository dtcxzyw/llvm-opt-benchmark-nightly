inline.NumInlined: 1084
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapEB10_:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !34, !noundef !4 ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, 4294967295
  %i.hu = shl nuw i64 %i.hs, 32
  %.sroa.09.0.insert.insert.i.i92.i.i = select i1 %i.ht, i64 513, i64 %i.hu ; 2 uses
  %i.hv = trunc i64 %.sroa.09.0.insert.insert.i.i92.i.i to i1
  br i1 %i.hv, label %bb.ca, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i, !prof !14

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36
  br label %.invoke131.i.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i: ; preds = %bb.bz
  %.sroa.6.0.extract.shift.i.i.i94.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i92.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i95.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i94.i.i to i32
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc96.i.i
  %i.hw = load i32, ptr %i.hq, align 8, !noalias !34, !noundef !4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i
  %.sroa.02.0.i90.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i95.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i ], [ %i.hw, %bb.cb ]
  %i.hx = xor i32 %.sroa.0.0.i89.i.i, -1
  %.not.i91.i.i = icmp ugt i32 %.sroa.02.0.i90.i.i, %i.hx
  br i1 %.not.i91.i.i, label %.invoke.i.i, label %bb.cd, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %.not42.i.i = icmp eq i32 %.sroa.0.0.i89.i.i, -1
  br i1 %.not42.i.i, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.as unwind label %.loopexit.split-lp394.i, !noalias !34

bb.cf:                                            ; preds = %bb.cd
  %i.hy = add nuw i32 %.sroa.0.0.i89.i.i, 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cn, %bb.cf
  %.sroa.3.0.i.i = phi i32 [ %.sroa.0.0.i89.i.i, %bb.cf ], [ %.sroa.0.0.i100.i.i, %bb.cn ]
  %.sroa.517.0.i.i = phi i32 [ %i.hy, %bb.cf ], [ %i.io, %bb.cn ]
  %.sroa.016.sroa.0.0.i.i = phi i32 [ 4, %bb.cf ], [ 3, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36
  br label %bb.cr

bb.ch:                                            ; preds = %bb.bq
  %i.hz = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.cl, align 8, !alias.scope !33, !noalias !34
  br label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr null, ptr %i.cl, align 8, !alias.scope !33, !noalias !34
  %i.ia = load i8, ptr %i.fo, align 4, !range !15, !noalias !34, !noundef !4
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.cj, label %bb.ci, !prof !14

bb.ci:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.id = load i32, ptr %i.ic, align 8, !noalias !34, !noundef !4
  br label %.noexc107.i.i

bb.cj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.ie = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fh)
          to label %.noexc107.i.i unwind label %.loopexit393.i, !noalias !34

.noexc107.i.i:                                    ; preds = %bb.cj, %bb.ci
  %.sroa.0.0.i100.i.i = phi i32 [ %i.id, %bb.ci ], [ %i.ie, %bb.cj ] ; 3 uses
  %i.if = load i64, ptr %i.fh, align 8, !range !16, !noalias !34, !noundef !4
  %i.ig = trunc nuw i64 %i.if to i1
  %i.ih = load ptr, ptr %i.fv, align 8, !noalias !34, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.ig, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %.noexc107.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !noalias !34, !noundef !4 ; 2 uses
  %i.ik = icmp ugt i64 %i.ij, 4294967295
  %i.il = shl nuw i64 %i.ij, 32
  %.sroa.09.0.insert.insert.i.i103.i.i = select i1 %i.ik, i64 513, i64 %i.il ; 2 uses
  %i.im = trunc i64 %.sroa.09.0.insert.insert.i.i103.i.i to i1
  br i1 %i.im, label %bb.cl, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i, !prof !14

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36
  br label %.invoke131.i.i

.invoke131.i.i:                                   ; preds = %bb.cl, %bb.ca, %bb.ba
  %.sink.i.i = phi ptr [ %i.f, %bb.ba ], [ %i.e, %bb.ca ], [ %i.d, %bb.cl ] ; 2 uses
  store i8 2, ptr %.sink.i.i, align 1, !noalias !36
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %.sink.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.cont132.i.i unwind label %.loopexit.split-lp394.i, !noalias !34

.cont132.i.i:                                     ; preds = %.invoke131.i.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i: ; preds = %bb.ck
  %.sroa.6.0.extract.shift.i.i.i105.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i103.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i106.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i105.i.i to i32
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc107.i.i
  %i.in = load i32, ptr %i.ih, align 8, !noalias !34, !noundef !4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i
  %.sroa.02.0.i101.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i106.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i ], [ %i.in, %bb.cm ]
  %i.io = add i32 %.sroa.02.0.i101.i.i, %.sroa.0.0.i100.i.i ; 2 uses
  %.not.i102.i.i = icmp ugt i32 %.sroa.0.0.i100.i.i, %i.io
  br i1 %.not.i102.i.i, label %.invoke.i.i, label %bb.cg, !prof !14

.invoke.i.i:                                      ; preds = %bb.cn, %bb.cc, %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp394.i, !noalias !34

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread310.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1188.invoke.i, %.invoke1197.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit385.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1189.i.a
  %lpad.loopexit.split-lp386.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit392.i:                                   ; preds = %bb.av, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.ip = load i64, ptr %i.ct, align 8, !noalias !27, !noundef !4 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %._crit_edge.i, label %.lr.ph.i

.body136.i:                                       ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gp, %bb.gn, %bb.gd, %bb.gc, %bb.gb, %bb.fm, %bb.fl, %bb.fk, %bb.fd, %bb.fc, %bb.fb, %bb.ee, %bb.ds, %bb.dr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit374.i
  %.pn86.i = phi { ptr, i32 } [ %i.pf, %bb.fl ], [ %.pn.i, %bb.gc ], [ %i.md, %bb.ee ], [ %i.ov, %bb.fc ], [ %i.ra, %bb.gp ], [ %i.qz, %bb.gn ], [ %lpad.phi405.i, %bb.dr ], [ %i.ry, %bb.gx ], [ %lpad.phi405.i, %bb.ds ], [ %i.ov, %bb.fd ], [ %i.ov, %bb.fb ], [ %i.pf, %bb.fm ], [ %i.pf, %bb.fk ], [ %.pn.i, %bb.gd ], [ %.pn.i, %bb.gb ], [ %i.ry, %bb.gy ], [ %i.ry, %bb.gw ], [ %lpad.loopexit375.i, %.loopexit374.i ], [ %lpad.loopexit381.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit398.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp399.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 4 uses
  %.val96.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !27, !noundef !4 ; 3 uses
  %.val97.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !27 ; 6 uses
  %i.ir = add nsw i32 %.val96.i, -3
  %i.is = icmp samesign ugt i32 %.val96.i, 2
  %narrow.i = select i1 %i.is, i32 %i.ir, i32 2
  switch i32 %narrow.i, label %bb.co [
    i32 0, label %bb.cp
    i32 1, label %bb.cq
  ]

bb.co:                                            ; preds = %.body136.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val96.i, ptr %.val97.i)
          to label %.thread.i unwind label %bb.fh

bb.cp:                                            ; preds = %.body136.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !29
  %i.it = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !noalias !64, !noundef !4
  %i.iv = add i32 %i.iu, -1                       ; 2 uses
  store i32 %i.iv, ptr %i.it, align 4, !noalias !64
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.invoke, label %.thread.i

bb.cq:                                            ; preds = %.body136.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !29
  %i.ix = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !noalias !67, !noundef !4
  %i.iz = add i32 %i.iy, -1                       ; 2 uses
  store i32 %i.iz, ptr %i.ix, align 4, !noalias !67
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %.invoke, label %.thread.i

.invoke:                                          ; preds = %bb.cq, %bb.cp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val97.i) #30
          to label %.thread.i unwind label %bb.fh

.loopexit374.i:                                   ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit156.i, %.preheader.i
  %lpad.loopexit375.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader379.i
  %lpad.loopexit381.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit172.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit158.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1190.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit139.i, %bb.eb, %bb.dv, %bb.di, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charB1l_.exit.thread.invoke.i, %.invoke1191.i, %.invoke1195.i, %.invoke1193.i
  %lpad.loopexit.split-lp399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fe, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15247.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 10 uses
  %.sroa.13.1.ph.i = phi i64 [ %i.ff, %bb.ar ], [ %.sroa.13.0.copyload245.i, %bb.au ], [ 0, %bb.cg ]
  %.sroa.11241.1.ph.i = phi ptr [ %i.do, %bb.ar ], [ %.sroa.11241.0.copyload243.i, %bb.au ], [ %i.fh, %bb.cg ]
  %i.jb = phi i32 [ %.sroa.11.0.i, %bb.ar ], [ %.sroa.11.0.copyload240.i, %bb.au ], [ %.sroa.11.0.i, %bb.cg ] ; 5 uses
  %i.jc = phi i32 [ 4, %bb.ar ], [ %i.dv, %bb.au ], [ %.sroa.016.sroa.0.0.i.i, %bb.cg ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !27
  store i32 %i.jc, ptr %i.ag, align 8, !noalias !27
  store i32 %i.jb, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !27
  store ptr %.sroa.11241.1.ph.i, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !27
  store i64 %.sroa.13.1.ph.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false), !noalias !27
  %i.jd = icmp samesign ugt i32 %i.jc, 2
  br i1 %i.jd, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.je = icmp eq i32 %i.jc, 1
  br i1 %i.je, label %bb.hc, label %bb.hd

bb.ct:                                            ; preds = %bb.cr
  %i.jf = invoke fastcc noundef i16 @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE4kindB1l_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29 ; 5 uses

bb.cu:                                            ; preds = %bb.ct
  switch i16 %i.jf, label %bb.er [
    i16 150, label %bb.cv
    i16 153, label %bb.es
    i16 53, label %bb.cw
    i16 2, label %bb.cw
    i16 3, label %bb.cw
    i16 4, label %bb.cw
    i16 5, label %bb.cw
    i16 6, label %bb.cw
    i16 7, label %bb.cw
    i16 8, label %bb.cw
    i16 9, label %bb.cw
    i16 10, label %bb.cw
    i16 11, label %bb.cw
    i16 12, label %bb.cw
    i16 13, label %bb.cw
    i16 14, label %bb.cw
    i16 15, label %bb.cw
    i16 16, label %bb.cw
    i16 17, label %bb.cw
    i16 18, label %bb.cw
    i16 19, label %bb.cw
    i16 20, label %bb.cw
    i16 21, label %bb.cw
    i16 22, label %bb.cw
    i16 23, label %bb.cw
    i16 25, label %bb.cw
    i16 26, label %bb.cw
    i16 27, label %bb.cw
    i16 28, label %bb.cw
    i16 29, label %bb.cw
    i16 30, label %bb.cw
    i16 31, label %bb.cw
    i16 32, label %bb.cw
    i16 33, label %bb.cw
    i16 34, label %bb.cw
    i16 35, label %bb.cw
    i16 36, label %bb.cw
    i16 37, label %bb.cw
    i16 38, label %bb.cw
    i16 39, label %bb.cw
    i16 40, label %bb.cw
    i16 41, label %bb.cw
    i16 42, label %bb.cw
    i16 43, label %bb.cw
    i16 44, label %bb.cw
    i16 45, label %bb.cw
    i16 46, label %bb.cw
    i16 47, label %bb.cw
    i16 48, label %bb.cw
    i16 49, label %bb.cw
    i16 50, label %bb.cw
    i16 51, label %bb.cw
    i16 52, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit.i: ; preds = %bb.cv
  %.val98.i = load i8, ptr %i.da, align 4, !alias.scope !24, !noalias !29
  %i.jg = invoke noundef nonnull align 8 ptr @_RNvMs5_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynToken5token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

.noexc114.i:                                      ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit.i
  %i.jh = trunc nuw i8 %.val98.i to i1
  invoke void @_RNvCslVwgvvnzcNb_13syntax_bridge19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jg, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.af, i1 noundef zeroext %i.jh, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentBS_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentBS_.exit.i: ; preds = %.noexc114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !27
  br label %.loopexit.i

bb.cw:                                            ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  %i.ji = load ptr, ptr %i.cs, align 8, !noalias !27, !nonnull !4, !noundef !4 ; 2 uses
  %i.jj = load i64, ptr %i.ct, align 8, !noalias !27, !noundef !4 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %.loopexit378.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %.idx372.i = shl nuw nsw i64 %i.jj, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.idx372.i
  %i.jm = load i64, ptr %i.cu, align 8, !range !70, !noalias !27, !noundef !4
  %i.jn = load i64, ptr %i.cv, align 8, !noalias !27, !noundef !4 ; 4 uses
  %i.jo = load ptr, ptr %i.cw, align 8, !noalias !27, !nonnull !4 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv969.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next970.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i ] ; 2 uses
  %i.jp = phi ptr [ %i.jl, %.lr.ph.i.preheader.i ], [ %i.jq, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i ]
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 3 uses
  %.val.i116.i = load i64, ptr %i.jq, align 8, !noalias !71, !noundef !4 ; 7 uses
  %i.jr = icmp ult i64 %.val.i116.i, %i.jn        ; 3 uses
  switch i64 %i.jm, label %.lr.ph.i.i.unreachabledefault [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
    i64 2, label %bb.cz
  ]

.lr.ph.i.i.unreachabledefault:                    ; preds = %.lr.ph.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc208.i, %.noexc118.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.da, label %.invoke1193.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.db, label %.invoke1193.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.dc, label %.invoke1193.i

bb.da:                                            ; preds = %bb.cx
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.val.i116.i ; 2 uses
  %i.jt = load i8, ptr %i.js, align 8, !range !75, !noalias !29, !noundef !4
  %i.ju = icmp eq i8 %i.jt, 3
  br i1 %i.ju, label %.noexc118.i, label %.invoke1195.i, !prof !76

.invoke1193.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.jv = phi i64 [ %.val.i116.i, %bb.cz ], [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cy ], [ %.val.i202.i, %bb.hh ], [ %.val.i202.i, %bb.hi ], [ %.val.i202.i, %bb.hj ]
  %i.jw = phi i64 [ %i.jn, %bb.cz ], [ %i.jn, %bb.cx ], [ %i.jn, %bb.cy ], [ %i.st, %bb.hh ], [ %i.st, %bb.hi ], [ %i.st, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jv, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1194.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1194.i:                                      ; preds = %.invoke1193.i
  unreachable

.invoke1195.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1196.i:                                      ; preds = %.invoke1195.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %.val.i116.i ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 8, !range !75, !noalias !29, !noundef !4
  %i.jz = icmp eq i8 %i.jy, 3
  br i1 %i.jz, label %.noexc118.i, label %.invoke1195.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.ka = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %.val.i116.i ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 8, !range !75, !noalias !29, !noundef !4
  %i.kc = icmp eq i8 %i.kb, 3
  br i1 %i.kc, label %.noexc118.i, label %.invoke1195.i, !prof !76

.noexc118.i:                                      ; preds = %bb.dc, %bb.db, %bb.da
  %.sink.i219.i = phi ptr [ %i.jx, %bb.db ], [ %i.ka, %bb.dc ], [ %i.js, %bb.da ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink.i219.i, i64 1
  %.sroa.0.0.i220.i = load i8, ptr %i.kd, align 1, !range !75, !noalias !29, !noundef !4
  switch i8 %.sroa.0.0.i220.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B17_.exit.i.i.i.i.i
    i8 1, label %bb.dd
    i8 2, label %bb.de
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i
  ]

bb.dd:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B17_.exit.i.i.i.i.i

bb.de:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B17_.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B17_.exit.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %.noexc118.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.de ], [ 8, %bb.dd ], [ 6, %.noexc118.i ]
  %i.ke = icmp eq i16 %i.jf, %.sink1.i.i.i.i.i.i
  br i1 %i.ke, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B17_.exit.i.i.i.i.i, %.noexc118.i
  %i.kf = icmp eq ptr %i.ji, %i.jq
  %indvars.iv.next970.i = add nuw nsw i64 %indvars.iv969.i, 1
  br i1 %i.kf, label %.loopexit378.i, label %.lr.ph.i.i

.loopexit378.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i, %bb.cw
end_hunk_0
begin_hunk_1_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapEB10_:bb.a
    i16 149, label %bb.fi
    i16 154, label %bb.ft
  ]

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit158.i: ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !27
  %.val105.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !27, !noundef !4
  %.val106.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !27
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textB1l_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, i32 %.val105.i, ptr %.val106.i)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.ew:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit158.i
  %i.ok = load i8, ptr %i.v, align 8, !range !106, !noalias !27, !noundef !4 ; 2 uses
  %i.ol = icmp samesign ugt i8 %i.ok, 23
  %i.om = zext nneg i8 %i.ok to i64               ; 2 uses
  %i.on = add nsw i64 %i.om, -23
  %i.oo = select i1 %i.ol, i64 %i.on, i64 0
  switch i64 %i.oo, label %bb.ex [
    i64 0, label %bb.fa
    i64 1, label %bb.ey
    i64 2, label %bb.ez
  ]

bb.ex:                                            ; preds = %bb.gs, %bb.fx, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i, %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.op = load ptr, ptr %i.di, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.oq = load i64, ptr %i.dj, align 8, !noalias !27, !noundef !4
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ew
  %i.or = load ptr, ptr %i.di, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.os = load i64, ptr %i.dj, align 8, !noalias !27, !noundef !4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ew
  %.sroa.032.0.i = phi ptr [ %i.ot, %bb.ez ], [ %i.op, %bb.ey ], [ %i.dk, %bb.ew ]
  %.sroa.433.0.i = phi i64 [ %i.os, %bb.ez ], [ %i.oq, %bb.ey ], [ %i.om, %bb.ew ]
  %i.ou = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.032.0.i, i64 noundef %.sroa.433.0.i)
          to label %bb.fe unwind label %bb.fb, !noalias !29

bb.fb:                                            ; preds = %bb.fa
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.ow = load i8, ptr %i.v, align 8, !range !106, !alias.scope !113, !noalias !27, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.ow, 25
  br i1 %switch.i.i.i, label %.body136.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.ox = load ptr, ptr %i.di, align 8, !alias.scope !120, !noalias !27, !nonnull !4, !noundef !4
  %i.oy = atomicrmw sub ptr %i.ox, i64 1 release, align 8, !noalias !121
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %bb.fd, label %.body136.i

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.di) #30
          to label %.body136.i unwind label %bb.fh, !noalias !29

bb.fe:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.42.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !27
  store ptr %i.ou, ptr %i.cr, align 8, !noalias !27
  store i8 0, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !27
  store i32 2, ptr %i.aa, align 8, !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.pa = load i8, ptr %i.v, align 8, !range !106, !alias.scope !128, !noalias !27, !noundef !4
  %switch.i.i160.i = icmp samesign ult i8 %i.pa, 25
  br i1 %switch.i.i160.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.pb = load ptr, ptr %i.di, align 8, !alias.scope !135, !noalias !27, !nonnull !4, !noundef !4
  %i.pc = atomicrmw sub ptr %i.pb, i64 1 release, align 8, !noalias !136
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.fg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.di) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i: ; preds = %bb.fg, %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !27
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fh:                                            ; preds = %.invoke, %bb.co, %.thread.i, %bb.gy, %bb.gp, %bb.gk, %bb.gd, %bb.fm, %bb.fd
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !29
  unreachable

bb.fi:                                            ; preds = %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !27
  %.val103.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !27, !noundef !4
  %.val104.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !27
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textB1l_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, i32 %.val103.i, ptr %.val104.i)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i unwind label %bb.fk, !noalias !29

bb.fk:                                            ; preds = %bb.fp, %bb.fj
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.pg = load i8, ptr %i.u, align 8, !range !106, !alias.scope !143, !noalias !27, !noundef !4
  %switch.i.i165.i = icmp samesign ult i8 %i.pg, 25
  br i1 %switch.i.i165.i, label %.body136.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ph = load ptr, ptr %i.df, align 8, !alias.scope !150, !noalias !27, !nonnull !4, !noundef !4
  %i.pi = atomicrmw sub ptr %i.ph, i64 1 release, align 8, !noalias !151
  %i.pj = icmp eq i64 %i.pi, 1
  br i1 %i.pj, label %bb.fm, label %.body136.i

bb.fm:                                            ; preds = %bb.fl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.df) #30
          to label %.body136.i unwind label %bb.fh, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i: ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !27
  %i.pk = load i8, ptr %i.u, align 8, !range !106, !noalias !27, !noundef !4 ; 2 uses
  %i.pl = icmp samesign ugt i8 %i.pk, 23
  %i.pm = zext nneg i8 %i.pk to i64               ; 2 uses
  %i.pn = add nsw i64 %i.pm, -23
  %i.po = select i1 %i.pl, i64 %i.pn, i64 0
  switch i64 %i.po, label %bb.ex [
    i64 0, label %bb.fp
    i64 1, label %bb.fn
    i64 2, label %bb.fo
  ]

bb.fn:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i
  %i.pp = load ptr, ptr %i.df, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.pq = load i64, ptr %i.dg, align 8, !noalias !27, !noundef !4
  br label %bb.fp

bb.fo:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i
  %i.pr = load ptr, ptr %i.df, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.ps = load i64, ptr %i.dg, align 8, !noalias !27, !noundef !4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i
  %.sroa.034.0.i = phi ptr [ %i.pt, %bb.fo ], [ %i.pp, %bb.fn ], [ %i.dh, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i ]
  %.sroa.435.0.i = phi i64 [ %i.ps, %bb.fo ], [ %i.pq, %bb.fn ], [ %i.pm, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit164.i ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.034.0.i, i64 noundef %.sroa.435.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.t)
          to label %bb.fq unwind label %bb.fk, !noalias !29

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !27
  store i32 0, ptr %i.aa, align 8, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.pu = load i8, ptr %i.u, align 8, !range !106, !alias.scope !158, !noalias !27, !noundef !4
  %switch.i.i168.i = icmp samesign ult i8 %i.pu, 25
  br i1 %switch.i.i168.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.pv = load ptr, ptr %i.df, align 8, !alias.scope !165, !noalias !27, !nonnull !4, !noundef !4
  %i.pw = atomicrmw sub ptr %i.pv, i64 1 release, align 8, !noalias !166
  %i.px = icmp eq i64 %i.pw, 1
  br i1 %i.px, label %bb.fs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i

bb.fs:                                            ; preds = %bb.fr
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.df) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i: ; preds = %bb.fs, %bb.fr, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !27
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.ft:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !27
  %i.py = add i32 %.sroa.15247.1.ph.i, 1          ; 3 uses
  %.not81.i = icmp eq i32 %.sroa.15247.1.ph.i, -1
  br i1 %.not81.i, label %bb.fu, label %bb.fv, !prof !14

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

bb.fv:                                            ; preds = %bb.ft
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %i.py)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit172.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit172.i: ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.437.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !27
  store i32 39, ptr %i.db, align 4, !noalias !27
  store i8 1, ptr %.sroa.538.0..sroa_idx.i, align 4, !noalias !27
  store i32 1, ptr %i.r, align 8, !noalias !27
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.fw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7280.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !27
  %.val101.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !27, !noundef !4
  %.val102.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !27
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textB1l_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, i32 %.val101.i, ptr %.val102.i)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.fx:                                            ; preds = %bb.fw
  %i.pz = load i8, ptr %i.p, align 8, !range !106, !noalias !27, !noundef !4 ; 2 uses
  %i.qa = icmp samesign ugt i8 %i.pz, 23
  %i.qb = zext nneg i8 %i.pz to i64               ; 2 uses
  %i.qc = add nsw i64 %i.qb, -23
  %i.qd = select i1 %i.qa, i64 %i.qc, i64 0
  switch i64 %i.qd, label %bb.ex [
    i64 0, label %bb.ga
    i64 1, label %bb.fy
    i64 2, label %bb.fz
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.qe = load ptr, ptr %i.dc, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.qf = load i64, ptr %i.dd, align 8, !noalias !27, !noundef !4
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.qg = load ptr, ptr %i.dc, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.qh = load i64, ptr %i.dd, align 8, !noalias !27, !noundef !4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx
  %.sroa.044.0.i = phi ptr [ %i.qi, %bb.fz ], [ %i.qe, %bb.fy ], [ %i.de, %bb.fx ] ; 3 uses
  %.sroa.647.0.i = phi i64 [ %i.qh, %bb.fz ], [ %i.qf, %bb.fy ], [ %i.qb, %bb.fx ] ; 5 uses
  %i.qj = icmp ult i64 %.sroa.647.0.i, 2
  br i1 %i.qj, label %.split.i, label %bb.ge

.split.i:                                         ; preds = %bb.ga
  %i.qk = icmp eq i64 %.sroa.647.0.i, 1
  br i1 %i.qk, label %bb.gf, label %bb.gg, !prof !76

bb.gb:                                            ; preds = %bb.gk, %.loopexit.split-lp407.i, %.loopexit406.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi415.i, %bb.gk ], [ %lpad.loopexit408.i, %.loopexit406.i ], [ %lpad.loopexit.split-lp409.i, %.loopexit.split-lp407.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.ql = load i8, ptr %i.p, align 8, !range !106, !alias.scope !173, !noalias !27, !noundef !4
  %switch.i.i174.i = icmp samesign ult i8 %i.ql, 25
  br i1 %switch.i.i174.i, label %.body136.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.qm = load ptr, ptr %i.dc, align 8, !alias.scope !180, !noalias !27, !nonnull !4, !noundef !4
  %i.qn = atomicrmw sub ptr %i.qm, i64 1 release, align 8, !noalias !181
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %bb.gd, label %.body136.i

bb.gd:                                            ; preds = %bb.gc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dc) #30
          to label %.body136.i unwind label %bb.fh, !noalias !29

.loopexit406.i:                                   ; preds = %bb.gf
  %lpad.loopexit408.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp407.i:                          ; preds = %bb.gg
  %lpad.loopexit.split-lp409.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ge:                                            ; preds = %bb.ga
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qq = load i8, ptr %i.qp, align 1, !alias.scope !182, !noalias !29, !noundef !4
  %i.qr = icmp sgt i8 %i.qq, -65
  br i1 %i.qr, label %bb.gf, label %bb.gg, !prof !76

bb.gf:                                            ; preds = %bb.ge, %.split.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qt = add i64 %.sroa.647.0.i, -1
  %i.qu = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qs, i64 noundef %i.qt)
          to label %bb.gh unwind label %.loopexit406.i, !noalias !29 ; 3 uses

bb.gg:                                            ; preds = %bb.ge, %.split.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0.i, i64 noundef %.sroa.647.0.i, i64 noundef 1, i64 noundef %.sroa.647.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %bb.ep unwind label %.loopexit.split-lp407.i, !noalias !29

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !27
  %.not83.i = icmp ugt i32 %i.py, %.sroa.19.1.ph.i
  br i1 %.not83.i, label %bb.gi, label %bb.gj, !prof !14

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp412.i, !noalias !29

bb.gj:                                            ; preds = %bb.gh
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i32 noundef %i.py, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit178.i unwind label %.loopexit411.i, !noalias !29

.loopexit411.i:                                   ; preds = %bb.gj
  %lpad.loopexit413.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.loopexit.split-lp412.i:                          ; preds = %bb.gi
  %lpad.loopexit.split-lp414.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gk:                                            ; preds = %.loopexit.split-lp412.i, %.loopexit411.i
  %lpad.phi415.i = phi { ptr, i32 } [ %lpad.loopexit413.i, %.loopexit411.i ], [ %lpad.loopexit.split-lp414.i, %.loopexit.split-lp412.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand(ptr nonnull %i.qu) #29
          to label %bb.gb unwind label %bb.fh, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit178.i: ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.i, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.qv = load i8, ptr %i.p, align 8, !range !106, !alias.scope !191, !noalias !27, !noundef !4
  %switch.i.i179.i = icmp samesign ult i8 %i.qv, 25
  br i1 %switch.i.i179.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i, label %bb.gl

bb.gl:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit178.i
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.qw = load ptr, ptr %i.dc, align 8, !alias.scope !198, !noalias !27, !nonnull !4, !noundef !4
  %i.qx = atomicrmw sub ptr %i.qw, i64 1 release, align 8, !noalias !199
  %i.qy = icmp eq i64 %i.qx, 1
  br i1 %i.qy, label %bb.gm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dc) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i unwind label %bb.gp, !noalias !29

bb.gn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i: ; preds = %bb.gm, %bb.gl, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !27
  store i32 2, ptr %i.n, align 8, !noalias !27
  store ptr %i.qu, ptr %.sroa.5279.0..sroa_idx.i, align 8, !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.i, i64 20, i1 false), !noalias !27
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !27
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.n)
          to label %bb.go unwind label %bb.gn, !noalias !29

bb.go:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7280.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !27
  br label %.loopexit.i

bb.gp:                                            ; preds = %bb.gm
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 2, ptr nonnull %i.qu) #29
          to label %.body136.i unwind label %bb.fh, !noalias !29

.loopexit.i:                                      ; preds = %bb.hs, %bb.eq, %bb.hr, %bb.go, %bb.eu, %bb.ec, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentBS_.exit.i
  %.val94.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !27, !noundef !4 ; 3 uses
  %.val95.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !27 ; 7 uses
  %i.rb = add nsw i32 %.val94.i, -3
  %i.rc = icmp samesign ugt i32 %.val94.i, 2
  %narrow.i.i = select i1 %i.rc, i32 %i.rb, i32 2
  switch i32 %narrow.i.i, label %.invoke1197.i [
    i32 0, label %bb.gq
    i32 1, label %bb.gr
  ]

.invoke1197.i:                                    ; preds = %bb.ht, %.loopexit.i
  %i.rd = phi i32 [ %.val94.i, %.loopexit.i ], [ %.val92.i, %bb.ht ]
  %i.re = phi ptr [ %.val95.i, %.loopexit.i ], [ %.val93.i, %bb.ht ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %i.rd, ptr %i.re)
          to label %.backedge.i unwind label %.thread310.loopexit.split-lp.loopexit.i, !noalias !29

bb.gq:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.rf = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !noalias !200, !noundef !4
  %i.rh = add i32 %i.rg, -1                       ; 2 uses
  store i32 %i.rh, ptr %i.rf, align 4, !noalias !200
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %.invoke1188.invoke.i, label %.backedge.i

bb.gr:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.rj = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !noalias !203, !noundef !4
  %i.rl = add i32 %i.rk, -1                       ; 2 uses
  store i32 %i.rl, ptr %i.rj, align 4, !noalias !203
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %.invoke1188.invoke.i, label %.backedge.i

.invoke1188.invoke.i:                             ; preds = %bb.hv, %bb.hu, %bb.gr, %bb.gq
  %i.rn = phi ptr [ %.val95.i, %bb.gq ], [ %.val95.i, %bb.gr ], [ %.val93.i, %bb.hv ], [ %.val93.i, %bb.hu ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.rn) #30
          to label %.backedge.i unwind label %.thread310.loopexit.split-lp.loopexit.i, !noalias !29

bb.gs:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !27
  %i.ro = load i8, ptr %i.z, align 8, !range !106, !noalias !27, !noundef !4 ; 2 uses
  %i.rp = icmp samesign ugt i8 %i.ro, 23
  %i.rq = zext nneg i8 %i.ro to i64               ; 2 uses
  %i.rr = add nsw i64 %i.rq, -23
  %i.rs = select i1 %i.rp, i64 %i.rr, i64 0
  switch i64 %i.rs, label %bb.ex [
    i64 0, label %bb.gv
    i64 1, label %bb.gt
    i64 2, label %bb.gu
  ]

bb.gt:                                            ; preds = %bb.gs
  %i.rt = load ptr, ptr %i.dl, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.ru = load i64, ptr %i.dm, align 8, !noalias !27, !noundef !4
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.rv = load ptr, ptr %i.dl, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.rw = load i64, ptr %i.dm, align 8, !noalias !27, !noundef !4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs
  %.sroa.026.0.i = phi ptr [ %i.rx, %bb.gu ], [ %i.rt, %bb.gt ], [ %i.dn, %bb.gs ]
  %.sroa.427.0.i = phi i64 [ %i.rw, %bb.gu ], [ %i.ru, %bb.gt ], [ %i.rq, %bb.gs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit187.i unwind label %bb.gw, !noalias !29

bb.gw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit187.i, %bb.gv
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.rz = load i8, ptr %i.z, align 8, !range !106, !alias.scope !212, !noalias !27, !noundef !4
  %switch.i.i188.i = icmp samesign ult i8 %i.rz, 25
  br i1 %switch.i.i188.i, label %.body136.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.sa = load ptr, ptr %i.dl, align 8, !alias.scope !219, !noalias !27, !nonnull !4, !noundef !4
  %i.sb = atomicrmw sub ptr %i.sa, i64 1 release, align 8, !noalias !220
  %i.sc = icmp eq i64 %i.sb, 1
  br i1 %i.sc, label %bb.gy, label %.body136.i

bb.gy:                                            ; preds = %bb.gx
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dl) #30
          to label %.body136.i unwind label %bb.fh, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit187.i: ; preds = %bb.gv
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.026.0.i, i64 noundef %.sroa.427.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.x)
          to label %bb.gz unwind label %bb.gw, !noalias !29

bb.gz:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !27
  store i32 2, ptr %i.aa, align 8, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.sd = load i8, ptr %i.z, align 8, !range !106, !alias.scope !227, !noalias !27, !noundef !4
  %switch.i.i191.i = icmp samesign ult i8 %i.sd, 25
  br i1 %switch.i.i191.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.se = load ptr, ptr %i.dl, align 8, !alias.scope !234, !noalias !27, !nonnull !4, !noundef !4
  %i.sf = atomicrmw sub ptr %i.se, i64 1 release, align 8, !noalias !235
  %i.sg = icmp eq i64 %i.sf, 1
  br i1 %i.sg, label %bb.hb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i

bb.hb:                                            ; preds = %bb.ha
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dl) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i: ; preds = %bb.hb, %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %.noexc197.i, %.noexc196.i, %.thread359.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit151.i
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.aa)
end_hunk_1
begin_hunk_2_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCsdovh4xi6v3I_4span3map7SpanMapECs33K2ylI4knu_10hir_expand:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !289, !noundef !4 ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, 4294967295
  %i.ht = shl nuw i64 %i.hr, 32
  %.sroa.09.0.insert.insert.i.i92.i.i = select i1 %i.hs, i64 513, i64 %i.ht ; 2 uses
  %i.hu = trunc i64 %.sroa.09.0.insert.insert.i.i92.i.i to i1
  br i1 %i.hu, label %bb.ca, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i, !prof !14

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !291
  br label %.invoke131.i.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i: ; preds = %bb.bz
  %.sroa.6.0.extract.shift.i.i.i94.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i92.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i95.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i94.i.i to i32
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc96.i.i
  %i.hv = load i32, ptr %i.hp, align 8, !noalias !289, !noundef !4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i
  %.sroa.02.0.i90.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i95.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i ], [ %i.hv, %bb.cb ]
  %i.hw = xor i32 %.sroa.0.0.i89.i.i, -1
  %.not.i91.i.i = icmp ugt i32 %.sroa.02.0.i90.i.i, %i.hw
  br i1 %.not.i91.i.i, label %.invoke.i.i, label %bb.cd, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %.not42.i.i = icmp eq i32 %.sroa.0.0.i89.i.i, -1
  br i1 %.not42.i.i, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.as unwind label %.loopexit.split-lp394.i, !noalias !289

bb.cf:                                            ; preds = %bb.cd
  %i.hx = add nuw i32 %.sroa.0.0.i89.i.i, 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cn, %bb.cf
  %.sroa.3.0.i.i = phi i32 [ %.sroa.0.0.i89.i.i, %bb.cf ], [ %.sroa.0.0.i100.i.i, %bb.cn ]
  %.sroa.517.0.i.i = phi i32 [ %i.hx, %bb.cf ], [ %i.in, %bb.cn ]
  %.sroa.016.sroa.0.0.i.i = phi i32 [ 4, %bb.cf ], [ 3, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !291
  br label %bb.cr

bb.ch:                                            ; preds = %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ck, align 8, !alias.scope !288, !noalias !289
  br label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr null, ptr %i.ck, align 8, !alias.scope !288, !noalias !289
  %i.hz = load i8, ptr %i.fn, align 4, !range !15, !noalias !289, !noundef !4
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.cj, label %bb.ci, !prof !14

bb.ci:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.ic = load i32, ptr %i.ib, align 8, !noalias !289, !noundef !4
  br label %.noexc107.i.i

bb.cj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.id = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fg)
          to label %.noexc107.i.i unwind label %.loopexit393.i, !noalias !289

.noexc107.i.i:                                    ; preds = %bb.cj, %bb.ci
  %.sroa.0.0.i100.i.i = phi i32 [ %i.ic, %bb.ci ], [ %i.id, %bb.cj ] ; 3 uses
  %i.ie = load i64, ptr %i.fg, align 8, !range !16, !noalias !289, !noundef !4
  %i.if = trunc nuw i64 %i.ie to i1
  %i.ig = load ptr, ptr %i.fu, align 8, !noalias !289, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.if, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %.noexc107.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !289, !noundef !4 ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, 4294967295
  %i.ik = shl nuw i64 %i.ii, 32
  %.sroa.09.0.insert.insert.i.i103.i.i = select i1 %i.ij, i64 513, i64 %i.ik ; 2 uses
  %i.il = trunc i64 %.sroa.09.0.insert.insert.i.i103.i.i to i1
  br i1 %i.il, label %bb.cl, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i, !prof !14

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !291
  br label %.invoke131.i.i

.invoke131.i.i:                                   ; preds = %bb.cl, %bb.ca, %bb.ba
  %.sink.i.i = phi ptr [ %i.f, %bb.ba ], [ %i.e, %bb.ca ], [ %i.d, %bb.cl ] ; 2 uses
  store i8 2, ptr %.sink.i.i, align 1, !noalias !291
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %.sink.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.cont132.i.i unwind label %.loopexit.split-lp394.i, !noalias !289

.cont132.i.i:                                     ; preds = %.invoke131.i.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i: ; preds = %bb.ck
  %.sroa.6.0.extract.shift.i.i.i105.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i103.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i106.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i105.i.i to i32
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc107.i.i
  %i.im = load i32, ptr %i.ig, align 8, !noalias !289, !noundef !4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i
  %.sroa.02.0.i101.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i106.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i ], [ %i.im, %bb.cm ]
  %i.in = add i32 %.sroa.02.0.i101.i.i, %.sroa.0.0.i100.i.i ; 2 uses
  %.not.i102.i.i = icmp ugt i32 %.sroa.0.0.i100.i.i, %i.in
  br i1 %.not.i102.i.i, label %.invoke.i.i, label %bb.cg, !prof !14

.invoke.i.i:                                      ; preds = %bb.cn, %bb.cc, %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp394.i, !noalias !289

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread310.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1188.invoke.i, %.invoke1197.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit385.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1189.i.a
  %lpad.loopexit.split-lp386.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit392.i:                                   ; preds = %bb.av, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.io = load i64, ptr %i.cs, align 8, !noalias !282, !noundef !4 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %._crit_edge.i, label %.lr.ph.i

.body136.i:                                       ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gp, %bb.gn, %bb.gd, %bb.gc, %bb.gb, %bb.fm, %bb.fl, %bb.fk, %bb.fd, %bb.fc, %bb.fb, %bb.ee, %bb.ds, %bb.dr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit374.i
  %.pn86.i = phi { ptr, i32 } [ %i.pe, %bb.fl ], [ %.pn.i, %bb.gc ], [ %i.mc, %bb.ee ], [ %i.ou, %bb.fc ], [ %i.qz, %bb.gp ], [ %i.qy, %bb.gn ], [ %lpad.phi405.i, %bb.dr ], [ %i.rx, %bb.gx ], [ %lpad.phi405.i, %bb.ds ], [ %i.ou, %bb.fd ], [ %i.ou, %bb.fb ], [ %i.pe, %bb.fm ], [ %i.pe, %bb.fk ], [ %.pn.i, %bb.gd ], [ %.pn.i, %bb.gb ], [ %i.rx, %bb.gy ], [ %i.rx, %bb.gw ], [ %lpad.loopexit375.i, %.loopexit374.i ], [ %lpad.loopexit381.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit398.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp399.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 4 uses
  %.val96.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !282, !noundef !4 ; 3 uses
  %.val97.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !282 ; 6 uses
  %i.iq = add nsw i32 %.val96.i, -3
  %i.ir = icmp samesign ugt i32 %.val96.i, 2
  %narrow.i = select i1 %i.ir, i32 %i.iq, i32 2
  switch i32 %narrow.i, label %bb.co [
    i32 0, label %bb.cp
    i32 1, label %bb.cq
  ]

bb.co:                                            ; preds = %.body136.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val96.i, ptr %.val97.i)
          to label %.thread.i unwind label %bb.fh

bb.cp:                                            ; preds = %.body136.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !284
  %i.is = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !noalias !317, !noundef !4
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.is, align 4, !noalias !317
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %.invoke, label %.thread.i

bb.cq:                                            ; preds = %.body136.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !284
  %i.iw = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !noalias !320, !noundef !4
  %i.iy = add i32 %i.ix, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.iw, align 4, !noalias !320
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %.invoke, label %.thread.i

.invoke:                                          ; preds = %bb.cq, %bb.cp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val97.i) #30
          to label %.thread.i unwind label %bb.fh

.loopexit374.i:                                   ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit156.i, %.preheader.i
  %lpad.loopexit375.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader379.i
  %lpad.loopexit381.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1190.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit139.i, %bb.eb, %bb.dv, %bb.di, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charCs33K2ylI4knu_10hir_expand.exit.thread.invoke.i, %.invoke1191.i, %.invoke1195.i, %.invoke1193.i
  %lpad.loopexit.split-lp399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15247.1.ph.i = phi i32 [ %i.fc, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 10 uses
  %.sroa.13.1.ph.i = phi i64 [ %i.fe, %bb.ar ], [ %.sroa.13.0.copyload245.i, %bb.au ], [ 0, %bb.cg ]
  %.sroa.11241.1.ph.i = phi ptr [ %i.dn, %bb.ar ], [ %.sroa.11241.0.copyload243.i, %bb.au ], [ %i.fg, %bb.cg ]
  %i.ja = phi i32 [ %.sroa.11.0.i, %bb.ar ], [ %.sroa.11.0.copyload240.i, %bb.au ], [ %.sroa.11.0.i, %bb.cg ] ; 5 uses
  %i.jb = phi i32 [ 4, %bb.ar ], [ %i.du, %bb.au ], [ %.sroa.016.sroa.0.0.i.i, %bb.cg ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !282
  store i32 %i.jb, ptr %i.ag, align 8, !noalias !282
  store i32 %i.ja, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !282
  store ptr %.sroa.11241.1.ph.i, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !282
  store i64 %.sroa.13.1.ph.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false), !noalias !282
  %i.jc = icmp samesign ugt i32 %i.jb, 2
  br i1 %i.jc, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jd = icmp eq i32 %i.jb, 1
  br i1 %i.jd, label %bb.hc, label %bb.hd

bb.ct:                                            ; preds = %bb.cr
  %i.je = invoke fastcc noundef i16 @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE4kindCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284 ; 5 uses

bb.cu:                                            ; preds = %bb.ct
  switch i16 %i.je, label %bb.er [
    i16 150, label %bb.cv
    i16 153, label %bb.es
    i16 53, label %bb.cw
    i16 2, label %bb.cw
    i16 3, label %bb.cw
    i16 4, label %bb.cw
    i16 5, label %bb.cw
    i16 6, label %bb.cw
    i16 7, label %bb.cw
    i16 8, label %bb.cw
    i16 9, label %bb.cw
    i16 10, label %bb.cw
    i16 11, label %bb.cw
    i16 12, label %bb.cw
    i16 13, label %bb.cw
    i16 14, label %bb.cw
    i16 15, label %bb.cw
    i16 16, label %bb.cw
    i16 17, label %bb.cw
    i16 18, label %bb.cw
    i16 19, label %bb.cw
    i16 20, label %bb.cw
    i16 21, label %bb.cw
    i16 22, label %bb.cw
    i16 23, label %bb.cw
    i16 25, label %bb.cw
    i16 26, label %bb.cw
    i16 27, label %bb.cw
    i16 28, label %bb.cw
    i16 29, label %bb.cw
    i16 30, label %bb.cw
    i16 31, label %bb.cw
    i16 32, label %bb.cw
    i16 33, label %bb.cw
    i16 34, label %bb.cw
    i16 35, label %bb.cw
    i16 36, label %bb.cw
    i16 37, label %bb.cw
    i16 38, label %bb.cw
    i16 39, label %bb.cw
    i16 40, label %bb.cw
    i16 41, label %bb.cw
    i16 42, label %bb.cw
    i16 43, label %bb.cw
    i16 44, label %bb.cw
    i16 45, label %bb.cw
    i16 46, label %bb.cw
    i16 47, label %bb.cw
    i16 48, label %bb.cw
    i16 49, label %bb.cw
    i16 50, label %bb.cw
    i16 51, label %bb.cw
    i16 52, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !282
  invoke void @_RNvXCslVwgvvnzcNb_13syntax_bridgeNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB2_10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.cv
  %.val100.i = load i8, ptr %i.cz, align 4, !alias.scope !279, !noalias !284
  %i.jf = invoke noundef nonnull align 8 ptr @_RNvMs5_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynToken5token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

.noexc114.i:                                      ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i
  %i.jg = trunc nuw i8 %.val100.i to i1
  invoke void @_RNvCslVwgvvnzcNb_13syntax_bridge19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jf, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.af, i1 noundef zeroext %i.jg, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCs33K2ylI4knu_10hir_expand.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.noexc114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !282
  br label %.loopexit.i

bb.cw:                                            ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  %i.jh = load ptr, ptr %i.cr, align 8, !noalias !282, !nonnull !4, !noundef !4 ; 2 uses
  %i.ji = load i64, ptr %i.cs, align 8, !noalias !282, !noundef !4 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %.loopexit378.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %.idx372.i = shl nuw nsw i64 %i.ji, 3
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.idx372.i
  %i.jl = load i64, ptr %i.ct, align 8, !range !70, !noalias !282, !noundef !4
  %i.jm = load i64, ptr %i.cu, align 8, !noalias !282, !noundef !4 ; 4 uses
  %i.jn = load ptr, ptr %i.cv, align 8, !noalias !282, !nonnull !4 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv969.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next970.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ] ; 2 uses
  %i.jo = phi ptr [ %i.jk, %.lr.ph.i.preheader.i ], [ %i.jp, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ]
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -8 ; 3 uses
  %.val.i116.i = load i64, ptr %i.jp, align 8, !noalias !323, !noundef !4 ; 7 uses
  %i.jq = icmp ult i64 %.val.i116.i, %i.jm        ; 3 uses
  switch i64 %i.jl, label %.lr.ph.i.i.unreachabledefault [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
    i64 2, label %bb.cz
  ]

.lr.ph.i.i.unreachabledefault:                    ; preds = %.lr.ph.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc208.i, %.noexc118.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.da, label %.invoke1193.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.db, label %.invoke1193.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.dc, label %.invoke1193.i

bb.da:                                            ; preds = %bb.cx
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.js = load i8, ptr %i.jr, align 8, !range !75, !noalias !284, !noundef !4
  %i.jt = icmp eq i8 %i.js, 3
  br i1 %i.jt, label %.noexc118.i, label %.invoke1195.i, !prof !76

.invoke1193.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.ju = phi i64 [ %.val.i116.i, %bb.cz ], [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cy ], [ %.val.i202.i, %bb.hh ], [ %.val.i202.i, %bb.hi ], [ %.val.i202.i, %bb.hj ]
  %i.jv = phi i64 [ %i.jm, %bb.cz ], [ %i.jm, %bb.cx ], [ %i.jm, %bb.cy ], [ %i.ss, %bb.hh ], [ %i.ss, %bb.hi ], [ %i.ss, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ju, i64 noundef %i.jv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1194.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !284

.cont1194.i:                                      ; preds = %.invoke1193.i
  unreachable

.invoke1195.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !284

.cont1196.i:                                      ; preds = %.invoke1195.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !range !75, !noalias !284, !noundef !4
  %i.jy = icmp eq i8 %i.jx, 3
  br i1 %i.jy, label %.noexc118.i, label %.invoke1195.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 8, !range !75, !noalias !284, !noundef !4
  %i.kb = icmp eq i8 %i.ka, 3
  br i1 %i.kb, label %.noexc118.i, label %.invoke1195.i, !prof !76

.noexc118.i:                                      ; preds = %bb.dc, %bb.db, %bb.da
  %.sink.i219.i = phi ptr [ %i.jw, %bb.db ], [ %i.jz, %bb.dc ], [ %i.jr, %bb.da ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink.i219.i, i64 1
  %.sroa.0.0.i220.i = load i8, ptr %i.kc, align 1, !range !75, !noalias !284, !noundef !4
  switch i8 %.sroa.0.0.i220.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i
    i8 1, label %bb.dd
    i8 2, label %bb.de
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i
  ]

bb.dd:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i

bb.de:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %.noexc118.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.de ], [ 8, %bb.dd ], [ 6, %.noexc118.i ]
  %i.kd = icmp eq i16 %i.je, %.sink1.i.i.i.i.i.i
  br i1 %i.kd, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i, %.noexc118.i
  %i.ke = icmp eq ptr %i.jh, %i.jp
  %indvars.iv.next970.i = add nuw nsw i64 %indvars.iv969.i, 1
  br i1 %i.ke, label %.loopexit378.i, label %.lr.ph.i.i

.loopexit378.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i, %bb.cw
end_hunk_2
begin_hunk_3_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCsdovh4xi6v3I_4span3map7SpanMapECs33K2ylI4knu_10hir_expand:bb.a
    i16 149, label %bb.fi
    i16 154, label %bb.ft
  ]

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !282
  invoke void @_RNvXCslVwgvvnzcNb_13syntax_bridgeNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB2_10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i: ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !282
  %.val105.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !282, !noundef !4
  %.val106.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !282
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, i32 %.val105.i, ptr %.val106.i)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

bb.ew:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i
  %i.oj = load i8, ptr %i.v, align 8, !range !106, !noalias !282, !noundef !4 ; 2 uses
  %i.ok = icmp samesign ugt i8 %i.oj, 23
  %i.ol = zext nneg i8 %i.oj to i64               ; 2 uses
  %i.om = add nsw i64 %i.ol, -23
  %i.on = select i1 %i.ok, i64 %i.om, i64 0
  switch i64 %i.on, label %bb.ex [
    i64 0, label %bb.fa
    i64 1, label %bb.ey
    i64 2, label %bb.ez
  ]

bb.ex:                                            ; preds = %bb.gs, %bb.fx, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i, %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.oo = load ptr, ptr %i.dh, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.op = load i64, ptr %i.di, align 8, !noalias !282, !noundef !4
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ew
  %i.oq = load ptr, ptr %i.dh, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.or = load i64, ptr %i.di, align 8, !noalias !282, !noundef !4
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ew
  %.sroa.032.0.i = phi ptr [ %i.os, %bb.ez ], [ %i.oo, %bb.ey ], [ %i.dj, %bb.ew ]
  %.sroa.433.0.i = phi i64 [ %i.or, %bb.ez ], [ %i.op, %bb.ey ], [ %i.ol, %bb.ew ]
  %i.ot = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.032.0.i, i64 noundef %.sroa.433.0.i)
          to label %bb.fe unwind label %bb.fb, !noalias !284

bb.fb:                                            ; preds = %bb.fa
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.ov = load i8, ptr %i.v, align 8, !range !106, !alias.scope !362, !noalias !282, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.ov, 25
  br i1 %switch.i.i.i, label %.body136.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.ow = load ptr, ptr %i.dh, align 8, !alias.scope !369, !noalias !282, !nonnull !4, !noundef !4
  %i.ox = atomicrmw sub ptr %i.ow, i64 1 release, align 8, !noalias !370
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %bb.fd, label %.body136.i

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #30
          to label %.body136.i unwind label %bb.fh, !noalias !284

bb.fe:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.42.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !282
  store ptr %i.ot, ptr %i.cq, align 8, !noalias !282
  store i8 0, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !282
  store i32 2, ptr %i.aa, align 8, !noalias !282
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.oz = load i8, ptr %i.v, align 8, !range !106, !alias.scope !377, !noalias !282, !noundef !4
  %switch.i.i160.i = icmp samesign ult i8 %i.oz, 25
  br i1 %switch.i.i160.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.pa = load ptr, ptr %i.dh, align 8, !alias.scope !384, !noalias !282, !nonnull !4, !noundef !4
  %i.pb = atomicrmw sub ptr %i.pa, i64 1 release, align 8, !noalias !385
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %bb.fg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i: ; preds = %bb.fg, %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !282
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fh:                                            ; preds = %.invoke, %bb.co, %.thread.i, %bb.gy, %bb.gp, %bb.gk, %bb.gd, %bb.fm, %bb.fd
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !284
  unreachable

bb.fi:                                            ; preds = %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !282
  %.val103.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !282, !noundef !4
  %.val104.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !282
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, i32 %.val103.i, ptr %.val104.i)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !282
  invoke void @_RNvXCslVwgvvnzcNb_13syntax_bridgeNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB2_10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i unwind label %bb.fk, !noalias !284

bb.fk:                                            ; preds = %bb.fp, %bb.fj
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.pf = load i8, ptr %i.u, align 8, !range !106, !alias.scope !392, !noalias !282, !noundef !4
  %switch.i.i165.i = icmp samesign ult i8 %i.pf, 25
  br i1 %switch.i.i165.i, label %.body136.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.pg = load ptr, ptr %i.de, align 8, !alias.scope !399, !noalias !282, !nonnull !4, !noundef !4
  %i.ph = atomicrmw sub ptr %i.pg, i64 1 release, align 8, !noalias !400
  %i.pi = icmp eq i64 %i.ph, 1
  br i1 %i.pi, label %bb.fm, label %.body136.i

bb.fm:                                            ; preds = %bb.fl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de) #30
          to label %.body136.i unwind label %bb.fh, !noalias !284

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i: ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !282
  %i.pj = load i8, ptr %i.u, align 8, !range !106, !noalias !282, !noundef !4 ; 2 uses
  %i.pk = icmp samesign ugt i8 %i.pj, 23
  %i.pl = zext nneg i8 %i.pj to i64               ; 2 uses
  %i.pm = add nsw i64 %i.pl, -23
  %i.pn = select i1 %i.pk, i64 %i.pm, i64 0
  switch i64 %i.pn, label %bb.ex [
    i64 0, label %bb.fp
    i64 1, label %bb.fn
    i64 2, label %bb.fo
  ]

bb.fn:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i
  %i.po = load ptr, ptr %i.de, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.pp = load i64, ptr %i.df, align 8, !noalias !282, !noundef !4
  br label %bb.fp

bb.fo:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i
  %i.pq = load ptr, ptr %i.de, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.pr = load i64, ptr %i.df, align 8, !noalias !282, !noundef !4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i
  %.sroa.034.0.i = phi ptr [ %i.ps, %bb.fo ], [ %i.po, %bb.fn ], [ %i.dg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i ]
  %.sroa.435.0.i = phi i64 [ %i.pr, %bb.fo ], [ %i.pp, %bb.fn ], [ %i.pl, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.034.0.i, i64 noundef %.sroa.435.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.t)
          to label %bb.fq unwind label %bb.fk, !noalias !284

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !282
  store i32 0, ptr %i.aa, align 8, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !282
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.pt = load i8, ptr %i.u, align 8, !range !106, !alias.scope !407, !noalias !282, !noundef !4
  %switch.i.i168.i = icmp samesign ult i8 %i.pt, 25
  br i1 %switch.i.i168.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.pu = load ptr, ptr %i.de, align 8, !alias.scope !414, !noalias !282, !nonnull !4, !noundef !4
  %i.pv = atomicrmw sub ptr %i.pu, i64 1 release, align 8, !noalias !415
  %i.pw = icmp eq i64 %i.pv, 1
  br i1 %i.pw, label %bb.fs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i

bb.fs:                                            ; preds = %bb.fr
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i: ; preds = %bb.fs, %bb.fr, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !282
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.ft:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !282
  %i.px = add i32 %.sroa.15247.1.ph.i, 1          ; 3 uses
  %.not81.i = icmp eq i32 %.sroa.15247.1.ph.i, -1
  br i1 %.not81.i, label %bb.fu, label %bb.fv, !prof !14

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !284

bb.fv:                                            ; preds = %bb.ft
  invoke void @_RNvXCslVwgvvnzcNb_13syntax_bridgeNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB2_10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %i.px)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i: ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.437.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !282
  store i32 39, ptr %i.da, align 4, !noalias !282
  store i8 1, ptr %.sroa.538.0..sroa_idx.i, align 4, !noalias !282
  store i32 1, ptr %i.r, align 8, !noalias !282
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

bb.fw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7280.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !282
  %.val101.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !282, !noundef !4
  %.val102.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !282
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, i32 %.val101.i, ptr %.val102.i)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

bb.fx:                                            ; preds = %bb.fw
  %i.py = load i8, ptr %i.p, align 8, !range !106, !noalias !282, !noundef !4 ; 2 uses
  %i.pz = icmp samesign ugt i8 %i.py, 23
  %i.qa = zext nneg i8 %i.py to i64               ; 2 uses
  %i.qb = add nsw i64 %i.qa, -23
  %i.qc = select i1 %i.pz, i64 %i.qb, i64 0
  switch i64 %i.qc, label %bb.ex [
    i64 0, label %bb.ga
    i64 1, label %bb.fy
    i64 2, label %bb.fz
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.qd = load ptr, ptr %i.db, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.qe = load i64, ptr %i.dc, align 8, !noalias !282, !noundef !4
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.qf = load ptr, ptr %i.db, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.qg = load i64, ptr %i.dc, align 8, !noalias !282, !noundef !4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx
  %.sroa.044.0.i = phi ptr [ %i.qh, %bb.fz ], [ %i.qd, %bb.fy ], [ %i.dd, %bb.fx ] ; 3 uses
  %.sroa.647.0.i = phi i64 [ %i.qg, %bb.fz ], [ %i.qe, %bb.fy ], [ %i.qa, %bb.fx ] ; 5 uses
  %i.qi = icmp ult i64 %.sroa.647.0.i, 2
  br i1 %i.qi, label %.split.i, label %bb.ge

.split.i:                                         ; preds = %bb.ga
  %i.qj = icmp eq i64 %.sroa.647.0.i, 1
  br i1 %i.qj, label %bb.gf, label %bb.gg, !prof !76

bb.gb:                                            ; preds = %bb.gk, %.loopexit.split-lp407.i, %.loopexit406.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi415.i, %bb.gk ], [ %lpad.loopexit408.i, %.loopexit406.i ], [ %lpad.loopexit.split-lp409.i, %.loopexit.split-lp407.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.qk = load i8, ptr %i.p, align 8, !range !106, !alias.scope !422, !noalias !282, !noundef !4
  %switch.i.i174.i = icmp samesign ult i8 %i.qk, 25
  br i1 %switch.i.i174.i, label %.body136.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.ql = load ptr, ptr %i.db, align 8, !alias.scope !429, !noalias !282, !nonnull !4, !noundef !4
  %i.qm = atomicrmw sub ptr %i.ql, i64 1 release, align 8, !noalias !430
  %i.qn = icmp eq i64 %i.qm, 1
  br i1 %i.qn, label %bb.gd, label %.body136.i

bb.gd:                                            ; preds = %bb.gc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db) #30
          to label %.body136.i unwind label %bb.fh, !noalias !284

.loopexit406.i:                                   ; preds = %bb.gf
  %lpad.loopexit408.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp407.i:                          ; preds = %bb.gg
  %lpad.loopexit.split-lp409.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ge:                                            ; preds = %bb.ga
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !alias.scope !431, !noalias !284, !noundef !4
  %i.qq = icmp sgt i8 %i.qp, -65
  br i1 %i.qq, label %bb.gf, label %bb.gg, !prof !76

bb.gf:                                            ; preds = %bb.ge, %.split.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qs = add i64 %.sroa.647.0.i, -1
  %i.qt = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qr, i64 noundef %i.qs)
          to label %bb.gh unwind label %.loopexit406.i, !noalias !284 ; 3 uses

bb.gg:                                            ; preds = %bb.ge, %.split.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0.i, i64 noundef %.sroa.647.0.i, i64 noundef 1, i64 noundef %.sroa.647.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %bb.ep unwind label %.loopexit.split-lp407.i, !noalias !284

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !282
  %.not83.i = icmp ugt i32 %i.px, %.sroa.19.1.ph.i
  br i1 %.not83.i, label %bb.gi, label %bb.gj, !prof !14

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp412.i, !noalias !284

bb.gj:                                            ; preds = %bb.gh
  invoke void @_RNvXCslVwgvvnzcNb_13syntax_bridgeNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB2_10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx, i32 noundef %i.px, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i unwind label %.loopexit411.i, !noalias !284

.loopexit411.i:                                   ; preds = %bb.gj
  %lpad.loopexit413.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.loopexit.split-lp412.i:                          ; preds = %bb.gi
  %lpad.loopexit.split-lp414.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gk:                                            ; preds = %.loopexit.split-lp412.i, %.loopexit411.i
  %lpad.phi415.i = phi { ptr, i32 } [ %lpad.loopexit413.i, %.loopexit411.i ], [ %lpad.loopexit.split-lp414.i, %.loopexit.split-lp412.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand(ptr nonnull %i.qt) #29
          to label %bb.gb unwind label %bb.fh, !noalias !284

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i: ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.i, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !282
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.qu = load i8, ptr %i.p, align 8, !range !106, !alias.scope !440, !noalias !282, !noundef !4
  %switch.i.i179.i = icmp samesign ult i8 %i.qu, 25
  br i1 %switch.i.i179.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i, label %bb.gl

bb.gl:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.qv = load ptr, ptr %i.db, align 8, !alias.scope !447, !noalias !282, !nonnull !4, !noundef !4
  %i.qw = atomicrmw sub ptr %i.qv, i64 1 release, align 8, !noalias !448
  %i.qx = icmp eq i64 %i.qw, 1
  br i1 %i.qx, label %bb.gm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i unwind label %bb.gp, !noalias !284

bb.gn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i: ; preds = %bb.gm, %bb.gl, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !282
  store i32 2, ptr %i.n, align 8, !noalias !282
  store ptr %i.qt, ptr %.sroa.5279.0..sroa_idx.i, align 8, !noalias !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.i, i64 20, i1 false), !noalias !282
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !282
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.n)
          to label %bb.go unwind label %bb.gn, !noalias !284

bb.go:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7280.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !282
  br label %.loopexit.i

bb.gp:                                            ; preds = %bb.gm
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 2, ptr nonnull %i.qt) #29
          to label %.body136.i unwind label %bb.fh, !noalias !284

.loopexit.i:                                      ; preds = %bb.hs, %bb.eq, %bb.hr, %bb.go, %bb.eu, %bb.ec, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCs33K2ylI4knu_10hir_expand.exit.i
  %.val94.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !282, !noundef !4 ; 3 uses
  %.val95.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !282 ; 7 uses
  %i.ra = add nsw i32 %.val94.i, -3
  %i.rb = icmp samesign ugt i32 %.val94.i, 2
  %narrow.i.i = select i1 %i.rb, i32 %i.ra, i32 2
  switch i32 %narrow.i.i, label %.invoke1197.i [
    i32 0, label %bb.gq
    i32 1, label %bb.gr
  ]

.invoke1197.i:                                    ; preds = %bb.ht, %.loopexit.i
  %i.rc = phi i32 [ %.val94.i, %.loopexit.i ], [ %.val92.i, %bb.ht ]
  %i.rd = phi ptr [ %.val95.i, %.loopexit.i ], [ %.val93.i, %bb.ht ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %i.rc, ptr %i.rd)
          to label %.backedge.i unwind label %.thread310.loopexit.split-lp.loopexit.i, !noalias !284

bb.gq:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.re = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !noalias !449, !noundef !4
  %i.rg = add i32 %i.rf, -1                       ; 2 uses
  store i32 %i.rg, ptr %i.re, align 4, !noalias !449
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %.invoke1188.invoke.i, label %.backedge.i

bb.gr:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !noalias !452, !noundef !4
  %i.rk = add i32 %i.rj, -1                       ; 2 uses
  store i32 %i.rk, ptr %i.ri, align 4, !noalias !452
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %.invoke1188.invoke.i, label %.backedge.i

.invoke1188.invoke.i:                             ; preds = %bb.hv, %bb.hu, %bb.gr, %bb.gq
  %i.rm = phi ptr [ %.val95.i, %bb.gq ], [ %.val95.i, %bb.gr ], [ %.val93.i, %bb.hv ], [ %.val93.i, %bb.hu ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.rm) #30
          to label %.backedge.i unwind label %.thread310.loopexit.split-lp.loopexit.i, !noalias !284

bb.gs:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !282
  %i.rn = load i8, ptr %i.z, align 8, !range !106, !noalias !282, !noundef !4 ; 2 uses
  %i.ro = icmp samesign ugt i8 %i.rn, 23
  %i.rp = zext nneg i8 %i.rn to i64               ; 2 uses
  %i.rq = add nsw i64 %i.rp, -23
  %i.rr = select i1 %i.ro, i64 %i.rq, i64 0
  switch i64 %i.rr, label %bb.ex [
    i64 0, label %bb.gv
    i64 1, label %bb.gt
    i64 2, label %bb.gu
  ]

bb.gt:                                            ; preds = %bb.gs
  %i.rs = load ptr, ptr %i.dk, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.rt = load i64, ptr %i.dl, align 8, !noalias !282, !noundef !4
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.ru = load ptr, ptr %i.dk, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.rv = load i64, ptr %i.dl, align 8, !noalias !282, !noundef !4
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs
  %.sroa.026.0.i = phi ptr [ %i.rw, %bb.gu ], [ %i.rs, %bb.gt ], [ %i.dm, %bb.gs ]
  %.sroa.427.0.i = phi i64 [ %i.rv, %bb.gu ], [ %i.rt, %bb.gt ], [ %i.rp, %bb.gs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !282
  invoke void @_RNvXCslVwgvvnzcNb_13syntax_bridgeNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB2_10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i unwind label %bb.gw, !noalias !284

bb.gw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i, %bb.gv
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.ry = load i8, ptr %i.z, align 8, !range !106, !alias.scope !461, !noalias !282, !noundef !4
  %switch.i.i188.i = icmp samesign ult i8 %i.ry, 25
  br i1 %switch.i.i188.i, label %.body136.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.rz = load ptr, ptr %i.dk, align 8, !alias.scope !468, !noalias !282, !nonnull !4, !noundef !4
  %i.sa = atomicrmw sub ptr %i.rz, i64 1 release, align 8, !noalias !469
  %i.sb = icmp eq i64 %i.sa, 1
  br i1 %i.sb, label %bb.gy, label %.body136.i

bb.gy:                                            ; preds = %bb.gx
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk) #30
          to label %.body136.i unwind label %bb.fh, !noalias !284

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i: ; preds = %bb.gv
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.026.0.i, i64 noundef %.sroa.427.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.x)
          to label %bb.gz unwind label %bb.gw, !noalias !284

bb.gz:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !282
  store i32 2, ptr %i.aa, align 8, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !282
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.sc = load i8, ptr %i.z, align 8, !range !106, !alias.scope !476, !noalias !282, !noundef !4
  %switch.i.i191.i = icmp samesign ult i8 %i.sc, 25
  br i1 %switch.i.i191.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.sd = load ptr, ptr %i.dk, align 8, !alias.scope !483, !noalias !282, !nonnull !4, !noundef !4
  %i.se = atomicrmw sub ptr %i.sd, i64 1 release, align 8, !noalias !484
  %i.sf = icmp eq i64 %i.se, 1
  br i1 %i.sf, label %bb.hb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i

bb.hb:                                            ; preds = %bb.ha
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i: ; preds = %bb.hb, %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !282
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %.noexc197.i, %.noexc196.i, %.thread359.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit151.i
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.aa)
end_hunk_3
begin_hunk_4_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeRNtNtCsdovh4xi6v3I_4span3map7SpanMapECs33K2ylI4knu_10hir_expand:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !536, !noundef !4 ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, 4294967295
  %i.ht = shl nuw i64 %i.hr, 32
  %.sroa.09.0.insert.insert.i.i92.i.i = select i1 %i.hs, i64 513, i64 %i.ht ; 2 uses
  %i.hu = trunc i64 %.sroa.09.0.insert.insert.i.i92.i.i to i1
  br i1 %i.hu, label %bb.ca, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i, !prof !14

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !538
  br label %.invoke131.i.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i: ; preds = %bb.bz
  %.sroa.6.0.extract.shift.i.i.i94.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i92.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i95.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i94.i.i to i32
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc96.i.i
  %i.hv = load i32, ptr %i.hp, align 8, !noalias !536, !noundef !4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i
  %.sroa.02.0.i90.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i95.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i ], [ %i.hv, %bb.cb ]
  %i.hw = xor i32 %.sroa.0.0.i89.i.i, -1
  %.not.i91.i.i = icmp ugt i32 %.sroa.02.0.i90.i.i, %i.hw
  br i1 %.not.i91.i.i, label %.invoke.i.i, label %bb.cd, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %.not42.i.i = icmp eq i32 %.sroa.0.0.i89.i.i, -1
  br i1 %.not42.i.i, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.as unwind label %.loopexit.split-lp394.i, !noalias !536

bb.cf:                                            ; preds = %bb.cd
  %i.hx = add nuw i32 %.sroa.0.0.i89.i.i, 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cn, %bb.cf
  %.sroa.3.0.i.i = phi i32 [ %.sroa.0.0.i89.i.i, %bb.cf ], [ %.sroa.0.0.i100.i.i, %bb.cn ]
  %.sroa.517.0.i.i = phi i32 [ %i.hx, %bb.cf ], [ %i.in, %bb.cn ]
  %.sroa.016.sroa.0.0.i.i = phi i32 [ 4, %bb.cf ], [ 3, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !538
  br label %bb.cr

bb.ch:                                            ; preds = %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ck, align 8, !alias.scope !535, !noalias !536
  br label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr null, ptr %i.ck, align 8, !alias.scope !535, !noalias !536
  %i.hz = load i8, ptr %i.fn, align 4, !range !15, !noalias !536, !noundef !4
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.cj, label %bb.ci, !prof !14

bb.ci:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.ic = load i32, ptr %i.ib, align 8, !noalias !536, !noundef !4
  br label %.noexc107.i.i

bb.cj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.id = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fg)
          to label %.noexc107.i.i unwind label %.loopexit393.i, !noalias !536

.noexc107.i.i:                                    ; preds = %bb.cj, %bb.ci
  %.sroa.0.0.i100.i.i = phi i32 [ %i.ic, %bb.ci ], [ %i.id, %bb.cj ] ; 3 uses
  %i.ie = load i64, ptr %i.fg, align 8, !range !16, !noalias !536, !noundef !4
  %i.if = trunc nuw i64 %i.ie to i1
  %i.ig = load ptr, ptr %i.fu, align 8, !noalias !536, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.if, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %.noexc107.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !536, !noundef !4 ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, 4294967295
  %i.ik = shl nuw i64 %i.ii, 32
  %.sroa.09.0.insert.insert.i.i103.i.i = select i1 %i.ij, i64 513, i64 %i.ik ; 2 uses
  %i.il = trunc i64 %.sroa.09.0.insert.insert.i.i103.i.i to i1
  br i1 %i.il, label %bb.cl, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i, !prof !14

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !538
  br label %.invoke131.i.i

.invoke131.i.i:                                   ; preds = %bb.cl, %bb.ca, %bb.ba
  %.sink.i.i = phi ptr [ %i.f, %bb.ba ], [ %i.e, %bb.ca ], [ %i.d, %bb.cl ] ; 2 uses
  store i8 2, ptr %.sink.i.i, align 1, !noalias !538
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %.sink.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.cont132.i.i unwind label %.loopexit.split-lp394.i, !noalias !536

.cont132.i.i:                                     ; preds = %.invoke131.i.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i: ; preds = %bb.ck
  %.sroa.6.0.extract.shift.i.i.i105.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i103.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i106.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i105.i.i to i32
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc107.i.i
  %i.im = load i32, ptr %i.ig, align 8, !noalias !536, !noundef !4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i
  %.sroa.02.0.i101.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i106.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i ], [ %i.im, %bb.cm ]
  %i.in = add i32 %.sroa.02.0.i101.i.i, %.sroa.0.0.i100.i.i ; 2 uses
  %.not.i102.i.i = icmp ugt i32 %.sroa.0.0.i100.i.i, %i.in
  br i1 %.not.i102.i.i, label %.invoke.i.i, label %bb.cg, !prof !14

.invoke.i.i:                                      ; preds = %bb.cn, %bb.cc, %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp394.i, !noalias !536

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread310.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1188.invoke.i, %.invoke1197.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit385.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1189.i.a
  %lpad.loopexit.split-lp386.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit392.i:                                   ; preds = %bb.av, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.io = load i64, ptr %i.cs, align 8, !noalias !529, !noundef !4 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %._crit_edge.i, label %.lr.ph.i

.body136.i:                                       ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gp, %bb.gn, %bb.gd, %bb.gc, %bb.gb, %bb.fm, %bb.fl, %bb.fk, %bb.fd, %bb.fc, %bb.fb, %bb.ee, %bb.ds, %bb.dr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit374.i
  %.pn86.i = phi { ptr, i32 } [ %i.pe, %bb.fl ], [ %.pn.i, %bb.gc ], [ %i.mc, %bb.ee ], [ %i.ou, %bb.fc ], [ %i.qz, %bb.gp ], [ %i.qy, %bb.gn ], [ %lpad.phi405.i, %bb.dr ], [ %i.rx, %bb.gx ], [ %lpad.phi405.i, %bb.ds ], [ %i.ou, %bb.fd ], [ %i.ou, %bb.fb ], [ %i.pe, %bb.fm ], [ %i.pe, %bb.fk ], [ %.pn.i, %bb.gd ], [ %.pn.i, %bb.gb ], [ %i.rx, %bb.gy ], [ %i.rx, %bb.gw ], [ %lpad.loopexit375.i, %.loopexit374.i ], [ %lpad.loopexit381.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit398.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp399.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 4 uses
  %.val96.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !529, !noundef !4 ; 3 uses
  %.val97.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !529 ; 6 uses
  %i.iq = add nsw i32 %.val96.i, -3
  %i.ir = icmp samesign ugt i32 %.val96.i, 2
  %narrow.i = select i1 %i.ir, i32 %i.iq, i32 2
  switch i32 %narrow.i, label %bb.co [
    i32 0, label %bb.cp
    i32 1, label %bb.cq
  ]

bb.co:                                            ; preds = %.body136.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val96.i, ptr %.val97.i)
          to label %.thread.i unwind label %bb.fh

bb.cp:                                            ; preds = %.body136.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !531
  %i.is = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !noalias !564, !noundef !4
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.is, align 4, !noalias !564
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %.invoke, label %.thread.i

bb.cq:                                            ; preds = %.body136.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !531
  %i.iw = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !noalias !567, !noundef !4
  %i.iy = add i32 %i.ix, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.iw, align 4, !noalias !567
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %.invoke, label %.thread.i

.invoke:                                          ; preds = %bb.cq, %bb.cp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val97.i) #30
          to label %.thread.i unwind label %bb.fh

.loopexit374.i:                                   ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit156.i, %.preheader.i
  %lpad.loopexit375.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader379.i
  %lpad.loopexit381.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1190.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit139.i, %bb.eb, %bb.dv, %bb.di, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charCs33K2ylI4knu_10hir_expand.exit.thread.invoke.i, %.invoke1191.i, %.invoke1195.i, %.invoke1193.i
  %lpad.loopexit.split-lp399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15247.1.ph.i = phi i32 [ %i.fc, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 10 uses
  %.sroa.13.1.ph.i = phi i64 [ %i.fe, %bb.ar ], [ %.sroa.13.0.copyload245.i, %bb.au ], [ 0, %bb.cg ]
  %.sroa.11241.1.ph.i = phi ptr [ %i.dn, %bb.ar ], [ %.sroa.11241.0.copyload243.i, %bb.au ], [ %i.fg, %bb.cg ]
  %i.ja = phi i32 [ %.sroa.11.0.i, %bb.ar ], [ %.sroa.11.0.copyload240.i, %bb.au ], [ %.sroa.11.0.i, %bb.cg ] ; 5 uses
  %i.jb = phi i32 [ 4, %bb.ar ], [ %i.du, %bb.au ], [ %.sroa.016.sroa.0.0.i.i, %bb.cg ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !529
  store i32 %i.jb, ptr %i.ag, align 8, !noalias !529
  store i32 %i.ja, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !529
  store ptr %.sroa.11241.1.ph.i, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !529
  store i64 %.sroa.13.1.ph.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false), !noalias !529
  %i.jc = icmp samesign ugt i32 %i.jb, 2
  br i1 %i.jc, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jd = icmp eq i32 %i.jb, 1
  br i1 %i.jd, label %bb.hc, label %bb.hd

bb.ct:                                            ; preds = %bb.cr
  %i.je = invoke fastcc noundef i16 @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE4kindCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531 ; 5 uses

bb.cu:                                            ; preds = %bb.ct
  switch i16 %i.je, label %bb.er [
    i16 150, label %bb.cv
    i16 153, label %bb.es
    i16 53, label %bb.cw
    i16 2, label %bb.cw
    i16 3, label %bb.cw
    i16 4, label %bb.cw
    i16 5, label %bb.cw
    i16 6, label %bb.cw
    i16 7, label %bb.cw
    i16 8, label %bb.cw
    i16 9, label %bb.cw
    i16 10, label %bb.cw
    i16 11, label %bb.cw
    i16 12, label %bb.cw
    i16 13, label %bb.cw
    i16 14, label %bb.cw
    i16 15, label %bb.cw
    i16 16, label %bb.cw
    i16 17, label %bb.cw
    i16 18, label %bb.cw
    i16 19, label %bb.cw
    i16 20, label %bb.cw
    i16 21, label %bb.cw
    i16 22, label %bb.cw
    i16 23, label %bb.cw
    i16 25, label %bb.cw
    i16 26, label %bb.cw
    i16 27, label %bb.cw
    i16 28, label %bb.cw
    i16 29, label %bb.cw
    i16 30, label %bb.cw
    i16 31, label %bb.cw
    i16 32, label %bb.cw
    i16 33, label %bb.cw
    i16 34, label %bb.cw
    i16 35, label %bb.cw
    i16 36, label %bb.cw
    i16 37, label %bb.cw
    i16 38, label %bb.cw
    i16 39, label %bb.cw
    i16 40, label %bb.cw
    i16 41, label %bb.cw
    i16 42, label %bb.cw
    i16 43, label %bb.cw
    i16 44, label %bb.cw
    i16 45, label %bb.cw
    i16 46, label %bb.cw
    i16 47, label %bb.cw
    i16 48, label %bb.cw
    i16 49, label %bb.cw
    i16 50, label %bb.cw
    i16 51, label %bb.cw
    i16 52, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !529
  invoke void @_RNvXs_CslVwgvvnzcNb_13syntax_bridgeRNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB4_10SpanMapper8span_forCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.cv
  %.val100.i = load i8, ptr %i.cz, align 4, !alias.scope !526, !noalias !531
  %i.jf = invoke noundef nonnull align 8 ptr @_RNvMs5_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynToken5token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

.noexc114.i:                                      ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i
  %i.jg = trunc nuw i8 %.val100.i to i1
  invoke void @_RNvCslVwgvvnzcNb_13syntax_bridge19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jf, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.af, i1 noundef zeroext %i.jg, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCs33K2ylI4knu_10hir_expand.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.noexc114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !529
  br label %.loopexit.i

bb.cw:                                            ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  %i.jh = load ptr, ptr %i.cr, align 8, !noalias !529, !nonnull !4, !noundef !4 ; 2 uses
  %i.ji = load i64, ptr %i.cs, align 8, !noalias !529, !noundef !4 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %.loopexit378.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %.idx372.i = shl nuw nsw i64 %i.ji, 3
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.idx372.i
  %i.jl = load i64, ptr %i.ct, align 8, !range !70, !noalias !529, !noundef !4
  %i.jm = load i64, ptr %i.cu, align 8, !noalias !529, !noundef !4 ; 4 uses
  %i.jn = load ptr, ptr %i.cv, align 8, !noalias !529, !nonnull !4 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv969.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next970.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ] ; 2 uses
  %i.jo = phi ptr [ %i.jk, %.lr.ph.i.preheader.i ], [ %i.jp, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ]
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -8 ; 3 uses
  %.val.i116.i = load i64, ptr %i.jp, align 8, !noalias !570, !noundef !4 ; 7 uses
  %i.jq = icmp ult i64 %.val.i116.i, %i.jm        ; 3 uses
  switch i64 %i.jl, label %.lr.ph.i.i.unreachabledefault [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
    i64 2, label %bb.cz
  ]

.lr.ph.i.i.unreachabledefault:                    ; preds = %.lr.ph.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc208.i, %.noexc118.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.da, label %.invoke1193.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.db, label %.invoke1193.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.dc, label %.invoke1193.i

bb.da:                                            ; preds = %bb.cx
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.js = load i8, ptr %i.jr, align 8, !range !75, !noalias !531, !noundef !4
  %i.jt = icmp eq i8 %i.js, 3
  br i1 %i.jt, label %.noexc118.i, label %.invoke1195.i, !prof !76

.invoke1193.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.ju = phi i64 [ %.val.i116.i, %bb.cz ], [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cy ], [ %.val.i202.i, %bb.hh ], [ %.val.i202.i, %bb.hi ], [ %.val.i202.i, %bb.hj ]
  %i.jv = phi i64 [ %i.jm, %bb.cz ], [ %i.jm, %bb.cx ], [ %i.jm, %bb.cy ], [ %i.ss, %bb.hh ], [ %i.ss, %bb.hi ], [ %i.ss, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ju, i64 noundef %i.jv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1194.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !531

.cont1194.i:                                      ; preds = %.invoke1193.i
  unreachable

.invoke1195.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !531

.cont1196.i:                                      ; preds = %.invoke1195.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !range !75, !noalias !531, !noundef !4
  %i.jy = icmp eq i8 %i.jx, 3
  br i1 %i.jy, label %.noexc118.i, label %.invoke1195.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 8, !range !75, !noalias !531, !noundef !4
  %i.kb = icmp eq i8 %i.ka, 3
  br i1 %i.kb, label %.noexc118.i, label %.invoke1195.i, !prof !76

.noexc118.i:                                      ; preds = %bb.dc, %bb.db, %bb.da
  %.sink.i219.i = phi ptr [ %i.jw, %bb.db ], [ %i.jz, %bb.dc ], [ %i.jr, %bb.da ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink.i219.i, i64 1
  %.sroa.0.0.i220.i = load i8, ptr %i.kc, align 1, !range !75, !noalias !531, !noundef !4
  switch i8 %.sroa.0.0.i220.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i
    i8 1, label %bb.dd
    i8 2, label %bb.de
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i
  ]

bb.dd:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i

bb.de:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %.noexc118.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.de ], [ 8, %bb.dd ], [ 6, %.noexc118.i ]
  %i.kd = icmp eq i16 %i.je, %.sink1.i.i.i.i.i.i
  br i1 %i.kd, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i, %.noexc118.i
  %i.ke = icmp eq ptr %i.jh, %i.jp
  %indvars.iv.next970.i = add nuw nsw i64 %indvars.iv969.i, 1
  br i1 %i.ke, label %.loopexit378.i, label %.lr.ph.i.i

.loopexit378.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i, %bb.cw
end_hunk_4
begin_hunk_5_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeRNtNtCsdovh4xi6v3I_4span3map7SpanMapECs33K2ylI4knu_10hir_expand:bb.a
    i16 149, label %bb.fi
    i16 154, label %bb.ft
  ]

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !529
  invoke void @_RNvXs_CslVwgvvnzcNb_13syntax_bridgeRNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB4_10SpanMapper8span_forCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i: ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !529
  %.val105.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !529, !noundef !4
  %.val106.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !529
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, i32 %.val105.i, ptr %.val106.i)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

bb.ew:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i
  %i.oj = load i8, ptr %i.v, align 8, !range !106, !noalias !529, !noundef !4 ; 2 uses
  %i.ok = icmp samesign ugt i8 %i.oj, 23
  %i.ol = zext nneg i8 %i.oj to i64               ; 2 uses
  %i.om = add nsw i64 %i.ol, -23
  %i.on = select i1 %i.ok, i64 %i.om, i64 0
  switch i64 %i.on, label %bb.ex [
    i64 0, label %bb.fa
    i64 1, label %bb.ey
    i64 2, label %bb.ez
  ]

bb.ex:                                            ; preds = %bb.gs, %bb.fx, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i, %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.oo = load ptr, ptr %i.dh, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.op = load i64, ptr %i.di, align 8, !noalias !529, !noundef !4
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ew
  %i.oq = load ptr, ptr %i.dh, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.or = load i64, ptr %i.di, align 8, !noalias !529, !noundef !4
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ew
  %.sroa.032.0.i = phi ptr [ %i.os, %bb.ez ], [ %i.oo, %bb.ey ], [ %i.dj, %bb.ew ]
  %.sroa.433.0.i = phi i64 [ %i.or, %bb.ez ], [ %i.op, %bb.ey ], [ %i.ol, %bb.ew ]
  %i.ot = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.032.0.i, i64 noundef %.sroa.433.0.i)
          to label %bb.fe unwind label %bb.fb, !noalias !531

bb.fb:                                            ; preds = %bb.fa
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.ov = load i8, ptr %i.v, align 8, !range !106, !alias.scope !609, !noalias !529, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.ov, 25
  br i1 %switch.i.i.i, label %.body136.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.ow = load ptr, ptr %i.dh, align 8, !alias.scope !616, !noalias !529, !nonnull !4, !noundef !4
  %i.ox = atomicrmw sub ptr %i.ow, i64 1 release, align 8, !noalias !617
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %bb.fd, label %.body136.i

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #30
          to label %.body136.i unwind label %bb.fh, !noalias !531

bb.fe:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.42.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !529
  store ptr %i.ot, ptr %i.cq, align 8, !noalias !529
  store i8 0, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !529
  store i32 2, ptr %i.aa, align 8, !noalias !529
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.oz = load i8, ptr %i.v, align 8, !range !106, !alias.scope !624, !noalias !529, !noundef !4
  %switch.i.i160.i = icmp samesign ult i8 %i.oz, 25
  br i1 %switch.i.i160.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.pa = load ptr, ptr %i.dh, align 8, !alias.scope !631, !noalias !529, !nonnull !4, !noundef !4
  %i.pb = atomicrmw sub ptr %i.pa, i64 1 release, align 8, !noalias !632
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %bb.fg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i: ; preds = %bb.fg, %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !529
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fh:                                            ; preds = %.invoke, %bb.co, %.thread.i, %bb.gy, %bb.gp, %bb.gk, %bb.gd, %bb.fm, %bb.fd
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !531
  unreachable

bb.fi:                                            ; preds = %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !529
  %.val103.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !529, !noundef !4
  %.val104.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !529
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, i32 %.val103.i, ptr %.val104.i)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !529
  invoke void @_RNvXs_CslVwgvvnzcNb_13syntax_bridgeRNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB4_10SpanMapper8span_forCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i unwind label %bb.fk, !noalias !531

bb.fk:                                            ; preds = %bb.fp, %bb.fj
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.pf = load i8, ptr %i.u, align 8, !range !106, !alias.scope !639, !noalias !529, !noundef !4
  %switch.i.i165.i = icmp samesign ult i8 %i.pf, 25
  br i1 %switch.i.i165.i, label %.body136.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.pg = load ptr, ptr %i.de, align 8, !alias.scope !646, !noalias !529, !nonnull !4, !noundef !4
  %i.ph = atomicrmw sub ptr %i.pg, i64 1 release, align 8, !noalias !647
  %i.pi = icmp eq i64 %i.ph, 1
  br i1 %i.pi, label %bb.fm, label %.body136.i

bb.fm:                                            ; preds = %bb.fl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de) #30
          to label %.body136.i unwind label %bb.fh, !noalias !531

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i: ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !529
  %i.pj = load i8, ptr %i.u, align 8, !range !106, !noalias !529, !noundef !4 ; 2 uses
  %i.pk = icmp samesign ugt i8 %i.pj, 23
  %i.pl = zext nneg i8 %i.pj to i64               ; 2 uses
  %i.pm = add nsw i64 %i.pl, -23
  %i.pn = select i1 %i.pk, i64 %i.pm, i64 0
  switch i64 %i.pn, label %bb.ex [
    i64 0, label %bb.fp
    i64 1, label %bb.fn
    i64 2, label %bb.fo
  ]

bb.fn:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i
  %i.po = load ptr, ptr %i.de, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.pp = load i64, ptr %i.df, align 8, !noalias !529, !noundef !4
  br label %bb.fp

bb.fo:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i
  %i.pq = load ptr, ptr %i.de, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.pr = load i64, ptr %i.df, align 8, !noalias !529, !noundef !4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i
  %.sroa.034.0.i = phi ptr [ %i.ps, %bb.fo ], [ %i.po, %bb.fn ], [ %i.dg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i ]
  %.sroa.435.0.i = phi i64 [ %i.pr, %bb.fo ], [ %i.pp, %bb.fn ], [ %i.pl, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit164.i ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.034.0.i, i64 noundef %.sroa.435.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.t)
          to label %bb.fq unwind label %bb.fk, !noalias !531

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !529
  store i32 0, ptr %i.aa, align 8, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !529
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.pt = load i8, ptr %i.u, align 8, !range !106, !alias.scope !654, !noalias !529, !noundef !4
  %switch.i.i168.i = icmp samesign ult i8 %i.pt, 25
  br i1 %switch.i.i168.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.pu = load ptr, ptr %i.de, align 8, !alias.scope !661, !noalias !529, !nonnull !4, !noundef !4
  %i.pv = atomicrmw sub ptr %i.pu, i64 1 release, align 8, !noalias !662
  %i.pw = icmp eq i64 %i.pv, 1
  br i1 %i.pw, label %bb.fs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i

bb.fs:                                            ; preds = %bb.fr
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i: ; preds = %bb.fs, %bb.fr, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !529
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.ft:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !529
  %i.px = add i32 %.sroa.15247.1.ph.i, 1          ; 3 uses
  %.not81.i = icmp eq i32 %.sroa.15247.1.ph.i, -1
  br i1 %.not81.i, label %bb.fu, label %bb.fv, !prof !14

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !531

bb.fv:                                            ; preds = %bb.ft
  invoke void @_RNvXs_CslVwgvvnzcNb_13syntax_bridgeRNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB4_10SpanMapper8span_forCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %i.px)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i: ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.437.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !529
  store i32 39, ptr %i.da, align 4, !noalias !529
  store i8 1, ptr %.sroa.538.0..sroa_idx.i, align 4, !noalias !529
  store i32 1, ptr %i.r, align 8, !noalias !529
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

bb.fw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7280.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !529
  %.val101.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !529, !noundef !4
  %.val102.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !529
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, i32 %.val101.i, ptr %.val102.i)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

bb.fx:                                            ; preds = %bb.fw
  %i.py = load i8, ptr %i.p, align 8, !range !106, !noalias !529, !noundef !4 ; 2 uses
  %i.pz = icmp samesign ugt i8 %i.py, 23
  %i.qa = zext nneg i8 %i.py to i64               ; 2 uses
  %i.qb = add nsw i64 %i.qa, -23
  %i.qc = select i1 %i.pz, i64 %i.qb, i64 0
  switch i64 %i.qc, label %bb.ex [
    i64 0, label %bb.ga
    i64 1, label %bb.fy
    i64 2, label %bb.fz
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.qd = load ptr, ptr %i.db, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.qe = load i64, ptr %i.dc, align 8, !noalias !529, !noundef !4
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.qf = load ptr, ptr %i.db, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.qg = load i64, ptr %i.dc, align 8, !noalias !529, !noundef !4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx
  %.sroa.044.0.i = phi ptr [ %i.qh, %bb.fz ], [ %i.qd, %bb.fy ], [ %i.dd, %bb.fx ] ; 3 uses
  %.sroa.647.0.i = phi i64 [ %i.qg, %bb.fz ], [ %i.qe, %bb.fy ], [ %i.qa, %bb.fx ] ; 5 uses
  %i.qi = icmp ult i64 %.sroa.647.0.i, 2
  br i1 %i.qi, label %.split.i, label %bb.ge

.split.i:                                         ; preds = %bb.ga
  %i.qj = icmp eq i64 %.sroa.647.0.i, 1
  br i1 %i.qj, label %bb.gf, label %bb.gg, !prof !76

bb.gb:                                            ; preds = %bb.gk, %.loopexit.split-lp407.i, %.loopexit406.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi415.i, %bb.gk ], [ %lpad.loopexit408.i, %.loopexit406.i ], [ %lpad.loopexit.split-lp409.i, %.loopexit.split-lp407.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.qk = load i8, ptr %i.p, align 8, !range !106, !alias.scope !669, !noalias !529, !noundef !4
  %switch.i.i174.i = icmp samesign ult i8 %i.qk, 25
  br i1 %switch.i.i174.i, label %.body136.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.ql = load ptr, ptr %i.db, align 8, !alias.scope !676, !noalias !529, !nonnull !4, !noundef !4
  %i.qm = atomicrmw sub ptr %i.ql, i64 1 release, align 8, !noalias !677
  %i.qn = icmp eq i64 %i.qm, 1
  br i1 %i.qn, label %bb.gd, label %.body136.i

bb.gd:                                            ; preds = %bb.gc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db) #30
          to label %.body136.i unwind label %bb.fh, !noalias !531

.loopexit406.i:                                   ; preds = %bb.gf
  %lpad.loopexit408.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp407.i:                          ; preds = %bb.gg
  %lpad.loopexit.split-lp409.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ge:                                            ; preds = %bb.ga
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !alias.scope !678, !noalias !531, !noundef !4
  %i.qq = icmp sgt i8 %i.qp, -65
  br i1 %i.qq, label %bb.gf, label %bb.gg, !prof !76

bb.gf:                                            ; preds = %bb.ge, %.split.i
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qs = add i64 %.sroa.647.0.i, -1
  %i.qt = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qr, i64 noundef %i.qs)
          to label %bb.gh unwind label %.loopexit406.i, !noalias !531 ; 3 uses

bb.gg:                                            ; preds = %bb.ge, %.split.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0.i, i64 noundef %.sroa.647.0.i, i64 noundef 1, i64 noundef %.sroa.647.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %bb.ep unwind label %.loopexit.split-lp407.i, !noalias !531

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !529
  %.not83.i = icmp ugt i32 %i.px, %.sroa.19.1.ph.i
  br i1 %.not83.i, label %bb.gi, label %bb.gj, !prof !14

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp412.i, !noalias !531

bb.gj:                                            ; preds = %bb.gh
  invoke void @_RNvXs_CslVwgvvnzcNb_13syntax_bridgeRNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB4_10SpanMapper8span_forCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, i32 noundef %i.px, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i unwind label %.loopexit411.i, !noalias !531

.loopexit411.i:                                   ; preds = %bb.gj
  %lpad.loopexit413.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.loopexit.split-lp412.i:                          ; preds = %bb.gi
  %lpad.loopexit.split-lp414.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gk:                                            ; preds = %.loopexit.split-lp412.i, %.loopexit411.i
  %lpad.phi415.i = phi { ptr, i32 } [ %lpad.loopexit413.i, %.loopexit411.i ], [ %lpad.loopexit.split-lp414.i, %.loopexit.split-lp412.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand(ptr nonnull %i.qt) #29
          to label %bb.gb unwind label %bb.fh, !noalias !531

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i: ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.i, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !529
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.qu = load i8, ptr %i.p, align 8, !range !106, !alias.scope !687, !noalias !529, !noundef !4
  %switch.i.i179.i = icmp samesign ult i8 %i.qu, 25
  br i1 %switch.i.i179.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i, label %bb.gl

bb.gl:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.qv = load ptr, ptr %i.db, align 8, !alias.scope !694, !noalias !529, !nonnull !4, !noundef !4
  %i.qw = atomicrmw sub ptr %i.qv, i64 1 release, align 8, !noalias !695
  %i.qx = icmp eq i64 %i.qw, 1
  br i1 %i.qx, label %bb.gm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i unwind label %bb.gp, !noalias !531

bb.gn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i: ; preds = %bb.gm, %bb.gl, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !529
  store i32 2, ptr %i.n, align 8, !noalias !529
  store ptr %i.qt, ptr %.sroa.5279.0..sroa_idx.i, align 8, !noalias !529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7280.i, i64 20, i1 false), !noalias !529
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !529
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.n)
          to label %bb.go unwind label %bb.gn, !noalias !531

bb.go:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7280.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !529
  br label %.loopexit.i

bb.gp:                                            ; preds = %bb.gm
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 2, ptr nonnull %i.qt) #29
          to label %.body136.i unwind label %bb.fh, !noalias !531

.loopexit.i:                                      ; preds = %bb.hs, %bb.eq, %bb.hr, %bb.go, %bb.eu, %bb.ec, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCs33K2ylI4knu_10hir_expand.exit.i
  %.val94.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !529, !noundef !4 ; 3 uses
  %.val95.i = load ptr, ptr %.sroa.11241.0..sroa_idx.i, align 8, !noalias !529 ; 7 uses
  %i.ra = add nsw i32 %.val94.i, -3
  %i.rb = icmp samesign ugt i32 %.val94.i, 2
  %narrow.i.i = select i1 %i.rb, i32 %i.ra, i32 2
  switch i32 %narrow.i.i, label %.invoke1197.i [
    i32 0, label %bb.gq
    i32 1, label %bb.gr
  ]

.invoke1197.i:                                    ; preds = %bb.ht, %.loopexit.i
  %i.rc = phi i32 [ %.val94.i, %.loopexit.i ], [ %.val92.i, %bb.ht ]
  %i.rd = phi ptr [ %.val95.i, %.loopexit.i ], [ %.val93.i, %bb.ht ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %i.rc, ptr %i.rd)
          to label %.backedge.i unwind label %.thread310.loopexit.split-lp.loopexit.i, !noalias !531

bb.gq:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.re = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !noalias !696, !noundef !4
  %i.rg = add i32 %i.rf, -1                       ; 2 uses
  store i32 %i.rg, ptr %i.re, align 4, !noalias !696
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %.invoke1188.invoke.i, label %.backedge.i

bb.gr:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !noalias !699, !noundef !4
  %i.rk = add i32 %i.rj, -1                       ; 2 uses
  store i32 %i.rk, ptr %i.ri, align 4, !noalias !699
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %.invoke1188.invoke.i, label %.backedge.i

.invoke1188.invoke.i:                             ; preds = %bb.hv, %bb.hu, %bb.gr, %bb.gq
  %i.rm = phi ptr [ %.val95.i, %bb.gq ], [ %.val95.i, %bb.gr ], [ %.val93.i, %bb.hv ], [ %.val93.i, %bb.hu ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.rm) #30
          to label %.backedge.i unwind label %.thread310.loopexit.split-lp.loopexit.i, !noalias !531

bb.gs:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !529
  %i.rn = load i8, ptr %i.z, align 8, !range !106, !noalias !529, !noundef !4 ; 2 uses
  %i.ro = icmp samesign ugt i8 %i.rn, 23
  %i.rp = zext nneg i8 %i.rn to i64               ; 2 uses
  %i.rq = add nsw i64 %i.rp, -23
  %i.rr = select i1 %i.ro, i64 %i.rq, i64 0
  switch i64 %i.rr, label %bb.ex [
    i64 0, label %bb.gv
    i64 1, label %bb.gt
    i64 2, label %bb.gu
  ]

bb.gt:                                            ; preds = %bb.gs
  %i.rs = load ptr, ptr %i.dk, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.rt = load i64, ptr %i.dl, align 8, !noalias !529, !noundef !4
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.ru = load ptr, ptr %i.dk, align 8, !noalias !529, !nonnull !4, !noundef !4
  %i.rv = load i64, ptr %i.dl, align 8, !noalias !529, !noundef !4
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs
  %.sroa.026.0.i = phi ptr [ %i.rw, %bb.gu ], [ %i.rs, %bb.gt ], [ %i.dm, %bb.gs ]
  %.sroa.427.0.i = phi i64 [ %i.rv, %bb.gu ], [ %i.rt, %bb.gt ], [ %i.rp, %bb.gs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !529
  invoke void @_RNvXs_CslVwgvvnzcNb_13syntax_bridgeRNtNtCsdovh4xi6v3I_4span3map7SpanMapNtB4_10SpanMapper8span_forCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, i32 noundef %.sroa.15247.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i unwind label %bb.gw, !noalias !531

bb.gw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i, %bb.gv
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.ry = load i8, ptr %i.z, align 8, !range !106, !alias.scope !708, !noalias !529, !noundef !4
  %switch.i.i188.i = icmp samesign ult i8 %i.ry, 25
  br i1 %switch.i.i188.i, label %.body136.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.rz = load ptr, ptr %i.dk, align 8, !alias.scope !715, !noalias !529, !nonnull !4, !noundef !4
  %i.sa = atomicrmw sub ptr %i.rz, i64 1 release, align 8, !noalias !716
  %i.sb = icmp eq i64 %i.sa, 1
  br i1 %i.sb, label %bb.gy, label %.body136.i

bb.gy:                                            ; preds = %bb.gx
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk) #30
          to label %.body136.i unwind label %bb.fh, !noalias !531

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i: ; preds = %bb.gv
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.026.0.i, i64 noundef %.sroa.427.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.x)
          to label %bb.gz unwind label %bb.gw, !noalias !531

bb.gz:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !529
  store i32 2, ptr %i.aa, align 8, !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !529
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.sc = load i8, ptr %i.z, align 8, !range !106, !alias.scope !723, !noalias !529, !noundef !4
  %switch.i.i191.i = icmp samesign ult i8 %i.sc, 25
  br i1 %switch.i.i191.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.sd = load ptr, ptr %i.dk, align 8, !alias.scope !730, !noalias !529, !nonnull !4, !noundef !4
  %i.se = atomicrmw sub ptr %i.sd, i64 1 release, align 8, !noalias !731
  %i.sf = icmp eq i64 %i.se, 1
  br i1 %i.sf, label %bb.hb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i

bb.hb:                                            ; preds = %bb.ha
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i: ; preds = %bb.hb, %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !529
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %.noexc197.i, %.noexc196.i, %.thread359.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit193.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit170.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit162.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit151.i
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.aa)
end_hunk_5
begin_hunk_6_@_RINvCslVwgvvnzcNb_13syntax_bridge34syntax_node_to_token_tree_modifiedNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB19_11cfg_process20macro_input_callbacks0_0EB19_:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !784, !noundef !4 ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, 4294967295
  %i.ht = shl nuw i64 %i.hr, 32
  %.sroa.09.0.insert.insert.i.i92.i.i = select i1 %i.hs, i64 513, i64 %i.ht ; 2 uses
  %i.hu = trunc i64 %.sroa.09.0.insert.insert.i.i92.i.i to i1
  br i1 %i.hu, label %bb.ca, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i, !prof !14

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !786
  br label %.invoke131.i.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i: ; preds = %bb.bz
  %.sroa.6.0.extract.shift.i.i.i94.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i92.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i95.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i94.i.i to i32
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc96.i.i
  %i.hv = load i32, ptr %i.hp, align 8, !noalias !784, !noundef !4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i
  %.sroa.02.0.i90.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i95.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i93.i.i ], [ %i.hv, %bb.cb ]
  %i.hw = xor i32 %.sroa.0.0.i89.i.i, -1
  %.not.i91.i.i = icmp ugt i32 %.sroa.02.0.i90.i.i, %i.hw
  br i1 %.not.i91.i.i, label %.invoke.i.i, label %bb.cd, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %.not42.i.i = icmp eq i32 %.sroa.0.0.i89.i.i, -1
  br i1 %.not42.i.i, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.as unwind label %.loopexit.split-lp393.i, !noalias !784

bb.cf:                                            ; preds = %bb.cd
  %i.hx = add nuw i32 %.sroa.0.0.i89.i.i, 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cn, %bb.cf
  %.sroa.3.0.i.i = phi i32 [ %.sroa.0.0.i89.i.i, %bb.cf ], [ %.sroa.0.0.i100.i.i, %bb.cn ]
  %.sroa.517.0.i.i = phi i32 [ %i.hx, %bb.cf ], [ %i.in, %bb.cn ]
  %.sroa.016.sroa.0.0.i.i = phi i32 [ 4, %bb.cf ], [ 3, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !786
  br label %bb.cr

bb.ch:                                            ; preds = %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ck, align 8, !alias.scope !783, !noalias !784
  br label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr null, ptr %i.ck, align 8, !alias.scope !783, !noalias !784
  %i.hz = load i8, ptr %i.fn, align 4, !range !15, !noalias !784, !noundef !4
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.cj, label %bb.ci, !prof !14

bb.ci:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.ic = load i32, ptr %i.ib, align 8, !noalias !784, !noundef !4
  br label %.noexc107.i.i

bb.cj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECs33K2ylI4knu_10hir_expand.exit84.i.i
  %i.id = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fg)
          to label %.noexc107.i.i unwind label %.loopexit392.i, !noalias !784

.noexc107.i.i:                                    ; preds = %bb.cj, %bb.ci
  %.sroa.0.0.i100.i.i = phi i32 [ %i.ic, %bb.ci ], [ %i.id, %bb.cj ] ; 3 uses
  %i.ie = load i64, ptr %i.fg, align 8, !range !16, !noalias !784, !noundef !4
  %i.if = trunc nuw i64 %i.ie to i1
  %i.ig = load ptr, ptr %i.fu, align 8, !noalias !784, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.if, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %.noexc107.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !784, !noundef !4 ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, 4294967295
  %i.ik = shl nuw i64 %i.ii, 32
  %.sroa.09.0.insert.insert.i.i103.i.i = select i1 %i.ij, i64 513, i64 %i.ik ; 2 uses
  %i.il = trunc i64 %.sroa.09.0.insert.insert.i.i103.i.i to i1
  br i1 %i.il, label %bb.cl, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i, !prof !14

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !786
  br label %.invoke131.i.i

.invoke131.i.i:                                   ; preds = %bb.cl, %bb.ca, %bb.ba
  %.sink.i.i = phi ptr [ %i.f, %bb.ba ], [ %i.e, %bb.ca ], [ %i.d, %bb.cl ] ; 2 uses
  store i8 2, ptr %.sink.i.i, align 1, !noalias !786
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %.sink.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.cont132.i.i unwind label %.loopexit.split-lp393.i, !noalias !784

.cont132.i.i:                                     ; preds = %.invoke131.i.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i: ; preds = %bb.ck
  %.sroa.6.0.extract.shift.i.i.i105.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i103.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i106.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i105.i.i to i32
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc107.i.i
  %i.im = load i32, ptr %i.ig, align 8, !noalias !784, !noundef !4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i
  %.sroa.02.0.i101.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i106.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i104.i.i ], [ %i.im, %bb.cm ]
  %i.in = add i32 %.sroa.02.0.i101.i.i, %.sroa.0.0.i100.i.i ; 2 uses
  %.not.i102.i.i = icmp ugt i32 %.sroa.0.0.i100.i.i, %i.in
  br i1 %.not.i102.i.i, label %.invoke.i.i, label %bb.cg, !prof !14

.invoke.i.i:                                      ; preds = %bb.cn, %bb.cc, %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp393.i, !noalias !784

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread309.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread309.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1187.invoke.i, %.invoke1196.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit384.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread309.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1188.i.a
  %lpad.loopexit.split-lp385.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit391.i:                                   ; preds = %bb.av, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.io = load i64, ptr %i.cs, align 8, !noalias !777, !noundef !4 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %._crit_edge.i, label %.lr.ph.i

.body135.i:                                       ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gp, %bb.gn, %bb.gd, %bb.gc, %bb.gb, %bb.fm, %bb.fl, %bb.fk, %bb.fd, %bb.fc, %bb.fb, %bb.ee, %bb.ds, %bb.dr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit373.i
  %.pn86.i = phi { ptr, i32 } [ %i.pf, %bb.fl ], [ %.pn.i, %bb.gc ], [ %i.md, %bb.ee ], [ %i.ov, %bb.fc ], [ %i.ra, %bb.gp ], [ %i.qz, %bb.gn ], [ %lpad.phi404.i, %bb.dr ], [ %i.ry, %bb.gx ], [ %lpad.phi404.i, %bb.ds ], [ %i.ov, %bb.fd ], [ %i.ov, %bb.fb ], [ %i.pf, %bb.fm ], [ %i.pf, %bb.fk ], [ %.pn.i, %bb.gd ], [ %.pn.i, %bb.gb ], [ %i.ry, %bb.gy ], [ %i.ry, %bb.gw ], [ %lpad.loopexit374.i, %.loopexit373.i ], [ %lpad.loopexit380.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit397.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp398.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 4 uses
  %.val96.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !777, !noundef !4 ; 3 uses
  %.val97.i = load ptr, ptr %.sroa.11240.0..sroa_idx.i, align 8, !noalias !777 ; 6 uses
  %i.iq = add nsw i32 %.val96.i, -3
  %i.ir = icmp samesign ugt i32 %.val96.i, 2
  %narrow.i = select i1 %i.ir, i32 %i.iq, i32 2
  switch i32 %narrow.i, label %bb.co [
    i32 0, label %bb.cp
    i32 1, label %bb.cq
  ]

bb.co:                                            ; preds = %.body135.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.val96.i, ptr %.val97.i)
          to label %.thread.i unwind label %bb.fh

bb.cp:                                            ; preds = %.body135.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !779
  %i.is = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !noalias !812, !noundef !4
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.is, align 4, !noalias !812
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %.invoke, label %.thread.i

bb.cq:                                            ; preds = %.body135.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !779
  %i.iw = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !noalias !815, !noundef !4
  %i.iy = add i32 %i.ix, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.iw, align 4, !noalias !815
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %.invoke, label %.thread.i

.invoke:                                          ; preds = %bb.cq, %bb.cp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val97.i) #30
          to label %.thread.i unwind label %bb.fh

.loopexit373.i:                                   ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit155.i, %.preheader.i
  %lpad.loopexit374.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader378.i
  %lpad.loopexit380.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit171.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit157.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1189.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit138.i, %bb.eb, %bb.dv, %bb.di, %.noexc113.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit397.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB1l_11cfg_process20macro_input_callbacks0_0EE7to_charB1l_.exit.thread.invoke.i, %.invoke1190.i, %.invoke1194.i, %.invoke1192.i
  %lpad.loopexit.split-lp398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15246.1.ph.i = phi i32 [ %i.fc, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 10 uses
  %.sroa.13.1.ph.i = phi i64 [ %i.fe, %bb.ar ], [ %.sroa.13.0.copyload244.i, %bb.au ], [ 0, %bb.cg ]
  %.sroa.11240.1.ph.i = phi ptr [ %i.dn, %bb.ar ], [ %.sroa.11240.0.copyload242.i, %bb.au ], [ %i.fg, %bb.cg ]
  %i.ja = phi i32 [ %.sroa.11.0.i, %bb.ar ], [ %.sroa.11.0.copyload239.i, %bb.au ], [ %.sroa.11.0.i, %bb.cg ] ; 5 uses
  %i.jb = phi i32 [ 4, %bb.ar ], [ %i.du, %bb.au ], [ %.sroa.016.sroa.0.0.i.i, %bb.cg ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !777
  store i32 %i.jb, ptr %i.ag, align 8, !noalias !777
  store i32 %i.ja, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !777
  store ptr %.sroa.11240.1.ph.i, ptr %.sroa.11240.0..sroa_idx.i, align 8, !noalias !777
  store i64 %.sroa.13.1.ph.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false), !noalias !777
  %i.jc = icmp samesign ugt i32 %i.jb, 2
  br i1 %i.jc, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jd = icmp eq i32 %i.jb, 1
  br i1 %i.jd, label %bb.hc, label %bb.hd

bb.ct:                                            ; preds = %bb.cr
  %i.je = invoke fastcc noundef i16 @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB1l_11cfg_process20macro_input_callbacks0_0EE4kindB1l_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779 ; 5 uses

bb.cu:                                            ; preds = %bb.ct
  switch i16 %i.je, label %bb.er [
    i16 150, label %bb.cv
    i16 153, label %bb.es
    i16 53, label %bb.cw
    i16 2, label %bb.cw
    i16 3, label %bb.cw
    i16 4, label %bb.cw
    i16 5, label %bb.cw
    i16 6, label %bb.cw
    i16 7, label %bb.cw
    i16 8, label %bb.cw
    i16 9, label %bb.cw
    i16 10, label %bb.cw
    i16 11, label %bb.cw
    i16 12, label %bb.cw
    i16 13, label %bb.cw
    i16 14, label %bb.cw
    i16 15, label %bb.cw
    i16 16, label %bb.cw
    i16 17, label %bb.cw
    i16 18, label %bb.cw
    i16 19, label %bb.cw
    i16 20, label %bb.cw
    i16 21, label %bb.cw
    i16 22, label %bb.cw
    i16 23, label %bb.cw
    i16 25, label %bb.cw
    i16 26, label %bb.cw
    i16 27, label %bb.cw
    i16 28, label %bb.cw
    i16 29, label %bb.cw
    i16 30, label %bb.cw
    i16 31, label %bb.cw
    i16 32, label %bb.cw
    i16 33, label %bb.cw
    i16 34, label %bb.cw
    i16 35, label %bb.cw
    i16 36, label %bb.cw
    i16 37, label %bb.cw
    i16 38, label %bb.cw
    i16 39, label %bb.cw
    i16 40, label %bb.cw
    i16 41, label %bb.cw
    i16 42, label %bb.cw
    i16 43, label %bb.cw
    i16 44, label %bb.cw
    i16 45, label %bb.cw
    i16 46, label %bb.cw
    i16 47, label %bb.cw
    i16 48, label %bb.cw
    i16 49, label %bb.cw
    i16 50, label %bb.cw
    i16 51, label %bb.cw
    i16 52, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !777
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i32 noundef %.sroa.15246.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit.i: ; preds = %bb.cv
  %i.jf = invoke noundef nonnull align 8 ptr @_RNvMs5_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynToken5token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %.noexc113.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

.noexc113.i:                                      ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit.i
  %i.jg = load i8, ptr %i.cz, align 4, !range !15, !alias.scope !774, !noalias !818, !noundef !4
  %i.jh = trunc nuw i8 %i.jg to i1
  invoke void @_RNvCslVwgvvnzcNb_13syntax_bridge19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jf, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.af, i1 noundef zeroext %i.jh, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter19convert_doc_commentBS_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter19convert_doc_commentBS_.exit.i: ; preds = %.noexc113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !777
  br label %.loopexit.i

bb.cw:                                            ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  %i.ji = load ptr, ptr %i.cr, align 8, !noalias !777, !nonnull !4, !noundef !4 ; 2 uses
  %i.jj = load i64, ptr %i.cs, align 8, !noalias !777, !noundef !4 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %.loopexit377.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cw
  %.idx371.i = shl nuw nsw i64 %i.jj, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %.idx371.i
  %i.jm = load i64, ptr %i.ct, align 8, !range !70, !noalias !777, !noundef !4
  %i.jn = load i64, ptr %i.cu, align 8, !noalias !777, !noundef !4 ; 4 uses
  %i.jo = load ptr, ptr %i.cv, align 8, !noalias !777, !nonnull !4 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv968.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next969.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i ] ; 2 uses
  %i.jp = phi ptr [ %i.jl, %.lr.ph.i.preheader.i ], [ %i.jq, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i ]
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 3 uses
  %.val.i115.i = load i64, ptr %i.jq, align 8, !noalias !823, !noundef !4 ; 7 uses
  %i.jr = icmp ult i64 %.val.i115.i, %i.jn        ; 3 uses
  switch i64 %i.jm, label %.lr.ph.i.i.unreachabledefault [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
    i64 2, label %bb.cz
  ]

.lr.ph.i.i.unreachabledefault:                    ; preds = %.lr.ph.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc207.i, %.noexc117.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.da, label %.invoke1192.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.db, label %.invoke1192.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.dc, label %.invoke1192.i

bb.da:                                            ; preds = %bb.cx
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.val.i115.i ; 2 uses
  %i.jt = load i8, ptr %i.js, align 8, !range !75, !noalias !779, !noundef !4
  %i.ju = icmp eq i8 %i.jt, 3
  br i1 %i.ju, label %.noexc117.i, label %.invoke1194.i, !prof !76

.invoke1192.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.jv = phi i64 [ %.val.i115.i, %bb.cz ], [ %.val.i115.i, %bb.cx ], [ %.val.i115.i, %bb.cy ], [ %.val.i201.i, %bb.hh ], [ %.val.i201.i, %bb.hi ], [ %.val.i201.i, %bb.hj ]
  %i.jw = phi i64 [ %i.jn, %bb.cz ], [ %i.jn, %bb.cx ], [ %i.jn, %bb.cy ], [ %i.st, %bb.hh ], [ %i.st, %bb.hi ], [ %i.st, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jv, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1193.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !779

.cont1193.i:                                      ; preds = %.invoke1192.i
  unreachable

.invoke1194.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !779

.cont1195.i:                                      ; preds = %.invoke1194.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %.val.i115.i ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 8, !range !75, !noalias !779, !noundef !4
  %i.jz = icmp eq i8 %i.jy, 3
  br i1 %i.jz, label %.noexc117.i, label %.invoke1194.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.ka = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %.val.i115.i ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 8, !range !75, !noalias !779, !noundef !4
  %i.kc = icmp eq i8 %i.kb, 3
  br i1 %i.kc, label %.noexc117.i, label %.invoke1194.i, !prof !76

.noexc117.i:                                      ; preds = %bb.dc, %bb.db, %bb.da
  %.sink.i218.i = phi ptr [ %i.jx, %bb.db ], [ %i.ka, %bb.dc ], [ %i.js, %bb.da ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink.i218.i, i64 1
  %.sroa.0.0.i219.i = load i8, ptr %i.kd, align 1, !range !75, !noalias !779, !noundef !4
  switch i8 %.sroa.0.0.i219.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB17_11cfg_process20macro_input_callbacks0_0EEs_0B17_.exit.i.i.i.i.i
    i8 1, label %bb.dd
    i8 2, label %bb.de
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i
  ]

bb.dd:                                            ; preds = %.noexc117.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB17_11cfg_process20macro_input_callbacks0_0EEs_0B17_.exit.i.i.i.i.i

bb.de:                                            ; preds = %.noexc117.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB17_11cfg_process20macro_input_callbacks0_0EEs_0B17_.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB17_11cfg_process20macro_input_callbacks0_0EEs_0B17_.exit.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %.noexc117.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.de ], [ 8, %bb.dd ], [ 6, %.noexc117.i ]
  %i.ke = icmp eq i16 %i.je, %.sink1.i.i.i.i.i.i
  br i1 %i.ke, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB17_11cfg_process20macro_input_callbacks0_0EEs_0B17_.exit.i.i.i.i.i, %.noexc117.i
  %i.kf = icmp eq ptr %i.ji, %i.jq
  %indvars.iv.next969.i = add nuw nsw i64 %indvars.iv968.i, 1
  br i1 %i.kf, label %.loopexit377.i, label %.lr.ph.i.i

.loopexit377.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i, %bb.cw
end_hunk_6
begin_hunk_7_@_RINvCslVwgvvnzcNb_13syntax_bridge34syntax_node_to_token_tree_modifiedNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB19_11cfg_process20macro_input_callbacks0_0EB19_:bb.a
    i16 149, label %bb.fi
    i16 154, label %bb.ft
  ]

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !777
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i32 noundef %.sroa.15246.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit157.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit157.i: ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !777
  %.val104.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !777, !noundef !4
  %.val105.i = load ptr, ptr %.sroa.11240.0..sroa_idx.i, align 8, !noalias !777
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB1l_11cfg_process20macro_input_callbacks0_0EE7to_textB1l_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, i32 %.val104.i, ptr %.val105.i)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

bb.ew:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit157.i
  %i.ok = load i8, ptr %i.v, align 8, !range !106, !noalias !777, !noundef !4 ; 2 uses
  %i.ol = icmp samesign ugt i8 %i.ok, 23
  %i.om = zext nneg i8 %i.ok to i64               ; 2 uses
  %i.on = add nsw i64 %i.om, -23
  %i.oo = select i1 %i.ol, i64 %i.on, i64 0
  switch i64 %i.oo, label %bb.ex [
    i64 0, label %bb.fa
    i64 1, label %bb.ey
    i64 2, label %bb.ez
  ]

bb.ex:                                            ; preds = %bb.gs, %bb.fx, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i, %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.op = load ptr, ptr %i.dh, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.oq = load i64, ptr %i.di, align 8, !noalias !777, !noundef !4
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ew
  %i.or = load ptr, ptr %i.dh, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.os = load i64, ptr %i.di, align 8, !noalias !777, !noundef !4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %bb.ew
  %.sroa.032.0.i = phi ptr [ %i.ot, %bb.ez ], [ %i.op, %bb.ey ], [ %i.dj, %bb.ew ]
  %.sroa.433.0.i = phi i64 [ %i.os, %bb.ez ], [ %i.oq, %bb.ey ], [ %i.om, %bb.ew ]
  %i.ou = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.032.0.i, i64 noundef %.sroa.433.0.i)
          to label %bb.fe unwind label %bb.fb, !noalias !779

bb.fb:                                            ; preds = %bb.fa
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.ow = load i8, ptr %i.v, align 8, !range !106, !alias.scope !858, !noalias !777, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.ow, 25
  br i1 %switch.i.i.i, label %.body135.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.ox = load ptr, ptr %i.dh, align 8, !alias.scope !865, !noalias !777, !nonnull !4, !noundef !4
  %i.oy = atomicrmw sub ptr %i.ox, i64 1 release, align 8, !noalias !866
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %bb.fd, label %.body135.i

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #30
          to label %.body135.i unwind label %bb.fh, !noalias !779

bb.fe:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.42.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !777
  store ptr %i.ou, ptr %i.cq, align 8, !noalias !777
  store i8 0, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !777
  store i32 2, ptr %i.aa, align 8, !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.pa = load i8, ptr %i.v, align 8, !range !106, !alias.scope !873, !noalias !777, !noundef !4
  %switch.i.i159.i = icmp samesign ult i8 %i.pa, 25
  br i1 %switch.i.i159.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit161.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.pb = load ptr, ptr %i.dh, align 8, !alias.scope !880, !noalias !777, !nonnull !4, !noundef !4
  %i.pc = atomicrmw sub ptr %i.pb, i64 1 release, align 8, !noalias !881
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.fg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit161.i

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit161.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit161.i: ; preds = %bb.fg, %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !777
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fh:                                            ; preds = %.invoke, %bb.co, %.thread.i, %bb.gy, %bb.gp, %bb.gk, %bb.gd, %bb.fm, %bb.fd
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !779
  unreachable

bb.fi:                                            ; preds = %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !777
  %.val102.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !777, !noundef !4
  %.val103.i = load ptr, ptr %.sroa.11240.0..sroa_idx.i, align 8, !noalias !777
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB1l_11cfg_process20macro_input_callbacks0_0EE7to_textB1l_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, i32 %.val102.i, ptr %.val103.i)
          to label %bb.fj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !777
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i32 noundef %.sroa.15246.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i unwind label %bb.fk, !noalias !779

bb.fk:                                            ; preds = %bb.fp, %bb.fj
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.pg = load i8, ptr %i.u, align 8, !range !106, !alias.scope !888, !noalias !777, !noundef !4
  %switch.i.i164.i = icmp samesign ult i8 %i.pg, 25
  br i1 %switch.i.i164.i, label %.body135.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.ph = load ptr, ptr %i.de, align 8, !alias.scope !895, !noalias !777, !nonnull !4, !noundef !4
  %i.pi = atomicrmw sub ptr %i.ph, i64 1 release, align 8, !noalias !896
  %i.pj = icmp eq i64 %i.pi, 1
  br i1 %i.pj, label %bb.fm, label %.body135.i

bb.fm:                                            ; preds = %bb.fl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de) #30
          to label %.body135.i unwind label %bb.fh, !noalias !779

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i: ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !777
  %i.pk = load i8, ptr %i.u, align 8, !range !106, !noalias !777, !noundef !4 ; 2 uses
  %i.pl = icmp samesign ugt i8 %i.pk, 23
  %i.pm = zext nneg i8 %i.pk to i64               ; 2 uses
  %i.pn = add nsw i64 %i.pm, -23
  %i.po = select i1 %i.pl, i64 %i.pn, i64 0
  switch i64 %i.po, label %bb.ex [
    i64 0, label %bb.fp
    i64 1, label %bb.fn
    i64 2, label %bb.fo
  ]

bb.fn:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i
  %i.pp = load ptr, ptr %i.de, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.pq = load i64, ptr %i.df, align 8, !noalias !777, !noundef !4
  br label %bb.fp

bb.fo:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i
  %i.pr = load ptr, ptr %i.de, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.ps = load i64, ptr %i.df, align 8, !noalias !777, !noundef !4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i
  %.sroa.034.0.i = phi ptr [ %i.pt, %bb.fo ], [ %i.pp, %bb.fn ], [ %i.dg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i ]
  %.sroa.435.0.i = phi i64 [ %i.ps, %bb.fo ], [ %i.pq, %bb.fn ], [ %i.pm, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit163.i ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.034.0.i, i64 noundef %.sroa.435.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.t)
          to label %bb.fq unwind label %bb.fk, !noalias !779

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !777
  store i32 0, ptr %i.aa, align 8, !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.pu = load i8, ptr %i.u, align 8, !range !106, !alias.scope !903, !noalias !777, !noundef !4
  %switch.i.i167.i = icmp samesign ult i8 %i.pu, 25
  br i1 %switch.i.i167.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit169.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.pv = load ptr, ptr %i.de, align 8, !alias.scope !910, !noalias !777, !nonnull !4, !noundef !4
  %i.pw = atomicrmw sub ptr %i.pv, i64 1 release, align 8, !noalias !911
  %i.px = icmp eq i64 %i.pw, 1
  br i1 %i.px, label %bb.fs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit169.i

bb.fs:                                            ; preds = %bb.fr
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.de) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit169.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit169.i: ; preds = %bb.fs, %bb.fr, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !777
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.ft:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !777
  %i.py = add i32 %.sroa.15246.1.ph.i, 1          ; 3 uses
  %.not81.i = icmp eq i32 %.sroa.15246.1.ph.i, -1
  br i1 %.not81.i, label %bb.fu, label %bb.fv, !prof !14

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !779

bb.fv:                                            ; preds = %bb.ft
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i32 noundef %.sroa.15246.1.ph.i, i32 noundef %i.py)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit171.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit171.i: ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.437.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !777
  store i32 39, ptr %i.da, align 4, !noalias !777
  store i8 1, ptr %.sroa.538.0..sroa_idx.i, align 4, !noalias !777
  store i32 1, ptr %i.r, align 8, !noalias !777
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.r)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

bb.fw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit171.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7279.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !777
  %.val100.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !777, !noundef !4
  %.val101.i = load ptr, ptr %.sroa.11240.0..sroa_idx.i, align 8, !noalias !777
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB1l_11cfg_process20macro_input_callbacks0_0EE7to_textB1l_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, i32 %.val100.i, ptr %.val101.i)
          to label %bb.fx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

bb.fx:                                            ; preds = %bb.fw
  %i.pz = load i8, ptr %i.p, align 8, !range !106, !noalias !777, !noundef !4 ; 2 uses
  %i.qa = icmp samesign ugt i8 %i.pz, 23
  %i.qb = zext nneg i8 %i.pz to i64               ; 2 uses
  %i.qc = add nsw i64 %i.qb, -23
  %i.qd = select i1 %i.qa, i64 %i.qc, i64 0
  switch i64 %i.qd, label %bb.ex [
    i64 0, label %bb.ga
    i64 1, label %bb.fy
    i64 2, label %bb.fz
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.qe = load ptr, ptr %i.db, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.qf = load i64, ptr %i.dc, align 8, !noalias !777, !noundef !4
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.qg = load ptr, ptr %i.db, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.qh = load i64, ptr %i.dc, align 8, !noalias !777, !noundef !4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx
  %.sroa.044.0.i = phi ptr [ %i.qi, %bb.fz ], [ %i.qe, %bb.fy ], [ %i.dd, %bb.fx ] ; 3 uses
  %.sroa.647.0.i = phi i64 [ %i.qh, %bb.fz ], [ %i.qf, %bb.fy ], [ %i.qb, %bb.fx ] ; 5 uses
  %i.qj = icmp ult i64 %.sroa.647.0.i, 2
  br i1 %i.qj, label %.split.i, label %bb.ge

.split.i:                                         ; preds = %bb.ga
  %i.qk = icmp eq i64 %.sroa.647.0.i, 1
  br i1 %i.qk, label %bb.gf, label %bb.gg, !prof !76

bb.gb:                                            ; preds = %bb.gk, %.loopexit.split-lp406.i, %.loopexit405.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi414.i, %bb.gk ], [ %lpad.loopexit407.i, %.loopexit405.i ], [ %lpad.loopexit.split-lp408.i, %.loopexit.split-lp406.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.ql = load i8, ptr %i.p, align 8, !range !106, !alias.scope !918, !noalias !777, !noundef !4
  %switch.i.i173.i = icmp samesign ult i8 %i.ql, 25
  br i1 %switch.i.i173.i, label %.body135.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.qm = load ptr, ptr %i.db, align 8, !alias.scope !925, !noalias !777, !nonnull !4, !noundef !4
  %i.qn = atomicrmw sub ptr %i.qm, i64 1 release, align 8, !noalias !926
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %bb.gd, label %.body135.i

bb.gd:                                            ; preds = %bb.gc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db) #30
          to label %.body135.i unwind label %bb.fh, !noalias !779

.loopexit405.i:                                   ; preds = %bb.gf
  %lpad.loopexit407.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp406.i:                          ; preds = %bb.gg
  %lpad.loopexit.split-lp408.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ge:                                            ; preds = %bb.ga
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qq = load i8, ptr %i.qp, align 1, !alias.scope !927, !noalias !779, !noundef !4
  %i.qr = icmp sgt i8 %i.qq, -65
  br i1 %i.qr, label %bb.gf, label %bb.gg, !prof !76

bb.gf:                                            ; preds = %bb.ge, %.split.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qt = add i64 %.sroa.647.0.i, -1
  %i.qu = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qs, i64 noundef %i.qt)
          to label %bb.gh unwind label %.loopexit405.i, !noalias !779 ; 3 uses

bb.gg:                                            ; preds = %bb.ge, %.split.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0.i, i64 noundef %.sroa.647.0.i, i64 noundef 1, i64 noundef %.sroa.647.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
          to label %bb.ep unwind label %.loopexit.split-lp406.i, !noalias !779

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !777
  %.not83.i = icmp ugt i32 %i.py, %.sroa.19.1.ph.i
  br i1 %.not83.i, label %bb.gi, label %bb.gj, !prof !14

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27
          to label %bb.ep unwind label %.loopexit.split-lp411.i, !noalias !779

bb.gj:                                            ; preds = %bb.gh
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i32 noundef %i.py, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit177.i unwind label %.loopexit410.i, !noalias !779

.loopexit410.i:                                   ; preds = %bb.gj
  %lpad.loopexit412.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.loopexit.split-lp411.i:                          ; preds = %bb.gi
  %lpad.loopexit.split-lp413.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gk:                                            ; preds = %.loopexit.split-lp411.i, %.loopexit410.i
  %lpad.phi414.i = phi { ptr, i32 } [ %lpad.loopexit412.i, %.loopexit410.i ], [ %lpad.loopexit.split-lp413.i, %.loopexit.split-lp411.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs33K2ylI4knu_10hir_expand(ptr nonnull %i.qu) #29
          to label %bb.gb unwind label %bb.fh, !noalias !779

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit177.i: ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7279.i, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.qv = load i8, ptr %i.p, align 8, !range !106, !alias.scope !936, !noalias !777, !noundef !4
  %switch.i.i178.i = icmp samesign ult i8 %i.qv, 25
  br i1 %switch.i.i178.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit180.i, label %bb.gl

bb.gl:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit177.i
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.qw = load ptr, ptr %i.db, align 8, !alias.scope !943, !noalias !777, !nonnull !4, !noundef !4
  %i.qx = atomicrmw sub ptr %i.qw, i64 1 release, align 8, !noalias !944
  %i.qy = icmp eq i64 %i.qx, 1
  br i1 %i.qy, label %bb.gm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit180.i

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit180.i unwind label %bb.gp, !noalias !779

bb.gn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit180.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit180.i: ; preds = %bb.gm, %bb.gl, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit177.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !777
  store i32 2, ptr %i.n, align 8, !noalias !777
  store ptr %i.qu, ptr %.sroa.5278.0..sroa_idx.i, align 8, !noalias !777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7279.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7279.i, i64 20, i1 false), !noalias !777
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !777
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.n)
          to label %bb.go unwind label %bb.gn, !noalias !779

bb.go:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit180.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7279.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !777
  br label %.loopexit.i

bb.gp:                                            ; preds = %bb.gm
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 2, ptr nonnull %i.qu) #29
          to label %.body135.i unwind label %bb.fh, !noalias !779

.loopexit.i:                                      ; preds = %bb.hs, %bb.eq, %bb.hr, %bb.go, %bb.eu, %bb.ec, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter19convert_doc_commentBS_.exit.i
  %.val94.i = load i32, ptr %i.ag, align 8, !range !63, !noalias !777, !noundef !4 ; 3 uses
  %.val95.i = load ptr, ptr %.sroa.11240.0..sroa_idx.i, align 8, !noalias !777 ; 7 uses
  %i.rb = add nsw i32 %.val94.i, -3
  %i.rc = icmp samesign ugt i32 %.val94.i, 2
  %narrow.i.i = select i1 %i.rc, i32 %i.rb, i32 2
  switch i32 %narrow.i.i, label %.invoke1196.i [
    i32 0, label %bb.gq
    i32 1, label %bb.gr
  ]

.invoke1196.i:                                    ; preds = %bb.ht, %.loopexit.i
  %i.rd = phi i32 [ %.val94.i, %.loopexit.i ], [ %.val92.i, %bb.ht ]
  %i.re = phi ptr [ %.val95.i, %.loopexit.i ], [ %.val93.i, %bb.ht ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %i.rd, ptr %i.re)
          to label %.backedge.i unwind label %.thread309.loopexit.split-lp.loopexit.i, !noalias !779

bb.gq:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.rf = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !noalias !945, !noundef !4
  %i.rh = add i32 %i.rg, -1                       ; 2 uses
  store i32 %i.rh, ptr %i.rf, align 4, !noalias !945
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %.invoke1187.invoke.i, label %.backedge.i

bb.gr:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.rj = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !noalias !948, !noundef !4
  %i.rl = add i32 %i.rk, -1                       ; 2 uses
  store i32 %i.rl, ptr %i.rj, align 4, !noalias !948
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %.invoke1187.invoke.i, label %.backedge.i

.invoke1187.invoke.i:                             ; preds = %bb.hv, %bb.hu, %bb.gr, %bb.gq
  %i.rn = phi ptr [ %.val95.i, %bb.gq ], [ %.val95.i, %bb.gr ], [ %.val93.i, %bb.hv ], [ %.val93.i, %bb.hu ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.rn) #30
          to label %.backedge.i unwind label %.thread309.loopexit.split-lp.loopexit.i, !noalias !779

bb.gs:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !777
  %i.ro = load i8, ptr %i.z, align 8, !range !106, !noalias !777, !noundef !4 ; 2 uses
  %i.rp = icmp samesign ugt i8 %i.ro, 23
  %i.rq = zext nneg i8 %i.ro to i64               ; 2 uses
  %i.rr = add nsw i64 %i.rq, -23
  %i.rs = select i1 %i.rp, i64 %i.rr, i64 0
  switch i64 %i.rs, label %bb.ex [
    i64 0, label %bb.gv
    i64 1, label %bb.gt
    i64 2, label %bb.gu
  ]

bb.gt:                                            ; preds = %bb.gs
  %i.rt = load ptr, ptr %i.dk, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.ru = load i64, ptr %i.dl, align 8, !noalias !777, !noundef !4
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.rv = load ptr, ptr %i.dk, align 8, !noalias !777, !nonnull !4, !noundef !4
  %i.rw = load i64, ptr %i.dl, align 8, !noalias !777, !noundef !4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs
  %.sroa.026.0.i = phi ptr [ %i.rx, %bb.gu ], [ %i.rt, %bb.gt ], [ %i.dm, %bb.gs ]
  %.sroa.427.0.i = phi i64 [ %i.rw, %bb.gu ], [ %i.ru, %bb.gt ], [ %i.rq, %bb.gs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !777
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i32 noundef %.sroa.15246.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit186.i unwind label %bb.gw, !noalias !779

bb.gw:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit186.i, %bb.gv
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.rz = load i8, ptr %i.z, align 8, !range !106, !alias.scope !957, !noalias !777, !noundef !4
  %switch.i.i187.i = icmp samesign ult i8 %i.rz, 25
  br i1 %switch.i.i187.i, label %.body135.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.sa = load ptr, ptr %i.dk, align 8, !alias.scope !964, !noalias !777, !nonnull !4, !noundef !4
  %i.sb = atomicrmw sub ptr %i.sa, i64 1 release, align 8, !noalias !965
  %i.sc = icmp eq i64 %i.sb, 1
  br i1 %i.sc, label %bb.gy, label %.body135.i

bb.gy:                                            ; preds = %bb.gx
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk) #30
          to label %.body135.i unwind label %bb.fh, !noalias !779

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit186.i: ; preds = %bb.gv
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.026.0.i, i64 noundef %.sroa.427.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.x)
          to label %bb.gz unwind label %bb.gw, !noalias !779

bb.gz:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !777
  store i32 2, ptr %i.aa, align 8, !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.sd = load i8, ptr %i.z, align 8, !range !106, !alias.scope !972, !noalias !777, !noundef !4
  %switch.i.i190.i = icmp samesign ult i8 %i.sd, 25
  br i1 %switch.i.i190.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit192.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.se = load ptr, ptr %i.dk, align 8, !alias.scope !979, !noalias !777, !nonnull !4, !noundef !4
  %i.sf = atomicrmw sub ptr %i.se, i64 1 release, align 8, !noalias !980
  %i.sg = icmp eq i64 %i.sf, 1
  br i1 %i.sg, label %bb.hb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit192.i

bb.hb:                                            ; preds = %bb.ha
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit192.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit192.i: ; preds = %bb.hb, %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !777
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %.noexc196.i, %.noexc195.i, %.thread358.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit192.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit169.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECs33K2ylI4knu_10hir_expand.exit161.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit150.i
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.aa)
end_hunk_7
