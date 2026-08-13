inline.NumInlined: 1084
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapEB10_:bb.a
          to label %.cont.i.i unwind label %.loopexit.split-lp394.i, !noalias !34

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread310.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1187.invoke.i, %.invoke1196.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit385.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1188.i
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

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit172.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit158.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1189.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit139.i, %bb.eb, %bb.dv, %bb.di, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forBS_.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charB1l_.exit.thread.invoke.i, %.invoke1190.i, %.invoke1194.i, %.invoke1192.i
  %lpad.loopexit.split-lp399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fe, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15247.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 11 uses
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
  %indvars.iv969.i = phi i64 [ %indvars.iv.next970.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.jp = phi ptr [ %i.jq, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6K_.exit.i.i ], [ %i.jl, %.lr.ph.i.preheader.i ]
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 3 uses
  %.val.i116.i = load i64, ptr %i.jq, align 8, !noalias !71, !noundef !4 ; 7 uses
  %i.jr = icmp ult i64 %.val.i116.i, %i.jn        ; 3 uses
  switch i64 %i.jm, label %bb.cz [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
  ]

default.unreachable:                              ; preds = %.noexc208.i, %.noexc118.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.da, label %.invoke1192.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.db, label %.invoke1192.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.dc, label %.invoke1192.i

bb.da:                                            ; preds = %bb.cx
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.val.i116.i ; 2 uses
  %i.jt = load i8, ptr %i.js, align 8, !range !75, !noalias !29, !noundef !4
  %i.ju = icmp eq i8 %i.jt, 3
  br i1 %i.ju, label %.noexc118.i, label %.invoke1194.i, !prof !76

.invoke1192.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.jv = phi i64 [ %.val.i116.i, %bb.cz ], [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cy ], [ %.val.i202.i, %bb.hh ], [ %.val.i202.i, %bb.hi ], [ %.val.i202.i, %bb.hj ]
  %i.jw = phi i64 [ %i.jn, %bb.cz ], [ %i.jn, %bb.cx ], [ %i.jn, %bb.cy ], [ %i.st, %bb.hh ], [ %i.st, %bb.hi ], [ %i.st, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jv, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1193.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1193.i:                                      ; preds = %.invoke1192.i
  unreachable

.invoke1194.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1195.i:                                      ; preds = %.invoke1194.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %.val.i116.i ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 8, !range !75, !noalias !29, !noundef !4
  %i.jz = icmp eq i8 %i.jy, 3
  br i1 %i.jz, label %.noexc118.i, label %.invoke1194.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.ka = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %.val.i116.i ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 8, !range !75, !noalias !29, !noundef !4
  %i.kc = icmp eq i8 %i.kb, 3
  br i1 %i.kc, label %.noexc118.i, label %.invoke1194.i, !prof !76

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
  switch i16 %i.jf, label %bb.df [
    i16 5, label %bb.eb
    i16 7, label %bb.dz
    i16 9, label %bb.ea
  ]

bb.df:                                            ; preds = %.loopexit378.i
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.kg = load ptr, ptr %i.cl, align 8, !alias.scope !80, !noalias !81, !noundef !4 ; 6 uses
  %.not.i119.i = icmp eq ptr %i.kg, null
  br i1 %.not.i119.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 48 ; 3 uses
  %i.ki = load i32, ptr %i.kh, align 4, !noalias !83, !noundef !4 ; 4 uses
  %i.kj = icmp eq i32 %i.ki, -1
  br i1 %i.kj, label %.invoke1190.i, label %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

.invoke1190.i:                                    ; preds = %bb.dj, %bb.dg
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #27
          to label %.cont1191.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1191.i:                                      ; preds = %.invoke1190.i
  unreachable

_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dg
  %.val19.i.i = load i32, ptr %i.cm, align 8, !alias.scope !80, !noalias !81
  %i.kk = add nuw i32 %i.ki, 1
  store i32 %i.kk, ptr %i.kh, align 4, !noalias !83
  %i.kl = load i64, ptr %i.kg, align 8, !range !16, !noalias !83, !noundef !4
  %i.km = trunc nuw i64 %i.kl to i1
  br i1 %i.km, label %bb.dh, label %.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i: ; preds = %bb.di, %.thread.i.i, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !84
  %i.kn = load ptr, ptr %i.co, align 8, !alias.scope !80, !noalias !81, !noundef !4 ; 11 uses
  %.not16.i.i = icmp eq ptr %i.kn, null
  br i1 %.not16.i.i, label %bb.eh, label %bb.dj

bb.dh:                                            ; preds = %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.ko = add i32 %.val19.i.i, 1
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %.sroa.5.0.i.i130.i = load ptr, ptr %i.kq, align 8, !noalias !83, !nonnull !4, !noundef !4
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i130.i, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !noalias !83, !noundef !4
  %i.kt = icmp ugt i64 %i.ks, %i.kp
  br i1 %i.kt, label %bb.ed, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dh, %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  store i32 %i.ki, ptr %i.kh, align 8, !noalias !85
  %i.ku = icmp eq i32 %i.ki, 0
  br i1 %i.ku, label %bb.di, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i

bb.di:                                            ; preds = %.thread.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kg) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.dj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 48 ; 6 uses
  %i.kw = load i32, ptr %i.kv, align 4, !noalias !83, !noundef !4 ; 2 uses
  %i.kx = icmp eq i32 %i.kw, -1
  br i1 %i.kx, label %.invoke1190.i, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dj
  %i.ky = add nuw i32 %i.kw, 1
  store i32 %i.ky, ptr %i.kv, align 4, !noalias !83
  store ptr %i.kn, ptr %i.c, align 8, !noalias !84
  %i.kz = load i32, ptr %i.cp, align 8, !alias.scope !80, !noalias !81, !noundef !4
  %i.la = load i32, ptr %i.cq, align 4, !alias.scope !80, !noalias !81, !noundef !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 60
  %i.lc = load i8, ptr %i.lb, align 4, !range !15, !noalias !83, !noundef !4
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.dl, label %bb.dk, !prof !14

bb.dk:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  %i.lf = load i32, ptr %i.le, align 8, !noalias !83, !noundef !4
  br label %.noexc24.i.i

bb.dl:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.lg = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.kn)
          to label %.noexc24.i.i unwind label %.loopexit401.i, !noalias !83

.noexc24.i.i:                                     ; preds = %bb.dl, %bb.dk
  %.sroa.0.0.i23.i.i = phi i32 [ %i.lf, %bb.dk ], [ %i.lg, %bb.dl ] ; 3 uses
  %i.lh = load i64, ptr %i.kn, align 8, !range !16, !noalias !83, !noundef !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.lj = trunc nuw i64 %i.lh to i1
  %i.lk = load ptr, ptr %i.li, align 8, !noalias !83, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.lj, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %.noexc24.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !83, !noundef !4 ; 2 uses
  %i.ln = icmp ugt i64 %i.lm, 4294967295
  %i.lo = shl nuw i64 %i.lm, 32
  %.sroa.09.0.insert.insert.i.i.i126.i = select i1 %i.ln, i64 513, i64 %i.lo ; 2 uses
  %i.lp = trunc i64 %.sroa.09.0.insert.insert.i.i.i126.i to i1
  br i1 %i.lp, label %bb.dn, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i, !prof !14

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  store i8 2, ptr %i.b, align 1, !noalias !84
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.noexc25.i.i unwind label %.loopexit.split-lp402.i, !noalias !83

.noexc25.i.i:                                     ; preds = %bb.dn
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i: ; preds = %bb.dm
  %.sroa.6.0.extract.shift.i.i.i.i128.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i126.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i129.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i128.i to i32
  br label %bb.dp

bb.do:                                            ; preds = %.noexc24.i.i
  %i.lq = load i32, ptr %i.lk, align 8, !noalias !83, !noundef !4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i
  %.sroa.02.0.i.i120.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i129.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i ], [ %i.lq, %bb.do ]
  %i.lr = add i32 %.sroa.02.0.i.i120.i, %.sroa.0.0.i23.i.i ; 2 uses
  %.not.i.i121.i = icmp ugt i32 %.sroa.0.0.i23.i.i, %i.lr
  br i1 %.not.i.i121.i, label %bb.dq, label %bb.dt, !prof !14

bb.dq:                                            ; preds = %bb.dp
end_hunk_0
begin_hunk_1_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCsdovh4xi6v3I_4span3map7SpanMapECs33K2ylI4knu_10hir_expand:bb.a
          to label %.cont.i.i unwind label %.loopexit.split-lp394.i, !noalias !289

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread310.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1187.invoke.i, %.invoke1196.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit385.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1188.i
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

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1189.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit139.i, %bb.eb, %bb.dv, %bb.di, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charCs33K2ylI4knu_10hir_expand.exit.thread.invoke.i, %.invoke1190.i, %.invoke1194.i, %.invoke1192.i
  %lpad.loopexit.split-lp399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15247.1.ph.i = phi i32 [ %i.fc, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 11 uses
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
  %indvars.iv969.i = phi i64 [ %indvars.iv.next970.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.jo = phi ptr [ %i.jp, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ], [ %i.jk, %.lr.ph.i.preheader.i ]
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -8 ; 3 uses
  %.val.i116.i = load i64, ptr %i.jp, align 8, !noalias !323, !noundef !4 ; 7 uses
  %i.jq = icmp ult i64 %.val.i116.i, %i.jm        ; 3 uses
  switch i64 %i.jl, label %bb.cz [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
  ]

default.unreachable:                              ; preds = %.noexc208.i, %.noexc118.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.da, label %.invoke1192.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.db, label %.invoke1192.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.dc, label %.invoke1192.i

bb.da:                                            ; preds = %bb.cx
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.js = load i8, ptr %i.jr, align 8, !range !75, !noalias !284, !noundef !4
  %i.jt = icmp eq i8 %i.js, 3
  br i1 %i.jt, label %.noexc118.i, label %.invoke1194.i, !prof !76

.invoke1192.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.ju = phi i64 [ %.val.i116.i, %bb.cz ], [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cy ], [ %.val.i202.i, %bb.hh ], [ %.val.i202.i, %bb.hi ], [ %.val.i202.i, %bb.hj ]
  %i.jv = phi i64 [ %i.jm, %bb.cz ], [ %i.jm, %bb.cx ], [ %i.jm, %bb.cy ], [ %i.ss, %bb.hh ], [ %i.ss, %bb.hi ], [ %i.ss, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ju, i64 noundef %i.jv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1193.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !284

.cont1193.i:                                      ; preds = %.invoke1192.i
  unreachable

.invoke1194.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !284

.cont1195.i:                                      ; preds = %.invoke1194.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !range !75, !noalias !284, !noundef !4
  %i.jy = icmp eq i8 %i.jx, 3
  br i1 %i.jy, label %.noexc118.i, label %.invoke1194.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 8, !range !75, !noalias !284, !noundef !4
  %i.kb = icmp eq i8 %i.ka, 3
  br i1 %i.kb, label %.noexc118.i, label %.invoke1194.i, !prof !76

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
  switch i16 %i.je, label %bb.df [
    i16 5, label %bb.eb
    i16 7, label %bb.dz
    i16 9, label %bb.ea
  ]

bb.df:                                            ; preds = %.loopexit378.i
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.kf = load ptr, ptr %i.ck, align 8, !alias.scope !330, !noalias !331, !noundef !4 ; 6 uses
  %.not.i119.i = icmp eq ptr %i.kf, null
  br i1 %.not.i119.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48 ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 4, !noalias !333, !noundef !4 ; 4 uses
  %i.ki = icmp eq i32 %i.kh, -1
  br i1 %i.ki, label %.invoke1190.i, label %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

.invoke1190.i:                                    ; preds = %bb.dj, %bb.dg
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #27
          to label %.cont1191.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !284

.cont1191.i:                                      ; preds = %.invoke1190.i
  unreachable

_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dg
  %.val19.i.i = load i32, ptr %i.cl, align 8, !alias.scope !330, !noalias !331
  %i.kj = add nuw i32 %i.kh, 1
  store i32 %i.kj, ptr %i.kg, align 4, !noalias !333
  %i.kk = load i64, ptr %i.kf, align 8, !range !16, !noalias !333, !noundef !4
  %i.kl = trunc nuw i64 %i.kk to i1
  br i1 %i.kl, label %bb.dh, label %.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i: ; preds = %bb.di, %.thread.i.i, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !334
  %i.km = load ptr, ptr %i.cn, align 8, !alias.scope !330, !noalias !331, !noundef !4 ; 11 uses
  %.not16.i.i = icmp eq ptr %i.km, null
  br i1 %.not16.i.i, label %bb.eh, label %bb.dj

bb.dh:                                            ; preds = %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.kn = add i32 %.val19.i.i, 1
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.sroa.5.0.i.i130.i = load ptr, ptr %i.kp, align 8, !noalias !333, !nonnull !4, !noundef !4
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i130.i, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !333, !noundef !4
  %i.ks = icmp ugt i64 %i.kr, %i.ko
  br i1 %i.ks, label %bb.ed, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dh, %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  store i32 %i.kh, ptr %i.kg, align 8, !noalias !335
  %i.kt = icmp eq i32 %i.kh, 0
  br i1 %i.kt, label %bb.di, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i

bb.di:                                            ; preds = %.thread.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kf) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !284

bb.dj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 6 uses
  %i.kv = load i32, ptr %i.ku, align 4, !noalias !333, !noundef !4 ; 2 uses
  %i.kw = icmp eq i32 %i.kv, -1
  br i1 %i.kw, label %.invoke1190.i, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dj
  %i.kx = add nuw i32 %i.kv, 1
  store i32 %i.kx, ptr %i.ku, align 4, !noalias !333
  store ptr %i.km, ptr %i.c, align 8, !noalias !334
  %i.ky = load i32, ptr %i.co, align 8, !alias.scope !330, !noalias !331, !noundef !4
  %i.kz = load i32, ptr %i.cp, align 4, !alias.scope !330, !noalias !331, !noundef !4
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 60
  %i.lb = load i8, ptr %i.la, align 4, !range !15, !noalias !333, !noundef !4
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.dl, label %bb.dk, !prof !14

bb.dk:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.le = load i32, ptr %i.ld, align 8, !noalias !333, !noundef !4
  br label %.noexc24.i.i

bb.dl:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.lf = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.km)
          to label %.noexc24.i.i unwind label %.loopexit401.i, !noalias !333

.noexc24.i.i:                                     ; preds = %bb.dl, %bb.dk
  %.sroa.0.0.i23.i.i = phi i32 [ %i.le, %bb.dk ], [ %i.lf, %bb.dl ] ; 3 uses
  %i.lg = load i64, ptr %i.km, align 8, !range !16, !noalias !333, !noundef !4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.li = trunc nuw i64 %i.lg to i1
  %i.lj = load ptr, ptr %i.lh, align 8, !noalias !333, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.li, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %.noexc24.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !noalias !333, !noundef !4 ; 2 uses
  %i.lm = icmp ugt i64 %i.ll, 4294967295
  %i.ln = shl nuw i64 %i.ll, 32
  %.sroa.09.0.insert.insert.i.i.i126.i = select i1 %i.lm, i64 513, i64 %i.ln ; 2 uses
  %i.lo = trunc i64 %.sroa.09.0.insert.insert.i.i.i126.i to i1
  br i1 %i.lo, label %bb.dn, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i, !prof !14

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !334
  store i8 2, ptr %i.b, align 1, !noalias !334
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.noexc25.i.i unwind label %.loopexit.split-lp402.i, !noalias !333

.noexc25.i.i:                                     ; preds = %bb.dn
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i: ; preds = %bb.dm
  %.sroa.6.0.extract.shift.i.i.i.i128.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i126.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i129.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i128.i to i32
  br label %bb.dp

bb.do:                                            ; preds = %.noexc24.i.i
  %i.lp = load i32, ptr %i.lj, align 8, !noalias !333, !noundef !4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i
  %.sroa.02.0.i.i120.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i129.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i ], [ %i.lp, %bb.do ]
  %i.lq = add i32 %.sroa.02.0.i.i120.i, %.sroa.0.0.i23.i.i ; 2 uses
  %.not.i.i121.i = icmp ugt i32 %.sroa.0.0.i23.i.i, %i.lq
  br i1 %.not.i.i121.i, label %bb.dq, label %bb.dt, !prof !14

bb.dq:                                            ; preds = %bb.dp
end_hunk_1
begin_hunk_2_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeRNtNtCsdovh4xi6v3I_4span3map7SpanMapECs33K2ylI4knu_10hir_expand:bb.a
          to label %.cont.i.i unwind label %.loopexit.split-lp394.i, !noalias !536

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread310.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1187.invoke.i, %.invoke1196.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit385.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread310.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1188.i
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

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit172.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit158.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1189.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit139.i, %bb.eb, %bb.dv, %bb.di, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCs33K2ylI4knu_10hir_expand.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charCs33K2ylI4knu_10hir_expand.exit.thread.invoke.i, %.invoke1190.i, %.invoke1194.i, %.invoke1192.i
  %lpad.loopexit.split-lp399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15247.1.ph.i = phi i32 [ %i.fc, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 11 uses
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
  %indvars.iv969.i = phi i64 [ %indvars.iv.next970.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.jo = phi ptr [ %i.jp, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterRNtNtCsdovh4xi6v3I_4span3map7SpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0Cs33K2ylI4knu_10hir_expand.exit.i.i ], [ %i.jk, %.lr.ph.i.preheader.i ]
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -8 ; 3 uses
  %.val.i116.i = load i64, ptr %i.jp, align 8, !noalias !570, !noundef !4 ; 7 uses
  %i.jq = icmp ult i64 %.val.i116.i, %i.jm        ; 3 uses
  switch i64 %i.jl, label %bb.cz [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
  ]

default.unreachable:                              ; preds = %.noexc208.i, %.noexc118.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.da, label %.invoke1192.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.db, label %.invoke1192.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jq, label %bb.dc, label %.invoke1192.i

bb.da:                                            ; preds = %bb.cx
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.js = load i8, ptr %i.jr, align 8, !range !75, !noalias !531, !noundef !4
  %i.jt = icmp eq i8 %i.js, 3
  br i1 %i.jt, label %.noexc118.i, label %.invoke1194.i, !prof !76

.invoke1192.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.ju = phi i64 [ %.val.i116.i, %bb.cz ], [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cy ], [ %.val.i202.i, %bb.hh ], [ %.val.i202.i, %bb.hi ], [ %.val.i202.i, %bb.hj ]
  %i.jv = phi i64 [ %i.jm, %bb.cz ], [ %i.jm, %bb.cx ], [ %i.jm, %bb.cy ], [ %i.ss, %bb.hh ], [ %i.ss, %bb.hi ], [ %i.ss, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ju, i64 noundef %i.jv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1193.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !531

.cont1193.i:                                      ; preds = %.invoke1192.i
  unreachable

.invoke1194.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !531

.cont1195.i:                                      ; preds = %.invoke1194.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 8, !range !75, !noalias !531, !noundef !4
  %i.jy = icmp eq i8 %i.jx, 3
  br i1 %i.jy, label %.noexc118.i, label %.invoke1194.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %.val.i116.i ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 8, !range !75, !noalias !531, !noundef !4
  %i.kb = icmp eq i8 %i.ka, 3
  br i1 %i.kb, label %.noexc118.i, label %.invoke1194.i, !prof !76

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
  switch i16 %i.je, label %bb.df [
    i16 5, label %bb.eb
    i16 7, label %bb.dz
    i16 9, label %bb.ea
  ]

bb.df:                                            ; preds = %.loopexit378.i
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.kf = load ptr, ptr %i.ck, align 8, !alias.scope !577, !noalias !578, !noundef !4 ; 6 uses
  %.not.i119.i = icmp eq ptr %i.kf, null
  br i1 %.not.i119.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48 ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 4, !noalias !580, !noundef !4 ; 4 uses
  %i.ki = icmp eq i32 %i.kh, -1
  br i1 %i.ki, label %.invoke1190.i, label %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

.invoke1190.i:                                    ; preds = %bb.dj, %bb.dg
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #27
          to label %.cont1191.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !531

.cont1191.i:                                      ; preds = %.invoke1190.i
  unreachable

_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dg
  %.val19.i.i = load i32, ptr %i.cl, align 8, !alias.scope !577, !noalias !578
  %i.kj = add nuw i32 %i.kh, 1
  store i32 %i.kj, ptr %i.kg, align 4, !noalias !580
  %i.kk = load i64, ptr %i.kf, align 8, !range !16, !noalias !580, !noundef !4
  %i.kl = trunc nuw i64 %i.kk to i1
  br i1 %i.kl, label %bb.dh, label %.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i: ; preds = %bb.di, %.thread.i.i, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !581
  %i.km = load ptr, ptr %i.cn, align 8, !alias.scope !577, !noalias !578, !noundef !4 ; 11 uses
  %.not16.i.i = icmp eq ptr %i.km, null
  br i1 %.not16.i.i, label %bb.eh, label %bb.dj

bb.dh:                                            ; preds = %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.kn = add i32 %.val19.i.i, 1
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.sroa.5.0.i.i130.i = load ptr, ptr %i.kp, align 8, !noalias !580, !nonnull !4, !noundef !4
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i130.i, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !580, !noundef !4
  %i.ks = icmp ugt i64 %i.kr, %i.ko
  br i1 %i.ks, label %bb.ed, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dh, %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  store i32 %i.kh, ptr %i.kg, align 8, !noalias !582
  %i.kt = icmp eq i32 %i.kh, 0
  br i1 %i.kt, label %bb.di, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i

bb.di:                                            ; preds = %.thread.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kf) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !531

bb.dj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 6 uses
  %i.kv = load i32, ptr %i.ku, align 4, !noalias !580, !noundef !4 ; 2 uses
  %i.kw = icmp eq i32 %i.kv, -1
  br i1 %i.kw, label %.invoke1190.i, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dj
  %i.kx = add nuw i32 %i.kv, 1
  store i32 %i.kx, ptr %i.ku, align 4, !noalias !580
  store ptr %i.km, ptr %i.c, align 8, !noalias !581
  %i.ky = load i32, ptr %i.co, align 8, !alias.scope !577, !noalias !578, !noundef !4
  %i.kz = load i32, ptr %i.cp, align 4, !alias.scope !577, !noalias !578, !noundef !4
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 60
  %i.lb = load i8, ptr %i.la, align 4, !range !15, !noalias !580, !noundef !4
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.dl, label %bb.dk, !prof !14

bb.dk:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.le = load i32, ptr %i.ld, align 8, !noalias !580, !noundef !4
  br label %.noexc24.i.i

bb.dl:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.lf = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.km)
          to label %.noexc24.i.i unwind label %.loopexit401.i, !noalias !580

.noexc24.i.i:                                     ; preds = %bb.dl, %bb.dk
  %.sroa.0.0.i23.i.i = phi i32 [ %i.le, %bb.dk ], [ %i.lf, %bb.dl ] ; 3 uses
  %i.lg = load i64, ptr %i.km, align 8, !range !16, !noalias !580, !noundef !4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.li = trunc nuw i64 %i.lg to i1
  %i.lj = load ptr, ptr %i.lh, align 8, !noalias !580, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.li, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %.noexc24.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !noalias !580, !noundef !4 ; 2 uses
  %i.lm = icmp ugt i64 %i.ll, 4294967295
  %i.ln = shl nuw i64 %i.ll, 32
  %.sroa.09.0.insert.insert.i.i.i126.i = select i1 %i.lm, i64 513, i64 %i.ln ; 2 uses
  %i.lo = trunc i64 %.sroa.09.0.insert.insert.i.i.i126.i to i1
  br i1 %i.lo, label %bb.dn, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i, !prof !14

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !581
  store i8 2, ptr %i.b, align 1, !noalias !581
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.noexc25.i.i unwind label %.loopexit.split-lp402.i, !noalias !580

.noexc25.i.i:                                     ; preds = %bb.dn
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i: ; preds = %bb.dm
  %.sroa.6.0.extract.shift.i.i.i.i128.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i126.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i129.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i128.i to i32
  br label %bb.dp

bb.do:                                            ; preds = %.noexc24.i.i
  %i.lp = load i32, ptr %i.lj, align 8, !noalias !580, !noundef !4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i
  %.sroa.02.0.i.i120.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i129.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i127.i ], [ %i.lp, %bb.do ]
  %i.lq = add i32 %.sroa.02.0.i.i120.i, %.sroa.0.0.i23.i.i ; 2 uses
  %.not.i.i121.i = icmp ugt i32 %.sroa.0.0.i23.i.i, %i.lq
  br i1 %.not.i.i121.i, label %bb.dq, label %bb.dt, !prof !14

bb.dq:                                            ; preds = %bb.dp
end_hunk_2
begin_hunk_3_@_RINvCslVwgvvnzcNb_13syntax_bridge34syntax_node_to_token_tree_modifiedNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB19_11cfg_process20macro_input_callbacks0_0EB19_:bb.a
          to label %.cont.i.i unwind label %.loopexit.split-lp393.i, !noalias !784

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread309.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread309.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1186.invoke.i, %.invoke1195.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit58.i.i
  %lpad.loopexit384.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread309.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1187.i
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

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hr, %bb.hf, %bb.he, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.hb, %bb.fw, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit171.i, %bb.fv, %bb.fs, %bb.fi, %bb.fg, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit157.i, %bb.ev, %bb.es, %bb.er, %bb.eo, %.invoke1188.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit138.i, %bb.eb, %bb.dv, %bb.di, %.noexc113.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtBS_11cfg_process20macro_input_callbacks0_0ENtB5_14TokenConverter8span_forBS_.exit.i, %bb.cv, %bb.ct
  %lpad.loopexit397.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fu, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB1l_11cfg_process20macro_input_callbacks0_0EE7to_charB1l_.exit.thread.invoke.i, %.invoke1189.i, %.invoke1193.i, %.invoke1191.i
  %lpad.loopexit.split-lp398.i = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

bb.cr:                                            ; preds = %bb.cg, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.fd, %bb.ar ], [ 0, %bb.au ], [ %.sroa.517.0.i.i, %bb.cg ] ; 9 uses
  %.sroa.15246.1.ph.i = phi i32 [ %i.fc, %bb.ar ], [ 0, %bb.au ], [ %.sroa.3.0.i.i, %bb.cg ] ; 11 uses
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
  %indvars.iv968.i = phi i64 [ %indvars.iv.next969.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i ], [ 1, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.jp = phi ptr [ %i.jq, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCNvNtB6K_11cfg_process20macro_input_callbacks0_0EEs_0E0E0E0B6K_.exit.i.i ], [ %i.jl, %.lr.ph.i.preheader.i ]
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 3 uses
  %.val.i115.i = load i64, ptr %i.jq, align 8, !noalias !823, !noundef !4 ; 7 uses
  %i.jr = icmp ult i64 %.val.i115.i, %i.jn        ; 3 uses
  switch i64 %i.jm, label %bb.cz [
    i64 0, label %bb.cx
    i64 1, label %bb.cy
  ]

default.unreachable:                              ; preds = %.noexc207.i, %.noexc117.i
  unreachable

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.da, label %.invoke1191.i

bb.cy:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.db, label %.invoke1191.i

bb.cz:                                            ; preds = %.lr.ph.i.i
  br i1 %i.jr, label %bb.dc, label %.invoke1191.i

bb.da:                                            ; preds = %bb.cx
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.val.i115.i ; 2 uses
  %i.jt = load i8, ptr %i.js, align 8, !range !75, !noalias !779, !noundef !4
  %i.ju = icmp eq i8 %i.jt, 3
  br i1 %i.ju, label %.noexc117.i, label %.invoke1193.i, !prof !76

.invoke1191.i:                                    ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.cz, %bb.cy, %bb.cx
  %i.jv = phi i64 [ %.val.i115.i, %bb.cz ], [ %.val.i115.i, %bb.cx ], [ %.val.i115.i, %bb.cy ], [ %.val.i201.i, %bb.hh ], [ %.val.i201.i, %bb.hi ], [ %.val.i201.i, %bb.hj ]
  %i.jw = phi i64 [ %i.jn, %bb.cz ], [ %i.jn, %bb.cx ], [ %i.jn, %bb.cy ], [ %i.st, %bb.hh ], [ %i.st, %bb.hi ], [ %i.st, %bb.hj ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jv, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %.cont1192.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !779

.cont1192.i:                                      ; preds = %.invoke1191.i
  unreachable

.invoke1193.i:                                    ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.dc, %bb.db, %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %.cont1194.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !779

.cont1194.i:                                      ; preds = %.invoke1193.i
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %.val.i115.i ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 8, !range !75, !noalias !779, !noundef !4
  %i.jz = icmp eq i8 %i.jy, 3
  br i1 %i.jz, label %.noexc117.i, label %.invoke1193.i, !prof !76

bb.dc:                                            ; preds = %bb.cz
  %i.ka = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %.val.i115.i ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 8, !range !75, !noalias !779, !noundef !4
  %i.kc = icmp eq i8 %i.kb, 3
  br i1 %i.kc, label %.noexc117.i, label %.invoke1193.i, !prof !76

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
  switch i16 %i.je, label %bb.df [
    i16 5, label %bb.eb
    i16 7, label %bb.dz
    i16 9, label %bb.ea
  ]

bb.df:                                            ; preds = %.loopexit377.i
  %i.kg = load ptr, ptr %i.ck, align 8, !alias.scope !774, !noalias !827, !noundef !4 ; 6 uses
  %.not.i118.i = icmp eq ptr %i.kg, null
  br i1 %.not.i118.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 48 ; 3 uses
  %i.ki = load i32, ptr %i.kh, align 4, !noalias !827, !noundef !4 ; 4 uses
  %i.kj = icmp eq i32 %i.ki, -1
  br i1 %i.kj, label %.invoke1189.i, label %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

.invoke1189.i:                                    ; preds = %bb.dj, %bb.dg
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #27
          to label %.cont1190.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !779

.cont1190.i:                                      ; preds = %.invoke1189.i
  unreachable

_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dg
  %.val19.i.i = load i32, ptr %i.cl, align 8, !alias.scope !774, !noalias !827
  %i.kk = add nuw i32 %i.ki, 1
  store i32 %i.kk, ptr %i.kh, align 4, !noalias !827
  %i.kl = load i64, ptr %i.kg, align 8, !range !16, !noalias !827, !noundef !4
  %i.km = trunc nuw i64 %i.kl to i1
  br i1 %i.km, label %bb.dh, label %.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i: ; preds = %bb.di, %.thread.i.i, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !830
  %i.kn = load ptr, ptr %i.cn, align 8, !alias.scope !774, !noalias !827, !noundef !4 ; 11 uses
  %.not16.i.i = icmp eq ptr %i.kn, null
  br i1 %.not16.i.i, label %bb.eh, label %bb.dj

bb.dh:                                            ; preds = %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.ko = add i32 %.val19.i.i, 1
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %.sroa.5.0.i.i129.i = load ptr, ptr %i.kq, align 8, !noalias !827, !nonnull !4, !noundef !4
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i129.i, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !noalias !827, !noundef !4
  %i.kt = icmp ugt i64 %i.ks, %i.kp
  br i1 %i.kt, label %bb.ed, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dh, %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  store i32 %i.ki, ptr %i.kh, align 8, !noalias !831
  %i.ku = icmp eq i32 %i.ki, 0
  br i1 %i.ku, label %bb.di, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i

bb.di:                                            ; preds = %.thread.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kg) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !779

bb.dj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit22.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 48 ; 6 uses
  %i.kw = load i32, ptr %i.kv, align 4, !noalias !827, !noundef !4 ; 2 uses
  %i.kx = icmp eq i32 %i.kw, -1
  br i1 %i.kx, label %.invoke1189.i, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i, !prof !14

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.dj
  %i.ky = add nuw i32 %i.kw, 1
  store i32 %i.ky, ptr %i.kv, align 4, !noalias !827
  store ptr %i.kn, ptr %i.c, align 8, !noalias !830
  %i.kz = load i32, ptr %i.co, align 8, !alias.scope !774, !noalias !827, !noundef !4
  %i.la = load i32, ptr %i.cp, align 4, !alias.scope !774, !noalias !827, !noundef !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 60
  %i.lc = load i8, ptr %i.lb, align 4, !range !15, !noalias !827, !noundef !4
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.dl, label %bb.dk, !prof !14

bb.dk:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  %i.lf = load i32, ptr %i.le, align 8, !noalias !827, !noundef !4
  br label %.noexc24.i.i

bb.dl:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs33K2ylI4knu_10hir_expand.exit.i.i
  %i.lg = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.kn)
          to label %.noexc24.i.i unwind label %.loopexit400.i, !noalias !827

.noexc24.i.i:                                     ; preds = %bb.dl, %bb.dk
  %.sroa.0.0.i23.i.i = phi i32 [ %i.lf, %bb.dk ], [ %i.lg, %bb.dl ] ; 3 uses
  %i.lh = load i64, ptr %i.kn, align 8, !range !16, !noalias !827, !noundef !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.lj = trunc nuw i64 %i.lh to i1
  %i.lk = load ptr, ptr %i.li, align 8, !noalias !827, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.lj, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %.noexc24.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !827, !noundef !4 ; 2 uses
  %i.ln = icmp ugt i64 %i.lm, 4294967295
  %i.lo = shl nuw i64 %i.lm, 32
  %.sroa.09.0.insert.insert.i.i.i125.i = select i1 %i.ln, i64 513, i64 %i.lo ; 2 uses
  %i.lp = trunc i64 %.sroa.09.0.insert.insert.i.i.i125.i to i1
  br i1 %i.lp, label %bb.dn, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i126.i, !prof !14

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !830
  store i8 2, ptr %i.b, align 1, !noalias !830
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
          to label %.noexc25.i.i unwind label %.loopexit.split-lp401.i, !noalias !827

.noexc25.i.i:                                     ; preds = %bb.dn
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i126.i: ; preds = %bb.dm
  %.sroa.6.0.extract.shift.i.i.i.i127.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i125.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i128.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i127.i to i32
  br label %bb.dp

bb.do:                                            ; preds = %.noexc24.i.i
  %i.lq = load i32, ptr %i.lk, align 8, !noalias !827, !noundef !4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i126.i
  %.sroa.02.0.i.i119.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i128.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i126.i ], [ %i.lq, %bb.do ]
  %i.lr = add i32 %.sroa.02.0.i.i119.i, %.sroa.0.0.i23.i.i ; 2 uses
  %.not.i.i120.i = icmp ugt i32 %.sroa.0.0.i23.i.i, %i.lr
  br i1 %.not.i.i120.i, label %bb.dq, label %bb.dt, !prof !14

bb.dq:                                            ; preds = %bb.dp
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
end_hunk_3
