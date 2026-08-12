inline.NumInlined: 1615
inline.NumDeleted: 744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapECsileJQcQObtj_7hir_def:bb.a
.noexc98.i.i:                                     ; preds = %bb.bx, %bb.bw
  %.sroa.0.0.i91.i.i = phi i32 [ %i.hn, %bb.bw ], [ %i.ho, %bb.bx ] ; 4 uses
  %i.hp = load i64, ptr %i.ff, align 8, !range !16, !noalias !34, !noundef !4
  %i.hq = trunc nuw i64 %i.hp to i1
  %i.hr = load ptr, ptr %i.ft, align 8, !noalias !34, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.hq, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %.noexc98.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !noalias !34, !noundef !4 ; 2 uses
  %i.hu = icmp ugt i64 %i.ht, 4294967295
  %i.hv = shl nuw i64 %i.ht, 32
  %.sroa.09.0.insert.insert.i.i94.i.i = select i1 %i.hu, i64 513, i64 %i.hv ; 2 uses
  %i.hw = trunc i64 %.sroa.09.0.insert.insert.i.i94.i.i to i1
  br i1 %i.hw, label %bb.bz, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i, !prof !14

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36
  br label %.invoke135.i.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i: ; preds = %bb.by
  %.sroa.6.0.extract.shift.i.i.i96.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i94.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i97.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i96.i.i to i32
  br label %bb.cb

bb.ca:                                            ; preds = %.noexc98.i.i
  %i.hx = load i32, ptr %i.hr, align 8, !noalias !34, !noundef !4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i
  %.sroa.02.0.i92.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i97.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i ], [ %i.hx, %bb.ca ]
  %i.hy = xor i32 %.sroa.0.0.i91.i.i, -1
  %.not.i93.i.i = icmp ugt i32 %.sroa.02.0.i92.i.i, %i.hy
  br i1 %.not.i93.i.i, label %.invoke.i.i, label %bb.cc, !prof !14

bb.cc:                                            ; preds = %bb.cb
  %.not42.i.i = icmp eq i32 %.sroa.0.0.i91.i.i, -1
  br i1 %.not42.i.i, label %bb.cd, label %bb.ce, !prof !14

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #37
          to label %bb.as unwind label %.loopexit.split-lp395.i, !noalias !34

bb.ce:                                            ; preds = %bb.cc
  %i.hz = add nuw i32 %.sroa.0.0.i91.i.i, 1
  br label %bb.cp

bb.cf:                                            ; preds = %bb.bp
  %i.ia = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.cj, align 8, !alias.scope !33, !noalias !34
  br label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECsileJQcQObtj_7hir_def.exit86.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  store ptr null, ptr %i.cj, align 8, !alias.scope !33, !noalias !34
  %i.ib = load i8, ptr %i.fm, align 4, !range !15, !noalias !34, !noundef !4
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.ch, label %bb.cg, !prof !14

bb.cg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECsileJQcQObtj_7hir_def.exit86.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.ie = load i32, ptr %i.id, align 8, !noalias !34, !noundef !4
  br label %.noexc109.i.i

bb.ch:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECsileJQcQObtj_7hir_def.exit86.i.i
  %i.if = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.ff)
          to label %.noexc109.i.i unwind label %.loopexit394.i, !noalias !34

.noexc109.i.i:                                    ; preds = %bb.ch, %bb.cg
  %.sroa.0.0.i102.i.i = phi i32 [ %i.ie, %bb.cg ], [ %i.if, %bb.ch ] ; 3 uses
  %i.ig = load i64, ptr %i.ff, align 8, !range !16, !noalias !34, !noundef !4
  %i.ih = trunc nuw i64 %i.ig to i1
  %i.ii = load ptr, ptr %i.ft, align 8, !noalias !34, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.ih, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %.noexc109.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !34, !noundef !4 ; 2 uses
  %i.il = icmp ugt i64 %i.ik, 4294967295
  %i.im = shl nuw i64 %i.ik, 32
  %.sroa.09.0.insert.insert.i.i105.i.i = select i1 %i.il, i64 513, i64 %i.im ; 2 uses
  %i.in = trunc i64 %.sroa.09.0.insert.insert.i.i105.i.i to i1
  br i1 %i.in, label %bb.cj, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i, !prof !14

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36
  br label %.invoke135.i.i

.invoke135.i.i:                                   ; preds = %bb.cj, %bb.bz, %bb.ba
  %.sink.i.i = phi ptr [ %i.e, %bb.ba ], [ %i.d, %bb.bz ], [ %i.c, %bb.cj ] ; 2 uses
  store i8 2, ptr %.sink.i.i, align 1, !noalias !36
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %.sink.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931) #38
          to label %.cont136.i.i unwind label %.loopexit.split-lp395.i, !noalias !34

.cont136.i.i:                                     ; preds = %.invoke135.i.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i: ; preds = %bb.ci
  %.sroa.6.0.extract.shift.i.i.i107.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i105.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i108.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i107.i.i to i32
  br label %bb.cl

bb.ck:                                            ; preds = %.noexc109.i.i
  %i.io = load i32, ptr %i.ii, align 8, !noalias !34, !noundef !4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i
  %.sroa.02.0.i103.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i108.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i ], [ %i.io, %bb.ck ]
  %i.ip = add i32 %.sroa.02.0.i103.i.i, %.sroa.0.0.i102.i.i ; 2 uses
  %.not.i104.i.i = icmp ugt i32 %.sroa.0.0.i102.i.i, %i.ip
  br i1 %.not.i104.i.i, label %.invoke.i.i, label %bb.cp, !prof !14

.invoke.i.i:                                      ; preds = %bb.cl, %bb.cb, %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #38
          to label %.cont.i.i unwind label %.loopexit.split-lp395.i, !noalias !34

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread313.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hr
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread313.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1189.invoke.i, %.invoke1198.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit58.i.i
  %lpad.loopexit387.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread313.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1190.i.a
  %lpad.loopexit.split-lp388.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter4bumpCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.av, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.iq = load i64, ptr %i.cr, align 8, !noalias !27, !noundef !4 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %._crit_edge.i, label %.lr.ph.i

.body139.i:                                       ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gk, %bb.gi, %bb.fy, %bb.fx, %bb.fw, %bb.fh, %bb.fg, %bb.ff, %bb.ey, %bb.ex, %bb.ew, %bb.ea, %bb.dq, %bb.dp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit376.i
  %.pn86.i = phi { ptr, i32 } [ %i.ph, %bb.fg ], [ %.pn.i, %bb.fx ], [ %i.mf, %bb.ea ], [ %i.ox, %bb.ex ], [ %i.rc, %bb.gk ], [ %i.rb, %bb.gi ], [ %lpad.phi406.i, %bb.dp ], [ %i.sa, %bb.gs ], [ %lpad.phi406.i, %bb.dq ], [ %i.ox, %bb.ey ], [ %i.ox, %bb.ew ], [ %i.ph, %bb.fh ], [ %i.ph, %bb.ff ], [ %.pn.i, %bb.fy ], [ %.pn.i, %bb.fw ], [ %i.sa, %bb.gt ], [ %i.sa, %bb.gr ], [ %lpad.loopexit377.i, %.loopexit376.i ], [ %lpad.loopexit383.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit399.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp400.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 4 uses
  %.val96.i = load i32, ptr %i.ae, align 8, !range !66, !noalias !27, !noundef !4 ; 3 uses
  %.val97.i = load ptr, ptr %.sroa.11244.0..sroa_idx.i, align 8, !noalias !27 ; 6 uses
  %i.is = add nsw i32 %.val96.i, -3
  %i.it = icmp samesign ugt i32 %.val96.i, 2
  %narrow.i = select i1 %i.it, i32 %i.is, i32 2
  switch i32 %narrow.i, label %bb.cm [
    i32 0, label %bb.cn
    i32 1, label %bb.co
  ]

bb.cm:                                            ; preds = %.body139.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val96.i, ptr %.val97.i)
          to label %.thread.i unwind label %bb.fc

bb.cn:                                            ; preds = %.body139.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !29
  %i.iu = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !noalias !67, !noundef !4
  %i.iw = add i32 %i.iv, -1                       ; 2 uses
  store i32 %i.iw, ptr %i.iu, align 4, !noalias !67
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %.invoke, label %.thread.i

bb.co:                                            ; preds = %.body139.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !29
  %i.iy = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !noalias !70, !noundef !4
  %i.ja = add i32 %i.iz, -1                       ; 2 uses
  store i32 %i.ja, ptr %i.iy, align 4, !noalias !70
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %.invoke, label %.thread.i

.invoke:                                          ; preds = %bb.co, %bb.cn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val97.i) #40
          to label %.thread.i unwind label %bb.fc

.loopexit376.i:                                   ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit159.i, %.preheader.i
  %lpad.loopexit377.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader381.i
  %lpad.loopexit383.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hm, %bb.ha, %bb.gz, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.gw, %bb.fr, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit175.i, %bb.fq, %bb.fn, %bb.fd, %bb.fb, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit161.i, %bb.eq, %bb.en, %bb.em, %bb.ej, %.invoke1191.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit142.i, %bb.dy, %bb.dt, %bb.dg, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit.i, %bb.ct, %bb.cr
  %lpad.loopexit399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fp, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charCsileJQcQObtj_7hir_def.exit.thread.invoke.i, %.invoke1192.i, %.invoke1196.i, %.invoke1194.i
  %lpad.loopexit.split-lp400.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

bb.cp:                                            ; preds = %bb.cl, %bb.ce, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.ip, %bb.cl ], [ %i.hz, %bb.ce ], [ 0, %bb.au ], [ %i.fc, %bb.ar ] ; 9 uses
  %.sroa.15250.1.ph.i = phi i32 [ %.sroa.0.0.i102.i.i, %bb.cl ], [ %.sroa.0.0.i91.i.i, %bb.ce ], [ 0, %bb.au ], [ %i.fb, %bb.ar ] ; 10 uses
  %.sroa.13.1.ph.i = phi i64 [ 0, %bb.cl ], [ 0, %bb.ce ], [ %.sroa.13.0.copyload248.i, %bb.au ], [ %i.fd, %bb.ar ]
  %.sroa.11244.1.ph.i = phi ptr [ %i.ff, %bb.cl ], [ %i.ff, %bb.ce ], [ %.sroa.11244.0.copyload246.i, %bb.au ], [ %i.dm, %bb.ar ]
  %i.jc = phi i32 [ %.sroa.11.0.i, %bb.cl ], [ %.sroa.11.0.i, %bb.ce ], [ %.sroa.11.0.copyload243.i, %bb.au ], [ %.sroa.11.0.i, %bb.ar ] ; 5 uses
  %i.jd = phi i32 [ 3, %bb.cl ], [ 4, %bb.ce ], [ %i.dt, %bb.au ], [ 4, %bb.ar ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !27
  store i32 %i.jd, ptr %i.ae, align 8, !noalias !27
  store i32 %i.jc, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !27
  store ptr %.sroa.11244.1.ph.i, ptr %.sroa.11244.0..sroa_idx.i, align 8, !noalias !27
  store i64 %.sroa.13.1.ph.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false), !noalias !27
  %i.je = icmp samesign ugt i32 %i.jd, 2
  br i1 %i.je, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jf = icmp eq i32 %i.jd, 1
  br i1 %i.jf, label %bb.gx, label %bb.gy

bb.cr:                                            ; preds = %bb.cp
  %i.jg = invoke fastcc noundef i16 @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE4kindCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29 ; 5 uses

bb.cs:                                            ; preds = %bb.cr
  switch i16 %i.jg, label %bb.em [
    i16 150, label %bb.ct
    i16 153, label %bb.en
    i16 53, label %bb.cu
    i16 2, label %bb.cu
    i16 3, label %bb.cu
    i16 4, label %bb.cu
    i16 5, label %bb.cu
    i16 6, label %bb.cu
    i16 7, label %bb.cu
    i16 8, label %bb.cu
    i16 9, label %bb.cu
    i16 10, label %bb.cu
    i16 11, label %bb.cu
    i16 12, label %bb.cu
    i16 13, label %bb.cu
    i16 14, label %bb.cu
    i16 15, label %bb.cu
    i16 16, label %bb.cu
    i16 17, label %bb.cu
    i16 18, label %bb.cu
    i16 19, label %bb.cu
    i16 20, label %bb.cu
    i16 21, label %bb.cu
    i16 22, label %bb.cu
    i16 23, label %bb.cu
    i16 25, label %bb.cu
    i16 26, label %bb.cu
    i16 27, label %bb.cu
    i16 28, label %bb.cu
    i16 29, label %bb.cu
    i16 30, label %bb.cu
    i16 31, label %bb.cu
    i16 32, label %bb.cu
    i16 33, label %bb.cu
    i16 34, label %bb.cu
    i16 35, label %bb.cu
    i16 36, label %bb.cu
    i16 37, label %bb.cu
    i16 38, label %bb.cu
    i16 39, label %bb.cu
    i16 40, label %bb.cu
    i16 41, label %bb.cu
    i16 42, label %bb.cu
    i16 43, label %bb.cu
    i16 44, label %bb.cu
    i16 45, label %bb.cu
    i16 46, label %bb.cu
    i16 47, label %bb.cu
    i16 48, label %bb.cu
    i16 49, label %bb.cu
    i16 50, label %bb.cu
    i16 51, label %bb.cu
    i16 52, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, i32 noundef %.sroa.15250.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.ct
  %.val98.i = load i8, ptr %i.cy, align 4, !alias.scope !24, !noalias !29
  %i.jh = invoke noundef nonnull align 8 ptr @_RNvMs5_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynToken5token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %.noexc114.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

.noexc114.i:                                      ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit.i
  %i.ji = trunc nuw i8 %.val98.i to i1
  invoke void @_RNvCslVwgvvnzcNb_13syntax_bridge19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jh, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.ad, i1 noundef zeroext %i.ji, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ag)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCsileJQcQObtj_7hir_def.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCsileJQcQObtj_7hir_def.exit.i: ; preds = %.noexc114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !27
  br label %.loopexit.i

bb.cu:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.jj = load ptr, ptr %i.cq, align 8, !noalias !27, !nonnull !4, !noundef !4 ; 2 uses
  %i.jk = load i64, ptr %i.cr, align 8, !noalias !27, !noundef !4 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %.loopexit380.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cu
  %.idx374.i = shl nuw nsw i64 %i.jk, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.idx374.i
  %i.jn = load i64, ptr %i.cs, align 8, !range !73, !noalias !27, !noundef !4
  %i.jo = load i64, ptr %i.ct, align 8, !noalias !27, !noundef !4 ; 4 uses
  %i.jp = load ptr, ptr %i.cu, align 8, !noalias !27, !nonnull !4 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0CsileJQcQObtj_7hir_def.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv970.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next971.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0CsileJQcQObtj_7hir_def.exit.i.i ] ; 2 uses
  %i.jq = phi ptr [ %i.jm, %.lr.ph.i.preheader.i ], [ %i.jr, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0CsileJQcQObtj_7hir_def.exit.i.i ]
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8 ; 3 uses
  %.val.i116.i = load i64, ptr %i.jr, align 8, !noalias !74, !noundef !4 ; 7 uses
  %i.js = icmp ult i64 %.val.i116.i, %i.jo        ; 3 uses
  switch i64 %i.jn, label %.lr.ph.i.i.unreachabledefault [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
    i64 2, label %bb.cx
  ]

.lr.ph.i.i.unreachabledefault:                    ; preds = %.lr.ph.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc211.i, %.noexc118.i
  unreachable

bb.cv:                                            ; preds = %.lr.ph.i.i
  br i1 %i.js, label %bb.cy, label %.invoke1194.i

bb.cw:                                            ; preds = %.lr.ph.i.i
  br i1 %i.js, label %bb.cz, label %.invoke1194.i

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.js, label %bb.da, label %.invoke1194.i

bb.cy:                                            ; preds = %bb.cv
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %.val.i116.i ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8, !range !78, !noalias !29, !noundef !4
  %i.jv = icmp eq i8 %i.ju, 3
  br i1 %i.jv, label %.noexc118.i, label %.invoke1196.i, !prof !79

.invoke1194.i:                                    ; preds = %bb.he, %bb.hd, %bb.hc, %bb.cx, %bb.cw, %bb.cv
  %i.jw = phi i64 [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cv ], [ %.val.i116.i, %bb.cw ], [ %.val.i205.i, %bb.hc ], [ %.val.i205.i, %bb.hd ], [ %.val.i205.i, %bb.he ]
  %i.jx = phi i64 [ %i.jo, %bb.cx ], [ %i.jo, %bb.cv ], [ %i.jo, %bb.cw ], [ %i.sv, %bb.hc ], [ %i.sv, %bb.hd ], [ %i.sv, %bb.he ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jw, i64 noundef %i.jx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #38
          to label %.cont1195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1195.i:                                      ; preds = %.invoke1194.i
  unreachable

.invoke1196.i:                                    ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.da, %bb.cz, %bb.cy
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #38
          to label %.cont1197.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1197.i:                                      ; preds = %.invoke1196.i
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %.val.i116.i ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !range !78, !noalias !29, !noundef !4
  %i.ka = icmp eq i8 %i.jz, 3
  br i1 %i.ka, label %.noexc118.i, label %.invoke1196.i, !prof !79

bb.da:                                            ; preds = %bb.cx
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.jp, i64 %.val.i116.i ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 8, !range !78, !noalias !29, !noundef !4
  %i.kd = icmp eq i8 %i.kc, 3
  br i1 %i.kd, label %.noexc118.i, label %.invoke1196.i, !prof !79

.noexc118.i:                                      ; preds = %bb.da, %bb.cz, %bb.cy
  %.sink.i222.i = phi ptr [ %i.jy, %bb.cz ], [ %i.kb, %bb.da ], [ %i.jt, %bb.cy ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.sink.i222.i, i64 1
  %.sroa.0.0.i223.i = load i8, ptr %i.ke, align 1, !range !78, !noalias !29, !noundef !4
  switch i8 %.sroa.0.0.i223.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0CsileJQcQObtj_7hir_def.exit.i.i.i.i.i
    i8 1, label %bb.db
    i8 2, label %bb.dc
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0CsileJQcQObtj_7hir_def.exit.i.i
  ]

bb.db:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0CsileJQcQObtj_7hir_def.exit.i.i.i.i.i

bb.dc:                                            ; preds = %.noexc118.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0CsileJQcQObtj_7hir_def.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0CsileJQcQObtj_7hir_def.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db, %.noexc118.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.dc ], [ 8, %bb.db ], [ 6, %.noexc118.i ]
  %i.kf = icmp eq i16 %i.jg, %.sink1.i.i.i.i.i.i
  br i1 %i.kf, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0CsileJQcQObtj_7hir_def.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0CsileJQcQObtj_7hir_def.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0CsileJQcQObtj_7hir_def.exit.i.i.i.i.i, %.noexc118.i
  %i.kg = icmp eq ptr %i.jj, %i.jr
  %indvars.iv.next971.i = add nuw nsw i64 %indvars.iv970.i, 1
  br i1 %i.kg, label %.loopexit380.i, label %.lr.ph.i.i

.loopexit380.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0CsileJQcQObtj_7hir_def.exit.i.i, %bb.cu
end_hunk_0
begin_hunk_1_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapECsileJQcQObtj_7hir_def:bb.a
    i16 149, label %bb.fd
    i16 154, label %bb.fo
  ]

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, i32 noundef %.sroa.15250.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit161.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit161.i: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !27
  %.val105.i = load i32, ptr %i.ae, align 8, !range !66, !noalias !27, !noundef !4
  %.val106.i = load ptr, ptr %.sroa.11244.0..sroa_idx.i, align 8, !noalias !27
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t, i32 %.val105.i, ptr %.val106.i)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.er:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit161.i
  %i.om = load i8, ptr %i.t, align 8, !range !115, !noalias !27, !noundef !4 ; 2 uses
  %i.on = icmp samesign ugt i8 %i.om, 23
  %i.oo = zext nneg i8 %i.om to i64               ; 2 uses
  %i.op = add nsw i64 %i.oo, -23
  %i.oq = select i1 %i.on, i64 %i.op, i64 0
  switch i64 %i.oq, label %bb.es [
    i64 0, label %bb.ev
    i64 1, label %bb.et
    i64 2, label %bb.eu
  ]

bb.es:                                            ; preds = %bb.gn, %bb.fs, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i, %bb.er
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.or = load ptr, ptr %i.dg, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.os = load i64, ptr %i.dh, align 8, !noalias !27, !noundef !4
  br label %bb.ev

bb.eu:                                            ; preds = %bb.er
  %i.ot = load ptr, ptr %i.dg, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.ou = load i64, ptr %i.dh, align 8, !noalias !27, !noundef !4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.er
  %.sroa.032.0.i = phi ptr [ %i.ov, %bb.eu ], [ %i.or, %bb.et ], [ %i.di, %bb.er ]
  %.sroa.433.0.i = phi i64 [ %i.ou, %bb.eu ], [ %i.os, %bb.et ], [ %i.oo, %bb.er ]
  %i.ow = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.032.0.i, i64 noundef %.sroa.433.0.i)
          to label %bb.ez unwind label %bb.ew, !noalias !29

bb.ew:                                            ; preds = %bb.ev
  %i.ox = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.oy = load i8, ptr %i.t, align 8, !range !115, !alias.scope !122, !noalias !27, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.oy, 25
  br i1 %switch.i.i.i, label %.body139.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.oz = load ptr, ptr %i.dg, align 8, !alias.scope !129, !noalias !27, !nonnull !4, !noundef !4
  %i.pa = atomicrmw sub ptr %i.oz, i64 1 release, align 8, !noalias !130
  %i.pb = icmp eq i64 %i.pa, 1
  br i1 %i.pb, label %bb.ey, label %.body139.i

bb.ey:                                            ; preds = %bb.ex
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dg) #40
          to label %.body139.i unwind label %bb.fc, !noalias !29

bb.ez:                                            ; preds = %bb.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.42.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.u, i64 20, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !27
  store ptr %i.ow, ptr %i.cp, align 8, !noalias !27
  store i8 0, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !27
  store i32 2, ptr %i.y, align 8, !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.pc = load i8, ptr %i.t, align 8, !range !115, !alias.scope !137, !noalias !27, !noundef !4
  %switch.i.i163.i = icmp samesign ult i8 %i.pc, 25
  br i1 %switch.i.i163.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.pd = load ptr, ptr %i.dg, align 8, !alias.scope !144, !noalias !27, !nonnull !4, !noundef !4
  %i.pe = atomicrmw sub ptr %i.pd, i64 1 release, align 8, !noalias !145
  %i.pf = icmp eq i64 %i.pe, 1
  br i1 %i.pf, label %bb.fb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i

bb.fb:                                            ; preds = %bb.fa
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dg) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i: ; preds = %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !27
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fc:                                            ; preds = %.invoke, %bb.cm, %.thread.i, %bb.gt, %bb.gk, %bb.gf, %bb.fy, %bb.fh, %bb.ey
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !29
  unreachable

bb.fd:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep, %bb.ep, %bb.ep, %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !27
  %.val103.i = load i32, ptr %i.ae, align 8, !range !66, !noalias !27, !noundef !4
  %.val104.i = load ptr, ptr %.sroa.11244.0..sroa_idx.i, align 8, !noalias !27
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, i32 %.val103.i, ptr %.val104.i)
          to label %bb.fe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, i32 noundef %.sroa.15250.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i unwind label %bb.ff, !noalias !29

bb.ff:                                            ; preds = %bb.fk, %bb.fe
  %i.ph = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.pi = load i8, ptr %i.s, align 8, !range !115, !alias.scope !152, !noalias !27, !noundef !4
  %switch.i.i168.i = icmp samesign ult i8 %i.pi, 25
  br i1 %switch.i.i168.i, label %.body139.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.pj = load ptr, ptr %i.dd, align 8, !alias.scope !159, !noalias !27, !nonnull !4, !noundef !4
  %i.pk = atomicrmw sub ptr %i.pj, i64 1 release, align 8, !noalias !160
  %i.pl = icmp eq i64 %i.pk, 1
  br i1 %i.pl, label %bb.fh, label %.body139.i

bb.fh:                                            ; preds = %bb.fg
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dd) #40
          to label %.body139.i unwind label %bb.fc, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i: ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !27
  %i.pm = load i8, ptr %i.s, align 8, !range !115, !noalias !27, !noundef !4 ; 2 uses
  %i.pn = icmp samesign ugt i8 %i.pm, 23
  %i.po = zext nneg i8 %i.pm to i64               ; 2 uses
  %i.pp = add nsw i64 %i.po, -23
  %i.pq = select i1 %i.pn, i64 %i.pp, i64 0
  switch i64 %i.pq, label %bb.es [
    i64 0, label %bb.fk
    i64 1, label %bb.fi
    i64 2, label %bb.fj
  ]

bb.fi:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i
  %i.pr = load ptr, ptr %i.dd, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.ps = load i64, ptr %i.de, align 8, !noalias !27, !noundef !4
  br label %bb.fk

bb.fj:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i
  %i.pt = load ptr, ptr %i.dd, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.pu = load i64, ptr %i.de, align 8, !noalias !27, !noundef !4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i
  %.sroa.034.0.i = phi ptr [ %i.pv, %bb.fj ], [ %i.pr, %bb.fi ], [ %i.df, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i ]
  %.sroa.435.0.i = phi i64 [ %i.pu, %bb.fj ], [ %i.ps, %bb.fi ], [ %i.po, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit167.i ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.034.0.i, i64 noundef %.sroa.435.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.r)
          to label %bb.fl unwind label %bb.ff, !noalias !29

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !27
  store i32 0, ptr %i.y, align 8, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.pw = load i8, ptr %i.s, align 8, !range !115, !alias.scope !167, !noalias !27, !noundef !4
  %switch.i.i171.i = icmp samesign ult i8 %i.pw, 25
  br i1 %switch.i.i171.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit173.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.px = load ptr, ptr %i.dd, align 8, !alias.scope !174, !noalias !27, !nonnull !4, !noundef !4
  %i.py = atomicrmw sub ptr %i.px, i64 1 release, align 8, !noalias !175
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %bb.fn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit173.i

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dd) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit173.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit173.i: ; preds = %bb.fn, %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !27
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fo:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !27
  %i.qa = add i32 %.sroa.15250.1.ph.i, 1          ; 3 uses
  %.not81.i = icmp eq i32 %.sroa.15250.1.ph.i, -1
  br i1 %.not81.i, label %bb.fp, label %bb.fq, !prof !14

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #37
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

bb.fq:                                            ; preds = %bb.fo
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, i32 noundef %.sroa.15250.1.ph.i, i32 noundef %i.qa)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit175.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit175.i: ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.437.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %i.o, i64 20, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !27
  store i32 39, ptr %i.cz, align 4, !noalias !27
  store i8 1, ptr %.sroa.538.0..sroa_idx.i, align 4, !noalias !27
  store i32 1, ptr %i.p, align 8, !noalias !27
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.p)
          to label %bb.fr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.fr:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit175.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7283.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !27
  %.val101.i = load i32, ptr %i.ae, align 8, !range !66, !noalias !27, !noundef !4
  %.val102.i = load ptr, ptr %.sroa.11244.0..sroa_idx.i, align 8, !noalias !27
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, i32 %.val101.i, ptr %.val102.i)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.fs:                                            ; preds = %bb.fr
  %i.qb = load i8, ptr %i.n, align 8, !range !115, !noalias !27, !noundef !4 ; 2 uses
  %i.qc = icmp samesign ugt i8 %i.qb, 23
  %i.qd = zext nneg i8 %i.qb to i64               ; 2 uses
  %i.qe = add nsw i64 %i.qd, -23
  %i.qf = select i1 %i.qc, i64 %i.qe, i64 0
  switch i64 %i.qf, label %bb.es [
    i64 0, label %bb.fv
    i64 1, label %bb.ft
    i64 2, label %bb.fu
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.qg = load ptr, ptr %i.da, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.qh = load i64, ptr %i.db, align 8, !noalias !27, !noundef !4
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  %i.qi = load ptr, ptr %i.da, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.qj = load i64, ptr %i.db, align 8, !noalias !27, !noundef !4
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs
  %.sroa.044.0.i = phi ptr [ %i.qk, %bb.fu ], [ %i.qg, %bb.ft ], [ %i.dc, %bb.fs ] ; 3 uses
  %.sroa.647.0.i = phi i64 [ %i.qj, %bb.fu ], [ %i.qh, %bb.ft ], [ %i.qd, %bb.fs ] ; 5 uses
  %i.ql = icmp ult i64 %.sroa.647.0.i, 2
  br i1 %i.ql, label %.split.i, label %bb.fz

.split.i:                                         ; preds = %bb.fv
  %i.qm = icmp eq i64 %.sroa.647.0.i, 1
  br i1 %i.qm, label %bb.ga, label %bb.gb, !prof !79

bb.fw:                                            ; preds = %bb.gf, %.loopexit.split-lp408.i, %.loopexit407.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi416.i, %bb.gf ], [ %lpad.loopexit409.i, %.loopexit407.i ], [ %lpad.loopexit.split-lp410.i, %.loopexit.split-lp408.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.qn = load i8, ptr %i.n, align 8, !range !115, !alias.scope !182, !noalias !27, !noundef !4
  %switch.i.i177.i = icmp samesign ult i8 %i.qn, 25
  br i1 %switch.i.i177.i, label %.body139.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.qo = load ptr, ptr %i.da, align 8, !alias.scope !189, !noalias !27, !nonnull !4, !noundef !4
  %i.qp = atomicrmw sub ptr %i.qo, i64 1 release, align 8, !noalias !190
  %i.qq = icmp eq i64 %i.qp, 1
  br i1 %i.qq, label %bb.fy, label %.body139.i

bb.fy:                                            ; preds = %bb.fx
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.da) #40
          to label %.body139.i unwind label %bb.fc, !noalias !29

.loopexit407.i:                                   ; preds = %bb.ga
  %lpad.loopexit409.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp408.i:                          ; preds = %bb.gb
  %lpad.loopexit.split-lp410.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fz:                                            ; preds = %bb.fv
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !191, !noalias !29, !noundef !4
  %i.qt = icmp sgt i8 %i.qs, -65
  br i1 %i.qt, label %bb.ga, label %bb.gb, !prof !79

bb.ga:                                            ; preds = %bb.fz, %.split.i
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.qv = add i64 %.sroa.647.0.i, -1
  %i.qw = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qu, i64 noundef %i.qv)
          to label %bb.gc unwind label %.loopexit407.i, !noalias !29 ; 3 uses

bb.gb:                                            ; preds = %bb.fz, %.split.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0.i, i64 noundef %.sroa.647.0.i, i64 noundef 1, i64 noundef %.sroa.647.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37
          to label %bb.ek unwind label %.loopexit.split-lp408.i, !noalias !29

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !27
  %.not83.i = icmp ugt i32 %i.qa, %.sroa.19.1.ph.i
  br i1 %.not83.i, label %bb.gd, label %bb.ge, !prof !14

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #37
          to label %bb.ek unwind label %.loopexit.split-lp413.i, !noalias !29

bb.ge:                                            ; preds = %bb.gc
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, i32 noundef %i.qa, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit181.i unwind label %.loopexit412.i, !noalias !29

.loopexit412.i:                                   ; preds = %bb.ge
  %lpad.loopexit414.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.loopexit.split-lp413.i:                          ; preds = %bb.gd
  %lpad.loopexit.split-lp415.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.gf:                                            ; preds = %.loopexit.split-lp413.i, %.loopexit412.i
  %lpad.phi416.i = phi { ptr, i32 } [ %lpad.loopexit414.i, %.loopexit412.i ], [ %lpad.loopexit.split-lp415.i, %.loopexit.split-lp413.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def(ptr nonnull %i.qw) #39
          to label %bb.fw unwind label %bb.fc, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit181.i: ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7283.i, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.qx = load i8, ptr %i.n, align 8, !range !115, !alias.scope !200, !noalias !27, !noundef !4
  %switch.i.i182.i = icmp samesign ult i8 %i.qx, 25
  br i1 %switch.i.i182.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit184.i, label %bb.gg

bb.gg:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit181.i
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.qy = load ptr, ptr %i.da, align 8, !alias.scope !207, !noalias !27, !nonnull !4, !noundef !4
  %i.qz = atomicrmw sub ptr %i.qy, i64 1 release, align 8, !noalias !208
  %i.ra = icmp eq i64 %i.qz, 1
  br i1 %i.ra, label %bb.gh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit184.i

bb.gh:                                            ; preds = %bb.gg
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.da) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit184.i unwind label %bb.gk, !noalias !29

bb.gi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit184.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit184.i: ; preds = %bb.gh, %bb.gg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !27
  store i32 2, ptr %i.l, align 8, !noalias !27
  store ptr %i.qw, ptr %.sroa.5282.0..sroa_idx.i, align 8, !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7283.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7283.i, i64 20, i1 false), !noalias !27
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !27
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l)
          to label %bb.gj unwind label %bb.gi, !noalias !29

bb.gj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7283.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !27
  br label %.loopexit.i

bb.gk:                                            ; preds = %bb.gh
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 2, ptr nonnull %i.qw) #39
          to label %.body139.i unwind label %bb.fc, !noalias !29

.loopexit.i:                                      ; preds = %bb.hn, %bb.el, %bb.hm, %bb.gj, %bb.ep, %bb.dz, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentCsileJQcQObtj_7hir_def.exit.i
  %.val94.i = load i32, ptr %i.ae, align 8, !range !66, !noalias !27, !noundef !4 ; 3 uses
  %.val95.i = load ptr, ptr %.sroa.11244.0..sroa_idx.i, align 8, !noalias !27 ; 7 uses
  %i.rd = add nsw i32 %.val94.i, -3
  %i.re = icmp samesign ugt i32 %.val94.i, 2
  %narrow.i.i = select i1 %i.re, i32 %i.rd, i32 2
  switch i32 %narrow.i.i, label %.invoke1198.i [
    i32 0, label %bb.gl
    i32 1, label %bb.gm
  ]

.invoke1198.i:                                    ; preds = %bb.ho, %.loopexit.i
  %i.rf = phi i32 [ %.val94.i, %.loopexit.i ], [ %.val92.i, %bb.ho ]
  %i.rg = phi ptr [ %.val95.i, %.loopexit.i ], [ %.val93.i, %bb.ho ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %i.rf, ptr %i.rg)
          to label %.backedge.i unwind label %.thread313.loopexit.split-lp.loopexit.i, !noalias !29

bb.gl:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !209, !noundef !4
  %i.rj = add i32 %i.ri, -1                       ; 2 uses
  store i32 %i.rj, ptr %i.rh, align 4, !noalias !209
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %.invoke1189.invoke.i, label %.backedge.i

bb.gm:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.rl = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !noalias !212, !noundef !4
  %i.rn = add i32 %i.rm, -1                       ; 2 uses
  store i32 %i.rn, ptr %i.rl, align 4, !noalias !212
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %.invoke1189.invoke.i, label %.backedge.i

.invoke1189.invoke.i:                             ; preds = %bb.hq, %bb.hp, %bb.gm, %bb.gl
  %i.rp = phi ptr [ %.val95.i, %bb.gl ], [ %.val95.i, %bb.gm ], [ %.val93.i, %bb.hq ], [ %.val93.i, %bb.hp ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.rp) #40
          to label %.backedge.i unwind label %.thread313.loopexit.split-lp.loopexit.i, !noalias !29

bb.gn:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !27
  %i.rq = load i8, ptr %i.x, align 8, !range !115, !noalias !27, !noundef !4 ; 2 uses
  %i.rr = icmp samesign ugt i8 %i.rq, 23
  %i.rs = zext nneg i8 %i.rq to i64               ; 2 uses
  %i.rt = add nsw i64 %i.rs, -23
  %i.ru = select i1 %i.rr, i64 %i.rt, i64 0
  switch i64 %i.ru, label %bb.es [
    i64 0, label %bb.gq
    i64 1, label %bb.go
    i64 2, label %bb.gp
  ]

bb.go:                                            ; preds = %bb.gn
  %i.rv = load ptr, ptr %i.dj, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.rw = load i64, ptr %i.dk, align 8, !noalias !27, !noundef !4
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.rx = load ptr, ptr %i.dj, align 8, !noalias !27, !nonnull !4, !noundef !4
  %i.ry = load i64, ptr %i.dk, align 8, !noalias !27, !noundef !4
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go, %bb.gn
  %.sroa.026.0.i = phi ptr [ %i.rz, %bb.gp ], [ %i.rv, %bb.go ], [ %i.dl, %bb.gn ]
  %.sroa.427.0.i = phi i64 [ %i.ry, %bb.gp ], [ %i.rw, %bb.go ], [ %i.rs, %bb.gn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !27
  invoke void @_RNvXNtCs33K2ylI4knu_10hir_expand8span_mapNtB2_7SpanMapNtCslVwgvvnzcNb_13syntax_bridge10SpanMapper8span_for(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, i32 noundef %.sroa.15250.1.ph.i, i32 noundef %.sroa.19.1.ph.i)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit190.i unwind label %bb.gr, !noalias !29

bb.gr:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit190.i, %bb.gq
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.sb = load i8, ptr %i.x, align 8, !range !115, !alias.scope !221, !noalias !27, !noundef !4
  %switch.i.i191.i = icmp samesign ult i8 %i.sb, 25
  br i1 %switch.i.i191.i, label %.body139.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.sc = load ptr, ptr %i.dj, align 8, !alias.scope !228, !noalias !27, !nonnull !4, !noundef !4
  %i.sd = atomicrmw sub ptr %i.sc, i64 1 release, align 8, !noalias !229
  %i.se = icmp eq i64 %i.sd, 1
  br i1 %i.se, label %bb.gt, label %.body139.i

bb.gt:                                            ; preds = %bb.gs
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dj) #40
          to label %.body139.i unwind label %bb.fc, !noalias !29

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit190.i: ; preds = %bb.gq
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.026.0.i, i64 noundef %.sroa.427.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.v)
          to label %bb.gu unwind label %bb.gr, !noalias !29

bb.gu:                                            ; preds = %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !27
  store i32 2, ptr %i.y, align 8, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !27
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.sf = load i8, ptr %i.x, align 8, !range !115, !alias.scope !236, !noalias !27, !noundef !4
  %switch.i.i194.i = icmp samesign ult i8 %i.sf, 25
  br i1 %switch.i.i194.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit196.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.sg = load ptr, ptr %i.dj, align 8, !alias.scope !243, !noalias !27, !nonnull !4, !noundef !4
  %i.sh = atomicrmw sub ptr %i.sg, i64 1 release, align 8, !noalias !244
  %i.si = icmp eq i64 %i.sh, 1
  br i1 %i.si, label %bb.gw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit196.i

bb.gw:                                            ; preds = %bb.gv
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dj) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit196.i: ; preds = %bb.gw, %bb.gv, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !27
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %.noexc200.i, %.noexc199.i, %.thread361.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit196.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit173.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit154.i
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.y)
end_hunk_1
begin_hunk_2_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapEB12_:bb.a
.noexc98.i.i:                                     ; preds = %bb.bx, %bb.bw
  %.sroa.0.0.i91.i.i = phi i32 [ %i.ic, %bb.bw ], [ %i.id, %bb.bx ] ; 4 uses
  %i.ie = load i64, ptr %i.fu, align 8, !range !16, !noalias !295, !noundef !4
  %i.if = trunc nuw i64 %i.ie to i1
  %i.ig = load ptr, ptr %i.gi, align 8, !noalias !295, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.if, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %.noexc98.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !295, !noundef !4 ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, 4294967295
  %i.ik = shl nuw i64 %i.ii, 32
  %.sroa.09.0.insert.insert.i.i94.i.i = select i1 %i.ij, i64 513, i64 %i.ik ; 2 uses
  %i.il = trunc i64 %.sroa.09.0.insert.insert.i.i94.i.i to i1
  br i1 %i.il, label %bb.bz, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i, !prof !14

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !297
  br label %.invoke135.i.i

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i: ; preds = %bb.by
  %.sroa.6.0.extract.shift.i.i.i96.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i94.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i97.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i96.i.i to i32
  br label %bb.cb

bb.ca:                                            ; preds = %.noexc98.i.i
  %i.im = load i32, ptr %i.ig, align 8, !noalias !295, !noundef !4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i
  %.sroa.02.0.i92.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i97.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i95.i.i ], [ %i.im, %bb.ca ]
  %i.in = xor i32 %.sroa.0.0.i91.i.i, -1
  %.not.i93.i.i = icmp ugt i32 %.sroa.02.0.i92.i.i, %i.in
  br i1 %.not.i93.i.i, label %.invoke.i.i, label %bb.cc, !prof !14

bb.cc:                                            ; preds = %bb.cb
  %.not42.i.i = icmp eq i32 %.sroa.0.0.i91.i.i, -1
  br i1 %.not42.i.i, label %bb.cd, label %bb.ce, !prof !14

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #37
          to label %bb.as unwind label %.loopexit.split-lp407.i, !noalias !295

bb.ce:                                            ; preds = %bb.cc
  %i.io = add nuw i32 %.sroa.0.0.i91.i.i, 1
  br label %bb.cp

bb.cf:                                            ; preds = %bb.bp
  %i.ip = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ce, align 8, !alias.scope !294, !noalias !295
  br label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECsileJQcQObtj_7hir_def.exit86.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  store ptr null, ptr %i.ce, align 8, !alias.scope !294, !noalias !295
  %i.iq = load i8, ptr %i.gb, align 4, !range !15, !noalias !295, !noundef !4
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.ch, label %bb.cg, !prof !14

bb.cg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECsileJQcQObtj_7hir_def.exit86.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.it = load i32, ptr %i.is, align 8, !noalias !295, !noundef !4
  br label %.noexc109.i.i

bb.ch:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeEEECsileJQcQObtj_7hir_def.exit86.i.i
  %i.iu = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fu)
          to label %.noexc109.i.i unwind label %.loopexit406.i, !noalias !295

.noexc109.i.i:                                    ; preds = %bb.ch, %bb.cg
  %.sroa.0.0.i102.i.i = phi i32 [ %i.it, %bb.cg ], [ %i.iu, %bb.ch ] ; 3 uses
  %i.iv = load i64, ptr %i.fu, align 8, !range !16, !noalias !295, !noundef !4
  %i.iw = trunc nuw i64 %i.iv to i1
  %i.ix = load ptr, ptr %i.gi, align 8, !noalias !295, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.iw, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %.noexc109.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !noalias !295, !noundef !4 ; 2 uses
  %i.ja = icmp ugt i64 %i.iz, 4294967295
  %i.jb = shl nuw i64 %i.iz, 32
  %.sroa.09.0.insert.insert.i.i105.i.i = select i1 %i.ja, i64 513, i64 %i.jb ; 2 uses
  %i.jc = trunc i64 %.sroa.09.0.insert.insert.i.i105.i.i to i1
  br i1 %i.jc, label %bb.cj, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i, !prof !14

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !297
  br label %.invoke135.i.i

.invoke135.i.i:                                   ; preds = %bb.cj, %bb.bz, %bb.ba
  %.sink.i.i = phi ptr [ %i.e, %bb.ba ], [ %i.d, %bb.bz ], [ %i.c, %bb.cj ] ; 2 uses
  store i8 2, ptr %.sink.i.i, align 1, !noalias !297
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %.sink.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931) #38
          to label %.cont136.i.i unwind label %.loopexit.split-lp407.i, !noalias !295

.cont136.i.i:                                     ; preds = %.invoke135.i.i
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i: ; preds = %bb.ci
  %.sroa.6.0.extract.shift.i.i.i107.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i105.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i108.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i107.i.i to i32
  br label %bb.cl

bb.ck:                                            ; preds = %.noexc109.i.i
  %i.jd = load i32, ptr %i.ix, align 8, !noalias !295, !noundef !4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i
  %.sroa.02.0.i103.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i108.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i106.i.i ], [ %i.jd, %bb.ck ]
  %i.je = add i32 %.sroa.02.0.i103.i.i, %.sroa.0.0.i102.i.i ; 2 uses
  %.not.i104.i.i = icmp ugt i32 %.sroa.0.0.i102.i.i, %i.je
  br i1 %.not.i104.i.i, label %.invoke.i.i, label %bb.cp, !prof !14

.invoke.i.i:                                      ; preds = %bb.cl, %bb.cb, %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #38
          to label %.cont.i.i unwind label %.loopexit.split-lp407.i, !noalias !295

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread325.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hr
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread325.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1180.invoke.i, %.invoke1189.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit58.i.i
  %lpad.loopexit399.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread325.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1181.i.a
  %lpad.loopexit.split-lp400.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter4bumpBU_.exit.i: ; preds = %bb.av, %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.jf = load i64, ptr %i.cm, align 8, !noalias !288, !noundef !4 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %._crit_edge.i, label %.lr.ph.i

.body147.i:                                       ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.gk, %bb.gi, %bb.fy, %bb.fx, %bb.fw, %bb.fg, %bb.ff, %bb.fe, %bb.ey, %bb.ex, %bb.ew, %bb.ea, %bb.dq, %bb.dp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit388.i
  %.pn86.i = phi { ptr, i32 } [ %i.qv, %bb.ff ], [ %.pn.i, %bb.fx ], [ %i.ne, %bb.ea ], [ %i.ql, %bb.ex ], [ %i.tg, %bb.gk ], [ %i.tf, %bb.gi ], [ %lpad.phi418.i, %bb.dp ], [ %i.ue, %bb.gr ], [ %lpad.phi418.i, %bb.dq ], [ %i.ql, %bb.ey ], [ %i.ql, %bb.ew ], [ %i.qv, %bb.fg ], [ %i.qv, %bb.fe ], [ %.pn.i, %bb.fy ], [ %.pn.i, %bb.fw ], [ %i.ue, %bb.gs ], [ %i.ue, %bb.gq ], [ %lpad.loopexit389.i, %.loopexit388.i ], [ %lpad.loopexit395.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit411.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp412.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 4 uses
  %.val96.i = load i32, ptr %i.aa, align 8, !range !66, !noalias !288, !noundef !4 ; 3 uses
  %.val97.i = load ptr, ptr %.sroa.11236.0..sroa_idx.i, align 8, !noalias !288 ; 6 uses
  %i.jh = add nsw i32 %.val96.i, -3
  %i.ji = icmp samesign ugt i32 %.val96.i, 2
  %narrow.i = select i1 %i.ji, i32 %i.jh, i32 2
  switch i32 %narrow.i, label %bb.cm [
    i32 0, label %bb.cn
    i32 1, label %bb.co
  ]

bb.cm:                                            ; preds = %.body147.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val96.i, ptr %.val97.i)
          to label %.thread.i unwind label %bb.fc

bb.cn:                                            ; preds = %.body147.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !290
  %i.jj = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !noalias !326, !noundef !4
  %i.jl = add i32 %i.jk, -1                       ; 2 uses
  store i32 %i.jl, ptr %i.jj, align 4, !noalias !326
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %.invoke, label %.thread.i

bb.co:                                            ; preds = %.body147.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97.i) ], !noalias !290
  %i.jn = getelementptr inbounds nuw i8, ptr %.val97.i, i64 48 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !noalias !329, !noundef !4
  %i.jp = add i32 %i.jo, -1                       ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 4, !noalias !329
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %.invoke, label %.thread.i

.invoke:                                          ; preds = %bb.co, %bb.cn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val97.i) #40
          to label %.thread.i unwind label %bb.fc

.loopexit388.i:                                   ; preds = %.preheader.i
  %lpad.loopexit389.i = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.preheader393.i
  %lpad.loopexit395.i = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hm, %bb.ha, %bb.gz, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.gw, %bb.fr, %bb.fq, %bb.fn, %bb.fd, %bb.fb, %bb.eq, %bb.en, %bb.em, %.invoke1182.i, %bb.dy, %bb.dt, %bb.dg, %.noexc122.i, %bb.ct, %bb.cr
  %lpad.loopexit411.i = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fp, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charB1n_.exit.thread.invoke.i, %.invoke1183.i, %.invoke1187.i, %.invoke1185.i
  %lpad.loopexit.split-lp412.i = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

bb.cp:                                            ; preds = %bb.cl, %bb.ce, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.je, %bb.cl ], [ %i.io, %bb.ce ], [ 0, %bb.au ], [ %i.fr, %bb.ar ] ; 9 uses
  %.sroa.15242.1.ph.i = phi i32 [ %.sroa.0.0.i102.i.i, %bb.cl ], [ %.sroa.0.0.i91.i.i, %bb.ce ], [ 0, %bb.au ], [ %i.fq, %bb.ar ] ; 10 uses
  %.sroa.13.1.ph.i = phi i64 [ 0, %bb.cl ], [ 0, %bb.ce ], [ %.sroa.13.0.copyload240.i, %bb.au ], [ %i.fs, %bb.ar ]
  %.sroa.11236.1.ph.i = phi ptr [ %i.fu, %bb.cl ], [ %i.fu, %bb.ce ], [ %.sroa.11236.0.copyload238.i, %bb.au ], [ %i.eb, %bb.ar ]
  %i.jr = phi i32 [ %.sroa.11.0.i, %bb.cl ], [ %.sroa.11.0.i, %bb.ce ], [ %.sroa.11.0.copyload235.i, %bb.au ], [ %.sroa.11.0.i, %bb.ar ] ; 5 uses
  %i.js = phi i32 [ 3, %bb.cl ], [ 4, %bb.ce ], [ %i.ei, %bb.au ], [ 4, %bb.ar ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !288
  store i32 %i.js, ptr %i.aa, align 8, !noalias !288
  store i32 %i.jr, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !288
  store ptr %.sroa.11236.1.ph.i, ptr %.sroa.11236.0..sroa_idx.i, align 8, !noalias !288
  store i64 %.sroa.13.1.ph.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, i64 16, i1 false), !noalias !288
  %i.jt = icmp samesign ugt i32 %i.js, 2
  br i1 %i.jt, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ju = icmp eq i32 %i.js, 1
  br i1 %i.ju, label %bb.gx, label %bb.gy

bb.cr:                                            ; preds = %bb.cp
  %i.jv = invoke fastcc noundef i16 @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE4kindB1n_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290 ; 5 uses

bb.cs:                                            ; preds = %bb.cr
  switch i16 %i.jv, label %bb.em [
    i16 150, label %bb.ct
    i16 153, label %bb.en
    i16 53, label %bb.cu
    i16 2, label %bb.cu
    i16 3, label %bb.cu
    i16 4, label %bb.cu
    i16 5, label %bb.cu
    i16 6, label %bb.cu
    i16 7, label %bb.cu
    i16 8, label %bb.cu
    i16 9, label %bb.cu
    i16 10, label %bb.cu
    i16 11, label %bb.cu
    i16 12, label %bb.cu
    i16 13, label %bb.cu
    i16 14, label %bb.cu
    i16 15, label %bb.cu
    i16 16, label %bb.cu
    i16 17, label %bb.cu
    i16 18, label %bb.cu
    i16 19, label %bb.cu
    i16 20, label %bb.cu
    i16 21, label %bb.cu
    i16 22, label %bb.cu
    i16 23, label %bb.cu
    i16 25, label %bb.cu
    i16 26, label %bb.cu
    i16 27, label %bb.cu
    i16 28, label %bb.cu
    i16 29, label %bb.cu
    i16 30, label %bb.cu
    i16 31, label %bb.cu
    i16 32, label %bb.cu
    i16 33, label %bb.cu
    i16 34, label %bb.cu
    i16 35, label %bb.cu
    i16 36, label %bb.cu
    i16 37, label %bb.cu
    i16 38, label %bb.cu
    i16 39, label %bb.cu
    i16 40, label %bb.cu
    i16 41, label %bb.cu
    i16 42, label %bb.cu
    i16 43, label %bb.cu
    i16 44, label %bb.cu
    i16 45, label %bb.cu
    i16 46, label %bb.cu
    i16 47, label %bb.cu
    i16 48, label %bb.cu
    i16 49, label %bb.cu
    i16 50, label %bb.cu
    i16 51, label %bb.cu
    i16 52, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !288
  %.val108.i = load i32, ptr %i.cr, align 8, !alias.scope !285, !noalias !290, !noundef !4 ; 3 uses
  %i.jw = lshr i32 %.val108.i, 23
  %i.jx = and i32 %.val108.i, 2113929216
  %i.jy = icmp eq i32 %i.jx, 0
  call void @llvm.assume(i1 %i.jy)
  %i.jz = and i32 %i.jw, 3
  %i.ka = sub nuw nsw i32 -253, %i.jz
  store i32 %.sroa.15242.1.ph.i, ptr %i.z, align 4, !alias.scope !332, !noalias !288
  store i32 %.sroa.19.1.ph.i, ptr %i.db, align 4, !alias.scope !332, !noalias !288
  store i32 %.val108.i, ptr %i.dc, align 4, !alias.scope !332, !noalias !288
  store i32 -1610612736, ptr %i.dd, align 4, !alias.scope !332, !noalias !288
  store i32 %i.ka, ptr %i.de, align 4, !alias.scope !332, !noalias !288
  %.val109.i = load i8, ptr %i.df, align 8, !alias.scope !285, !noalias !290
  %i.kb = invoke noundef nonnull align 8 ptr @_RNvMs5_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynToken5token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

.noexc122.i:                                      ; preds = %bb.ct
  %i.kc = trunc nuw i8 %.val109.i to i1
  invoke void @_RNvCslVwgvvnzcNb_13syntax_bridge19convert_doc_comment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.kb, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.z, i1 noundef zeroext %i.kc, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ac)
          to label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentBU_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentBU_.exit.i: ; preds = %.noexc122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !288
  br label %.loopexit.i

bb.cu:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.kd = load ptr, ptr %i.cl, align 8, !noalias !288, !nonnull !4, !noundef !4 ; 2 uses
  %i.ke = load i64, ptr %i.cm, align 8, !noalias !288, !noundef !4 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %.loopexit392.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cu
  %.idx386.i = shl nuw nsw i64 %i.ke, 3
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.idx386.i
  %i.kh = load i64, ptr %i.cn, align 8, !range !73, !noalias !288, !noundef !4
  %i.ki = load i64, ptr %i.co, align 8, !noalias !288, !noundef !4 ; 4 uses
  %i.kj = load ptr, ptr %i.cp, align 8, !noalias !288, !nonnull !4 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6M_.exit.i.i, %.lr.ph.i.preheader.i
  %indvars.iv965.i = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %indvars.iv.next966.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6M_.exit.i.i ] ; 2 uses
  %i.kk = phi ptr [ %i.kg, %.lr.ph.i.preheader.i ], [ %i.kl, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6M_.exit.i.i ]
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -8 ; 3 uses
  %.val.i124.i = load i64, ptr %i.kl, align 8, !noalias !337, !noundef !4 ; 7 uses
  %i.km = icmp ult i64 %.val.i124.i, %i.ki        ; 3 uses
  switch i64 %i.kh, label %.lr.ph.i.i.unreachabledefault [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
    i64 2, label %bb.cx
  ]

.lr.ph.i.i.unreachabledefault:                    ; preds = %.lr.ph.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc203.i, %.noexc126.i
  unreachable

bb.cv:                                            ; preds = %.lr.ph.i.i
  br i1 %i.km, label %bb.cy, label %.invoke1185.i

bb.cw:                                            ; preds = %.lr.ph.i.i
  br i1 %i.km, label %bb.cz, label %.invoke1185.i

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.km, label %bb.da, label %.invoke1185.i

bb.cy:                                            ; preds = %bb.cv
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %.val.i124.i ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 8, !range !78, !noalias !290, !noundef !4
  %i.kp = icmp eq i8 %i.ko, 3
  br i1 %i.kp, label %.noexc126.i, label %.invoke1187.i, !prof !79

.invoke1185.i:                                    ; preds = %bb.he, %bb.hd, %bb.hc, %bb.cx, %bb.cw, %bb.cv
  %i.kq = phi i64 [ %.val.i124.i, %bb.cx ], [ %.val.i124.i, %bb.cv ], [ %.val.i124.i, %bb.cw ], [ %.val.i197.i, %bb.hc ], [ %.val.i197.i, %bb.hd ], [ %.val.i197.i, %bb.he ]
  %i.kr = phi i64 [ %i.ki, %bb.cx ], [ %i.ki, %bb.cv ], [ %i.ki, %bb.cw ], [ %i.ve, %bb.hc ], [ %i.ve, %bb.hd ], [ %i.ve, %bb.he ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.kq, i64 noundef %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #38
          to label %.cont1186.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !290

.cont1186.i:                                      ; preds = %.invoke1185.i
  unreachable

.invoke1187.i:                                    ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.da, %bb.cz, %bb.cy
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #38
          to label %.cont1188.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !290

.cont1188.i:                                      ; preds = %.invoke1187.i
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %i.kj, i64 %.val.i124.i ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 8, !range !78, !noalias !290, !noundef !4
  %i.ku = icmp eq i8 %i.kt, 3
  br i1 %i.ku, label %.noexc126.i, label %.invoke1187.i, !prof !79

bb.da:                                            ; preds = %bb.cx
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.kj, i64 %.val.i124.i ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 8, !range !78, !noalias !290, !noundef !4
  %i.kx = icmp eq i8 %i.kw, 3
  br i1 %i.kx, label %.noexc126.i, label %.invoke1187.i, !prof !79

.noexc126.i:                                      ; preds = %bb.da, %bb.cz, %bb.cy
  %.sink.i214.i = phi ptr [ %i.ks, %bb.cz ], [ %i.kv, %bb.da ], [ %i.kn, %bb.cy ]
  %i.ky = getelementptr inbounds nuw i8, ptr %.sink.i214.i, i64 1
  %.sroa.0.0.i215.i = load i8, ptr %i.ky, align 1, !range !78, !noalias !290, !noundef !4
  switch i8 %.sroa.0.0.i215.i, label %default.unreachable [
    i8 0, label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B19_.exit.i.i.i.i.i
    i8 1, label %bb.db
    i8 2, label %bb.dc
    i8 3, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6M_.exit.i.i
  ]

bb.db:                                            ; preds = %.noexc126.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B19_.exit.i.i.i.i.i

bb.dc:                                            ; preds = %.noexc126.i
  br label %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B19_.exit.i.i.i.i.i

_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B19_.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db, %.noexc126.i
  %.sink1.i.i.i.i.i.i = phi i16 [ 10, %bb.dc ], [ 8, %bb.db ], [ 6, %.noexc126.i ]
  %i.kz = icmp eq i16 %i.jv, %.sink1.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapEB12_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !288
  %.val114.i = load i32, ptr %i.aa, align 8, !range !66, !noalias !288, !noundef !4
  %.val115.i = load ptr, ptr %.sroa.11236.0..sroa_idx.i, align 8, !noalias !288
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textB1n_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, i32 %.val114.i, ptr %.val115.i)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

bb.er:                                            ; preds = %bb.eq
  %i.qa = load i8, ptr %i.r, align 8, !range !115, !noalias !288, !noundef !4 ; 2 uses
  %i.qb = icmp samesign ugt i8 %i.qa, 23
  %i.qc = zext nneg i8 %i.qa to i64               ; 2 uses
  %i.qd = add nsw i64 %i.qc, -23
  %i.qe = select i1 %i.qb, i64 %i.qd, i64 0
  switch i64 %i.qe, label %bb.es [
    i64 0, label %bb.ev
    i64 1, label %bb.et
    i64 2, label %bb.eu
  ]

bb.es:                                            ; preds = %bb.gn, %bb.fs, %bb.fh, %bb.er
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.qf = load ptr, ptr %i.dr, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.qg = load i64, ptr %i.ds, align 8, !noalias !288, !noundef !4
  br label %bb.ev

bb.eu:                                            ; preds = %bb.er
  %i.qh = load ptr, ptr %i.dr, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.qi = load i64, ptr %i.ds, align 8, !noalias !288, !noundef !4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.er
  %.sroa.032.0.i = phi ptr [ %i.qj, %bb.eu ], [ %i.qf, %bb.et ], [ %i.dt, %bb.er ]
  %.sroa.433.0.i = phi i64 [ %i.qi, %bb.eu ], [ %i.qg, %bb.et ], [ %i.qc, %bb.er ]
  %i.qk = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.032.0.i, i64 noundef %.sroa.433.0.i)
          to label %bb.ez unwind label %bb.ew, !noalias !290

bb.ew:                                            ; preds = %bb.ev
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.qm = load i8, ptr %i.r, align 8, !range !115, !alias.scope !392, !noalias !288, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.qm, 25
  br i1 %switch.i.i.i, label %.body147.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.qn = load ptr, ptr %i.dr, align 8, !alias.scope !399, !noalias !288, !nonnull !4, !noundef !4
  %i.qo = atomicrmw sub ptr %i.qn, i64 1 release, align 8, !noalias !400
  %i.qp = icmp eq i64 %i.qo, 1
  br i1 %i.qp, label %bb.ey, label %.body147.i

bb.ey:                                            ; preds = %bb.ex
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dr) #40
          to label %.body147.i unwind label %bb.fc, !noalias !290

bb.ez:                                            ; preds = %bb.ev
  store ptr %i.qk, ptr %i.ck, align 8, !noalias !288
  store i32 %.sroa.15242.1.ph.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !288
  store i32 %.sroa.19.1.ph.i, ptr %.sroa.423.sroa.6.0..sroa.423.0..sroa_idx.sroa_idx.i, align 4, !noalias !288
  store i32 %.val104.i, ptr %.sroa.423.sroa.7.0..sroa.423.0..sroa_idx.sroa_idx.i, align 8, !noalias !288
  store i32 -1610612736, ptr %.sroa.524.0..sroa_idx.i, align 4, !noalias !288
  store i32 %i.pz, ptr %.sroa.429.sroa.7.0..sroa.429.0..sroa_idx.sroa_idx.i, align 8, !noalias !288
  store i8 0, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !288
  store i32 2, ptr %i.v, align 8, !noalias !288
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.qq = load i8, ptr %i.r, align 8, !range !115, !alias.scope !407, !noalias !288, !noundef !4
  %switch.i.i163.i = icmp samesign ult i8 %i.qq, 25
  br i1 %switch.i.i163.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.qr = load ptr, ptr %i.dr, align 8, !alias.scope !414, !noalias !288, !nonnull !4, !noundef !4
  %i.qs = atomicrmw sub ptr %i.qr, i64 1 release, align 8, !noalias !415
  %i.qt = icmp eq i64 %i.qs, 1
  br i1 %i.qt, label %bb.fb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i

bb.fb:                                            ; preds = %bb.fa
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dr) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit165.i: ; preds = %bb.fb, %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !288
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fc:                                            ; preds = %.invoke, %bb.cm, %.thread.i, %bb.gs, %bb.gk, %bb.ge, %bb.fy, %bb.fg, %bb.ey
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !290
  unreachable

bb.fd:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep, %bb.ep, %bb.ep, %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !288
  %.val112.i = load i32, ptr %i.aa, align 8, !range !66, !noalias !288, !noundef !4
  %.val113.i = load ptr, ptr %.sroa.11236.0..sroa_idx.i, align 8, !noalias !288
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textB1n_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q, i32 %.val112.i, ptr %.val113.i)
          to label %bb.fh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

bb.fe:                                            ; preds = %bb.fk
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.qw = load i8, ptr %i.q, align 8, !range !115, !alias.scope !422, !noalias !288, !noundef !4
  %switch.i.i166.i = icmp samesign ult i8 %i.qw, 25
  br i1 %switch.i.i166.i, label %.body147.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.qx = load ptr, ptr %i.do, align 8, !alias.scope !429, !noalias !288, !nonnull !4, !noundef !4
  %i.qy = atomicrmw sub ptr %i.qx, i64 1 release, align 8, !noalias !430
  %i.qz = icmp eq i64 %i.qy, 1
  br i1 %i.qz, label %bb.fg, label %.body147.i

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.do) #40
          to label %.body147.i unwind label %bb.fc, !noalias !290

bb.fh:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !288
  %.val103.i = load i32, ptr %i.cr, align 8, !alias.scope !285, !noalias !290, !noundef !4 ; 3 uses
  %i.ra = lshr i32 %.val103.i, 23
  %i.rb = and i32 %.val103.i, 2113929216
  %i.rc = icmp eq i32 %i.rb, 0
  call void @llvm.assume(i1 %i.rc)
  %i.rd = and i32 %i.ra, 3
  %i.re = sub nuw nsw i32 -253, %i.rd
  store i32 %.sroa.15242.1.ph.i, ptr %i.p, align 4, !alias.scope !431, !noalias !288
  store i32 %.sroa.19.1.ph.i, ptr %i.dk, align 4, !alias.scope !431, !noalias !288
  store i32 %.val103.i, ptr %i.dl, align 4, !alias.scope !431, !noalias !288
  store i32 -1610612736, ptr %i.dm, align 4, !alias.scope !431, !noalias !288
  store i32 %i.re, ptr %i.dn, align 4, !alias.scope !431, !noalias !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !288
  %i.rf = load i8, ptr %i.q, align 8, !range !115, !noalias !288, !noundef !4 ; 2 uses
  %i.rg = icmp samesign ugt i8 %i.rf, 23
  %i.rh = zext nneg i8 %i.rf to i64               ; 2 uses
  %i.ri = add nsw i64 %i.rh, -23
  %i.rj = select i1 %i.rg, i64 %i.ri, i64 0
  switch i64 %i.rj, label %bb.es [
    i64 0, label %bb.fk
    i64 1, label %bb.fi
    i64 2, label %bb.fj
  ]

bb.fi:                                            ; preds = %bb.fh
  %i.rk = load ptr, ptr %i.do, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.rl = load i64, ptr %i.dp, align 8, !noalias !288, !noundef !4
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.rm = load ptr, ptr %i.do, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.rn = load i64, ptr %i.dp, align 8, !noalias !288, !noundef !4
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  %.sroa.034.0.i = phi ptr [ %i.ro, %bb.fj ], [ %i.rk, %bb.fi ], [ %i.dq, %bb.fh ]
  %.sroa.435.0.i = phi i64 [ %i.rn, %bb.fj ], [ %i.rl, %bb.fi ], [ %i.rh, %bb.fh ]
  invoke void @_RNvCs4dcH4YgJDq_2tt16token_to_literal(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.034.0.i, i64 noundef %.sroa.435.0.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(20) %i.p)
          to label %bb.fl unwind label %bb.fe, !noalias !290

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !288
  store i32 0, ptr %i.v, align 8, !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !288
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.rp = load i8, ptr %i.q, align 8, !range !115, !alias.scope !442, !noalias !288, !noundef !4
  %switch.i.i169.i = icmp samesign ult i8 %i.rp, 25
  br i1 %switch.i.i169.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit171.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.rq = load ptr, ptr %i.do, align 8, !alias.scope !449, !noalias !288, !nonnull !4, !noundef !4
  %i.rr = atomicrmw sub ptr %i.rq, i64 1 release, align 8, !noalias !450
  %i.rs = icmp eq i64 %i.rr, 1
  br i1 %i.rs, label %bb.fn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit171.i

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.do) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit171.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit171.i: ; preds = %bb.fn, %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !288
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.fo:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !288
  %i.rt = add i32 %.sroa.15242.1.ph.i, 1          ; 3 uses
  %.not81.i = icmp eq i32 %.sroa.15242.1.ph.i, -1
  br i1 %.not81.i, label %bb.fp, label %bb.fq, !prof !14

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #37
          to label %bb.ek unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !290

bb.fq:                                            ; preds = %bb.fo
  %.val102.i = load i32, ptr %i.cr, align 8, !alias.scope !285, !noalias !290, !noundef !4 ; 3 uses
  %i.ru = lshr i32 %.val102.i, 23
  %i.rv = and i32 %.val102.i, 2113929216
  %i.rw = icmp eq i32 %i.rv, 0
  call void @llvm.assume(i1 %i.rw)
  %i.rx = and i32 %i.ru, 3
  %i.ry = sub nuw nsw i32 -253, %i.rx
  store i32 39, ptr %i.dg, align 4, !noalias !288
  store i32 %.sroa.15242.1.ph.i, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !288
  store i32 %i.rt, ptr %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx.i, align 4, !noalias !288
  store i32 %.val102.i, ptr %.sroa.437.sroa.5.0..sroa.437.0..sroa_idx.sroa_idx.i, align 8, !noalias !288
  store i32 -1610612736, ptr %.sroa.437.sroa.6.0..sroa.437.0..sroa_idx.sroa_idx.i, align 4, !noalias !288
  store i32 %i.ry, ptr %.sroa.437.sroa.7.0..sroa.437.0..sroa_idx.sroa_idx.i, align 8, !noalias !288
  store i8 1, ptr %.sroa.538.0..sroa_idx.i, align 4, !noalias !288
  store i32 1, ptr %i.n, align 8, !noalias !288
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.n)
          to label %bb.fr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !288
  %.val110.i = load i32, ptr %i.aa, align 8, !range !66, !noalias !288, !noundef !4
  %.val111.i = load ptr, ptr %.sroa.11236.0..sroa_idx.i, align 8, !noalias !288
  invoke fastcc void @_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_textB1n_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, i32 %.val110.i, ptr %.val111.i)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

bb.fs:                                            ; preds = %bb.fr
  %i.rz = load i8, ptr %i.m, align 8, !range !115, !noalias !288, !noundef !4 ; 2 uses
  %i.sa = icmp samesign ugt i8 %i.rz, 23
  %i.sb = zext nneg i8 %i.rz to i64               ; 2 uses
  %i.sc = add nsw i64 %i.sb, -23
  %i.sd = select i1 %i.sa, i64 %i.sc, i64 0
  switch i64 %i.sd, label %bb.es [
    i64 0, label %bb.fv
    i64 1, label %bb.ft
    i64 2, label %bb.fu
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.se = load ptr, ptr %i.dh, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.sf = load i64, ptr %i.di, align 8, !noalias !288, !noundef !4
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  %i.sg = load ptr, ptr %i.dh, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.sh = load i64, ptr %i.di, align 8, !noalias !288, !noundef !4
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs
  %.sroa.044.0.i = phi ptr [ %i.si, %bb.fu ], [ %i.se, %bb.ft ], [ %i.dj, %bb.fs ] ; 3 uses
  %.sroa.647.0.i = phi i64 [ %i.sh, %bb.fu ], [ %i.sf, %bb.ft ], [ %i.sb, %bb.fs ] ; 5 uses
  %i.sj = icmp ult i64 %.sroa.647.0.i, 2
  br i1 %i.sj, label %.split.i, label %bb.fz

.split.i:                                         ; preds = %bb.fv
  %i.sk = icmp eq i64 %.sroa.647.0.i, 1
  br i1 %i.sk, label %bb.ga, label %bb.gb, !prof !79

bb.fw:                                            ; preds = %bb.ge, %.loopexit.split-lp420.i, %.loopexit419.i
  %.pn.i = phi { ptr, i32 } [ %i.sv, %bb.ge ], [ %lpad.loopexit421.i, %.loopexit419.i ], [ %lpad.loopexit.split-lp422.i, %.loopexit.split-lp420.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.sl = load i8, ptr %i.m, align 8, !range !115, !alias.scope !457, !noalias !288, !noundef !4
  %switch.i.i173.i = icmp samesign ult i8 %i.sl, 25
  br i1 %switch.i.i173.i, label %.body147.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.sm = load ptr, ptr %i.dh, align 8, !alias.scope !464, !noalias !288, !nonnull !4, !noundef !4
  %i.sn = atomicrmw sub ptr %i.sm, i64 1 release, align 8, !noalias !465
  %i.so = icmp eq i64 %i.sn, 1
  br i1 %i.so, label %bb.fy, label %.body147.i

bb.fy:                                            ; preds = %bb.fx
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #40
          to label %.body147.i unwind label %bb.fc, !noalias !290

.loopexit419.i:                                   ; preds = %bb.ga
  %lpad.loopexit421.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp420.i:                          ; preds = %bb.gb
  %lpad.loopexit.split-lp422.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fz:                                            ; preds = %bb.fv
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.sq = load i8, ptr %i.sp, align 1, !alias.scope !466, !noalias !290, !noundef !4
  %i.sr = icmp sgt i8 %i.sq, -65
  br i1 %i.sr, label %bb.ga, label %bb.gb, !prof !79

bb.ga:                                            ; preds = %bb.fz, %.split.i
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.044.0.i, i64 1
  %i.st = add i64 %.sroa.647.0.i, -1
  %i.su = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ss, i64 noundef %i.st)
          to label %bb.gc unwind label %.loopexit419.i, !noalias !290 ; 3 uses

bb.gb:                                            ; preds = %bb.fz, %.split.i
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0.i, i64 noundef %.sroa.647.0.i, i64 noundef 1, i64 noundef %.sroa.647.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #37
          to label %bb.ek unwind label %.loopexit.split-lp420.i, !noalias !290

bb.gc:                                            ; preds = %bb.ga
  %.not83.i = icmp ugt i32 %i.rt, %.sroa.19.1.ph.i
  br i1 %.not83.i, label %bb.gd, label %bb.gf, !prof !14

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #37
          to label %bb.ek unwind label %bb.ge, !noalias !290

bb.ge:                                            ; preds = %bb.gd
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def(ptr nonnull %i.su) #39
          to label %bb.fw unwind label %bb.fc, !noalias !290

bb.gf:                                            ; preds = %bb.gc
  %.val101.i = load i32, ptr %i.cr, align 8, !alias.scope !285, !noalias !290, !noundef !4 ; 3 uses
  %i.sw = lshr i32 %.val101.i, 23
  %i.sx = and i32 %.val101.i, 2113929216
  %i.sy = icmp eq i32 %i.sx, 0
  call void @llvm.assume(i1 %i.sy)
  %i.sz = and i32 %i.sw, 3
  %i.ta = sub nuw nsw i32 -253, %i.sz
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.tb = load i8, ptr %i.m, align 8, !range !115, !alias.scope !475, !noalias !288, !noundef !4
  %switch.i.i176.i = icmp samesign ult i8 %i.tb, 25
  br i1 %switch.i.i176.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit178.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.tc = load ptr, ptr %i.dh, align 8, !alias.scope !482, !noalias !288, !nonnull !4, !noundef !4
  %i.td = atomicrmw sub ptr %i.tc, i64 1 release, align 8, !noalias !483
  %i.te = icmp eq i64 %i.td, 1
  br i1 %i.te, label %bb.gh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit178.i

bb.gh:                                            ; preds = %bb.gg
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dh) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit178.i unwind label %bb.gk, !noalias !290

bb.gi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit178.i
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit178.i: ; preds = %bb.gh, %bb.gg, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !288
  store i32 2, ptr %i.l, align 8, !noalias !288
  store ptr %i.su, ptr %.sroa.5287.0..sroa_idx.i, align 8, !noalias !288
  store i32 %i.rt, ptr %.sroa.7288.0..sroa_idx.i, align 8, !noalias !288
  store i32 %.sroa.19.1.ph.i, ptr %.sroa.7288.sroa.4.0..sroa.7288.0..sroa_idx.sroa_idx.i, align 4, !noalias !288
  store i32 %.val101.i, ptr %.sroa.7288.sroa.5.0..sroa.7288.0..sroa_idx.sroa_idx.i, align 8, !noalias !288
  store i32 -1610612736, ptr %.sroa.7288.sroa.6.0..sroa.7288.0..sroa_idx.sroa_idx.i, align 4, !noalias !288
  store i32 %i.ta, ptr %.sroa.7288.sroa.7.0..sroa.7288.0..sroa_idx.sroa_idx.i, align 8, !noalias !288
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !288
  invoke void @_RNvMsc_NtCs4dcH4YgJDq_2tt7storageNtB5_17TopSubtreeBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.l)
          to label %bb.gj unwind label %bb.gi, !noalias !290

bb.gj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !288
  br label %.loopexit.i

bb.gk:                                            ; preds = %bb.gh
  %i.tg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 2, ptr nonnull %i.su) #39
          to label %.body147.i unwind label %bb.fc, !noalias !290

.loopexit.i:                                      ; preds = %bb.hn, %bb.el, %bb.hm, %bb.gj, %bb.ep, %bb.dz, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter19convert_doc_commentBU_.exit.i
  %.val94.i = load i32, ptr %i.aa, align 8, !range !66, !noalias !288, !noundef !4 ; 3 uses
  %.val95.i = load ptr, ptr %.sroa.11236.0..sroa_idx.i, align 8, !noalias !288 ; 7 uses
  %i.th = add nsw i32 %.val94.i, -3
  %i.ti = icmp samesign ugt i32 %.val94.i, 2
  %narrow.i.i = select i1 %i.ti, i32 %i.th, i32 2
  switch i32 %narrow.i.i, label %.invoke1189.i [
    i32 0, label %bb.gl
    i32 1, label %bb.gm
  ]

.invoke1189.i:                                    ; preds = %bb.ho, %.loopexit.i
  %i.tj = phi i32 [ %.val94.i, %.loopexit.i ], [ %.val92.i, %bb.ho ]
  %i.tk = phi ptr [ %.val95.i, %.loopexit.i ], [ %.val93.i, %bb.ho ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %i.tj, ptr %i.tk)
          to label %.backedge.i unwind label %.thread325.loopexit.split-lp.loopexit.i, !noalias !290

bb.gl:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 4, !noalias !484, !noundef !4
  %i.tn = add i32 %i.tm, -1                       ; 2 uses
  store i32 %i.tn, ptr %i.tl, align 4, !noalias !484
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %.invoke1180.invoke.i, label %.backedge.i

bb.gm:                                            ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95.i) ]
  %i.tp = getelementptr inbounds nuw i8, ptr %.val95.i, i64 48 ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !noalias !487, !noundef !4
  %i.tr = add i32 %i.tq, -1                       ; 2 uses
  store i32 %i.tr, ptr %i.tp, align 4, !noalias !487
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %.invoke1180.invoke.i, label %.backedge.i

.invoke1180.invoke.i:                             ; preds = %bb.hq, %bb.hp, %bb.gm, %bb.gl
  %i.tt = phi ptr [ %.val95.i, %bb.gl ], [ %.val95.i, %bb.gm ], [ %.val93.i, %bb.hq ], [ %.val93.i, %bb.hp ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.tt) #40
          to label %.backedge.i unwind label %.thread325.loopexit.split-lp.loopexit.i, !noalias !290

bb.gn:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !288
  %i.tu = load i8, ptr %i.u, align 8, !range !115, !noalias !288, !noundef !4 ; 2 uses
  %i.tv = icmp samesign ugt i8 %i.tu, 23
  %i.tw = zext nneg i8 %i.tu to i64               ; 2 uses
  %i.tx = add nsw i64 %i.tw, -23
  %i.ty = select i1 %i.tv, i64 %i.tx, i64 0
  switch i64 %i.ty, label %bb.es [
    i64 0, label %bb.gt
    i64 1, label %bb.go
    i64 2, label %bb.gp
  ]

bb.go:                                            ; preds = %bb.gn
  %i.tz = load ptr, ptr %i.du, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.ua = load i64, ptr %i.dv, align 8, !noalias !288, !noundef !4
  br label %bb.gt

bb.gp:                                            ; preds = %bb.gn
  %i.ub = load ptr, ptr %i.du, align 8, !noalias !288, !nonnull !4, !noundef !4
  %i.uc = load i64, ptr %i.dv, align 8, !noalias !288, !noundef !4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  br label %bb.gt

bb.gq:                                            ; preds = %bb.gt
  %i.ue = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.uf = load i8, ptr %i.u, align 8, !range !115, !alias.scope !496, !noalias !288, !noundef !4
  %switch.i.i183.i = icmp samesign ult i8 %i.uf, 25
  br i1 %switch.i.i183.i, label %.body147.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.ug = load ptr, ptr %i.du, align 8, !alias.scope !503, !noalias !288, !nonnull !4, !noundef !4
  %i.uh = atomicrmw sub ptr %i.ug, i64 1 release, align 8, !noalias !504
  %i.ui = icmp eq i64 %i.uh, 1
  br i1 %i.ui, label %bb.gs, label %.body147.i

bb.gs:                                            ; preds = %bb.gr
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.du) #40
          to label %.body147.i unwind label %bb.fc, !noalias !290

bb.gt:                                            ; preds = %bb.gp, %bb.go, %bb.gn
  %.sroa.026.0.i = phi ptr [ %i.ud, %bb.gp ], [ %i.tz, %bb.go ], [ %i.dw, %bb.gn ]
  %.sroa.427.0.i = phi i64 [ %i.uc, %bb.gp ], [ %i.ua, %bb.go ], [ %i.tw, %bb.gn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !288
  %.val100.i = load i32, ptr %i.cr, align 8, !alias.scope !285, !noalias !290, !noundef !4 ; 3 uses
  %i.uj = lshr i32 %.val100.i, 23
  %i.uk = and i32 %.val100.i, 2113929216
  %i.ul = icmp eq i32 %i.uk, 0
  call void @llvm.assume(i1 %i.ul)
  %i.um = and i32 %i.uj, 3
  %i.un = sub nuw nsw i32 -253, %i.um
  store i32 %.sroa.15242.1.ph.i, ptr %i.s, align 4, !alias.scope !505, !noalias !288
  store i32 %.sroa.19.1.ph.i, ptr %i.dx, align 4, !alias.scope !505, !noalias !288
  store i32 %.val100.i, ptr %i.dy, align 4, !alias.scope !505, !noalias !288
  store i32 -1610612736, ptr %i.dz, align 4, !alias.scope !505, !noalias !288
  store i32 %i.un, ptr %i.ea, align 4, !alias.scope !505, !noalias !288
  invoke void @_RNvMsc_Cs4dcH4YgJDq_2ttNtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.026.0.i, i64 noundef %.sroa.427.0.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.s)
          to label %bb.gu unwind label %bb.gq, !noalias !290

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !288
  store i32 2, ptr %i.v, align 8, !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !288
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.uo = load i8, ptr %i.u, align 8, !range !115, !alias.scope !516, !noalias !288, !noundef !4
  %switch.i.i186.i = icmp samesign ult i8 %i.uo, 25
  br i1 %switch.i.i186.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit188.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.up = load ptr, ptr %i.du, align 8, !alias.scope !523, !noalias !288, !nonnull !4, !noundef !4
  %i.uq = atomicrmw sub ptr %i.up, i64 1 release, align 8, !noalias !524
  %i.ur = icmp eq i64 %i.uq, 1
  br i1 %i.ur, label %bb.gw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit188.i

bb.gw:                                            ; preds = %bb.gv
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.du) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit188.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsileJQcQObtj_7hir_def.exit188.i: ; preds = %bb.gw, %bb.gv, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !288
  br label %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i
end_hunk_3
