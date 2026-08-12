inline.NumInlined: 1615
inline.NumDeleted: 744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapECsileJQcQObtj_7hir_def:bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #38
          to label %.cont.i.i unwind label %.loopexit.split-lp395.i, !noalias !34

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.thread313.loopexit.i:                            ; preds = %.lr.ph.i, %bb.hr
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread313.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1188.invoke.i, %.invoke1197.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit58.i.i
  %lpad.loopexit387.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread313.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1189.i
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

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hm, %bb.ha, %bb.gz, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.gw, %bb.fr, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit175.i, %bb.fq, %bb.fn, %bb.fd, %bb.fb, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit161.i, %bb.eq, %bb.en, %bb.em, %bb.ej, %.invoke1190.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit142.i, %bb.dy, %bb.dt, %bb.dg, %.noexc114.i, %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter8span_forCsileJQcQObtj_7hir_def.exit.i, %bb.ct, %bb.cr
  %lpad.loopexit399.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fp, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charCsileJQcQObtj_7hir_def.exit.thread.invoke.i, %.invoke1191.i, %.invoke1195.i, %.invoke1193.i
  %lpad.loopexit.split-lp400.i = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

bb.cp:                                            ; preds = %bb.cl, %bb.ce, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.ip, %bb.cl ], [ %i.hz, %bb.ce ], [ 0, %bb.au ], [ %i.fc, %bb.ar ] ; 9 uses
  %.sroa.15250.1.ph.i = phi i32 [ %.sroa.0.0.i102.i.i, %bb.cl ], [ %.sroa.0.0.i91.i.i, %bb.ce ], [ 0, %bb.au ], [ %i.fb, %bb.ar ] ; 11 uses
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
  br i1 %i.js, label %bb.cy, label %.invoke1193.i

bb.cw:                                            ; preds = %.lr.ph.i.i
  br i1 %i.js, label %bb.cz, label %.invoke1193.i

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.js, label %bb.da, label %.invoke1193.i

bb.cy:                                            ; preds = %bb.cv
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %.val.i116.i ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8, !range !78, !noalias !29, !noundef !4
  %i.jv = icmp eq i8 %i.ju, 3
  br i1 %i.jv, label %.noexc118.i, label %.invoke1195.i, !prof !79

.invoke1193.i:                                    ; preds = %bb.he, %bb.hd, %bb.hc, %bb.cx, %bb.cw, %bb.cv
  %i.jw = phi i64 [ %.val.i116.i, %bb.cx ], [ %.val.i116.i, %bb.cv ], [ %.val.i116.i, %bb.cw ], [ %.val.i205.i, %bb.hc ], [ %.val.i205.i, %bb.hd ], [ %.val.i205.i, %bb.he ]
  %i.jx = phi i64 [ %i.jo, %bb.cx ], [ %i.jo, %bb.cv ], [ %i.jo, %bb.cw ], [ %i.sv, %bb.hc ], [ %i.sv, %bb.hd ], [ %i.sv, %bb.he ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jw, i64 noundef %i.jx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #38
          to label %.cont1194.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1194.i:                                      ; preds = %.invoke1193.i
  unreachable

.invoke1195.i:                                    ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.da, %bb.cz, %bb.cy
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #38
          to label %.cont1196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1196.i:                                      ; preds = %.invoke1195.i
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %.val.i116.i ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !range !78, !noalias !29, !noundef !4
  %i.ka = icmp eq i8 %i.jz, 3
  br i1 %i.ka, label %.noexc118.i, label %.invoke1195.i, !prof !79

bb.da:                                            ; preds = %bb.cx
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.jp, i64 %.val.i116.i ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 8, !range !78, !noalias !29, !noundef !4
  %i.kd = icmp eq i8 %i.kc, 3
  br i1 %i.kd, label %.noexc118.i, label %.invoke1195.i, !prof !79

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
  switch i16 %i.jg, label %bb.dd [
    i16 5, label %bb.dy
    i16 7, label %bb.dw
    i16 9, label %bb.dx
  ]

bb.dd:                                            ; preds = %.loopexit380.i
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.kh = load ptr, ptr %i.cj, align 8, !alias.scope !83, !noalias !84, !noundef !4 ; 6 uses
  %.not.i119.i = icmp eq ptr %i.kh, null
  br i1 %.not.i119.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 48 ; 3 uses
  %i.kj = load i32, ptr %i.ki, align 4, !noalias !86, !noundef !4 ; 4 uses
  %i.kk = icmp eq i32 %i.kj, -1
  br i1 %i.kk, label %.invoke1191.i, label %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i, !prof !14

.invoke1191.i:                                    ; preds = %bb.dh, %bb.de
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.cont1192.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !29

.cont1192.i:                                      ; preds = %.invoke1191.i
  unreachable

_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.de
  %.val19.i.i = load i32, ptr %i.ck, align 8, !alias.scope !83, !noalias !84
  %i.kl = add nuw i32 %i.kj, 1
  store i32 %i.kl, ptr %i.ki, align 4, !noalias !86
  %i.km = load i64, ptr %i.kh, align 8, !range !16, !noalias !86, !noundef !4
  %i.kn = trunc nuw i64 %i.km to i1
  br i1 %i.kn, label %bb.df, label %.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i: ; preds = %bb.dg, %.thread.i.i, %bb.dd
  %i.ko = load ptr, ptr %i.cm, align 8, !alias.scope !83, !noalias !84, !noundef !4 ; 10 uses
  %.not16.i.i = icmp eq ptr %i.ko, null
  br i1 %.not16.i.i, label %bb.ed, label %bb.dh

bb.df:                                            ; preds = %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  %i.kp = add i32 %.val19.i.i, 1
  %i.kq = zext i32 %i.kp to i64                   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.sroa.5.0.i.i133.i = load ptr, ptr %i.kr, align 8, !noalias !86, !nonnull !4, !noundef !4
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i133.i, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !noalias !86, !noundef !4
  %i.ku = icmp ugt i64 %i.kt, %i.kq
  br i1 %i.ku, label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNtCs33K2ylI4knu_10hir_expand8span_map7SpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter4peekCsileJQcQObtj_7hir_def.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.df, %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  store i32 %i.kj, ptr %i.ki, align 8, !noalias !87
  %i.kv = icmp eq i32 %i.kj, 0
  br i1 %i.kv, label %bb.dg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i

bb.dg:                                            ; preds = %.thread.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.kh) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !29

bb.dh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 48 ; 6 uses
  %i.kx = load i32, ptr %i.kw, align 4, !noalias !86, !noundef !4 ; 2 uses
  %i.ky = icmp eq i32 %i.kx, -1
  br i1 %i.ky, label %.invoke1191.i, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i, !prof !14

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.dh
  %i.kz = add nuw i32 %i.kx, 1
  store i32 %i.kz, ptr %i.kw, align 4, !noalias !86
  %i.la = load i32, ptr %i.cn, align 8, !alias.scope !83, !noalias !84, !noundef !4
  %i.lb = load i32, ptr %i.co, align 4, !alias.scope !83, !noalias !84, !noundef !4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ko, i64 60
  %i.ld = load i8, ptr %i.lc, align 4, !range !15, !noalias !86, !noundef !4
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.dj, label %bb.di, !prof !14

bb.di:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 56
  %i.lg = load i32, ptr %i.lf, align 8, !noalias !86, !noundef !4
  br label %.noexc24.i.i

bb.dj:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  %i.lh = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.ko)
          to label %.noexc24.i.i unwind label %.loopexit402.i, !noalias !86

.noexc24.i.i:                                     ; preds = %bb.dj, %bb.di
  %.sroa.0.0.i23.i.i = phi i32 [ %i.lg, %bb.di ], [ %i.lh, %bb.dj ] ; 3 uses
  %i.li = load i64, ptr %i.ko, align 8, !range !16, !noalias !86, !noundef !4 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.lk = trunc nuw i64 %i.li to i1
  %i.ll = load ptr, ptr %i.lj, align 8, !noalias !86, !nonnull !4, !noundef !4 ; 3 uses
  br i1 %i.lk, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %.noexc24.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !noalias !86, !noundef !4 ; 2 uses
  %i.lo = icmp ugt i64 %i.ln, 4294967295
  %i.lp = shl nuw i64 %i.ln, 32
  %.sroa.09.0.insert.insert.i.i.i129.i = select i1 %i.lo, i64 513, i64 %i.lp ; 2 uses
  %i.lq = trunc i64 %.sroa.09.0.insert.insert.i.i.i129.i to i1
  br i1 %i.lq, label %bb.dl, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i130.i, !prof !14

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90
  store i8 2, ptr %i.b, align 1, !noalias !90
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931) #38
          to label %.noexc25.i.i unwind label %.loopexit.split-lp403.i, !noalias !86

.noexc25.i.i:                                     ; preds = %bb.dl
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i130.i: ; preds = %bb.dk
  %.sroa.6.0.extract.shift.i.i.i.i131.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i129.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i132.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i131.i to i32
  br label %bb.dn

bb.dm:                                            ; preds = %.noexc24.i.i
  %i.lr = load i32, ptr %i.ll, align 8, !noalias !86, !noundef !4
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i130.i
  %.sroa.02.0.i.i120.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i132.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i130.i ], [ %i.lr, %bb.dm ]
  %i.ls = add i32 %.sroa.02.0.i.i120.i, %.sroa.0.0.i23.i.i ; 2 uses
  %.not.i.i121.i = icmp ugt i32 %.sroa.0.0.i23.i.i, %i.ls
  br i1 %.not.i.i121.i, label %bb.do, label %bb.dr, !prof !14

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #38
          to label %.noexc26.i.i unwind label %.loopexit.split-lp403.i, !noalias !86
end_hunk_0
begin_hunk_1_@_RINvCslVwgvvnzcNb_13syntax_bridge25syntax_node_to_token_treeNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapEB12_:bb.a
          cleanup
  br label %.thread.i

.thread325.loopexit.split-lp.loopexit.i:          ; preds = %.invoke1179.invoke.i, %.invoke1188.i, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit58.i.i
  %lpad.loopexit399.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread325.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bh, %.invoke1180.i
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

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.hm, %bb.ha, %bb.gz, %_RNvXsO_Cs4dcH4YgJDq_2ttNtB5_4LeafNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %bb.gw, %bb.fr, %bb.fq, %bb.fn, %bb.fd, %bb.fb, %bb.eq, %bb.en, %bb.em, %.invoke1181.i, %bb.dy, %bb.dt, %bb.dg, %.noexc122.i, %bb.ct, %bb.cr
  %lpad.loopexit411.i = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.fp, %_RNvXs6_CslVwgvvnzcNb_13syntax_bridgeNtB5_8SynTokenINtB5_8SrcTokenINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeB1h_E0EE7to_charB1n_.exit.thread.invoke.i, %.invoke1182.i, %.invoke1186.i, %.invoke1184.i
  %lpad.loopexit.split-lp412.i = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

bb.cp:                                            ; preds = %bb.cl, %bb.ce, %bb.au, %bb.ar
  %.sroa.19.1.ph.i = phi i32 [ %i.je, %bb.cl ], [ %i.io, %bb.ce ], [ 0, %bb.au ], [ %i.fr, %bb.ar ] ; 9 uses
  %.sroa.15242.1.ph.i = phi i32 [ %.sroa.0.0.i102.i.i, %bb.cl ], [ %.sroa.0.0.i91.i.i, %bb.ce ], [ 0, %bb.au ], [ %i.fq, %bb.ar ] ; 11 uses
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
  br i1 %i.km, label %bb.cy, label %.invoke1184.i

bb.cw:                                            ; preds = %.lr.ph.i.i
  br i1 %i.km, label %bb.cz, label %.invoke1184.i

bb.cx:                                            ; preds = %.lr.ph.i.i
  br i1 %i.km, label %bb.da, label %.invoke1184.i

bb.cy:                                            ; preds = %bb.cv
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %.val.i124.i ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 8, !range !78, !noalias !290, !noundef !4
  %i.kp = icmp eq i8 %i.ko, 3
  br i1 %i.kp, label %.noexc126.i, label %.invoke1186.i, !prof !79

.invoke1184.i:                                    ; preds = %bb.he, %bb.hd, %bb.hc, %bb.cx, %bb.cw, %bb.cv
  %i.kq = phi i64 [ %.val.i124.i, %bb.cx ], [ %.val.i124.i, %bb.cv ], [ %.val.i124.i, %bb.cw ], [ %.val.i197.i, %bb.hc ], [ %.val.i197.i, %bb.hd ], [ %.val.i197.i, %bb.he ]
  %i.kr = phi i64 [ %i.ki, %bb.cx ], [ %i.ki, %bb.cv ], [ %i.ki, %bb.cw ], [ %i.ve, %bb.hc ], [ %i.ve, %bb.hd ], [ %i.ve, %bb.he ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.kq, i64 noundef %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #38
          to label %.cont1185.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !290

.cont1185.i:                                      ; preds = %.invoke1184.i
  unreachable

.invoke1186.i:                                    ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.da, %bb.cz, %bb.cy
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 163 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #38
          to label %.cont1187.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !290

.cont1187.i:                                      ; preds = %.invoke1186.i
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %i.kj, i64 %.val.i124.i ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 8, !range !78, !noalias !290, !noundef !4
  %i.ku = icmp eq i8 %i.kt, 3
  br i1 %i.ku, label %.noexc126.i, label %.invoke1186.i, !prof !79

bb.da:                                            ; preds = %bb.cx
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.kj, i64 %.val.i124.i ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 8, !range !78, !noalias !290, !noundef !4
  %i.kx = icmp eq i8 %i.kw, 3
  br i1 %i.kx, label %.noexc126.i, label %.invoke1186.i, !prof !79

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
  br i1 %i.kz, label %.preheader.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6M_.exit.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6M_.exit.i.i: ; preds = %_RNCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB4_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB4_25syntax_node_to_token_treeB13_E0EEs_0B19_.exit.i.i.i.i.i, %.noexc126.i
  %i.la = icmp eq ptr %i.kd, %i.kl
  %indvars.iv.next966.i = add nuw nsw i64 %indvars.iv965.i, 1
  br i1 %i.la, label %.loopexit392.i, label %.lr.ph.i.i

.loopexit392.i:                                   ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRjNtCs4dcH4YgJDq_2tt13DelimiterKinduINtNtNtBa_3ops12control_flow11ControlFlowTjB11_EENCNvMsc_NtB13_7storageNtB2u_17TopSubtreeBuilder19expected_delimiters0NCINvNvXs_NtB6_9enumerateINtB3D_9EnumeratepENtNtNtB8_6traits8iterator8Iterator8try_fold9enumerateB11_uB1z_NCINvNvB4b_4find5checkB2e_NCINvCslVwgvvnzcNb_13syntax_bridge14convert_tokensINtB5G_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5G_25syntax_node_to_token_treeB6G_E0EEs_0E0E0E0B6M_.exit.i.i, %bb.cu
  switch i16 %i.jv, label %bb.dd [
    i16 5, label %bb.dy
    i16 7, label %bb.dw
    i16 9, label %bb.dx
  ]

bb.dd:                                            ; preds = %.loopexit392.i
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.lb = load ptr, ptr %i.ce, align 8, !alias.scope !344, !noalias !345, !noundef !4 ; 6 uses
  %.not.i127.i = icmp eq ptr %i.lb, null
  br i1 %.not.i127.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48 ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !noalias !347, !noundef !4 ; 4 uses
  %i.le = icmp eq i32 %i.ld, -1
  br i1 %i.le, label %.invoke1182.i, label %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i, !prof !14

.invoke1182.i:                                    ; preds = %bb.dh, %bb.de
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #37
          to label %.cont1183.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !290

.cont1183.i:                                      ; preds = %.invoke1182.i
  unreachable

_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.de
  %.val19.i.i = load i32, ptr %i.cf, align 8, !alias.scope !344, !noalias !345
  %i.lf = add nuw i32 %i.ld, 1
  store i32 %i.lf, ptr %i.lc, align 4, !noalias !347
  %i.lg = load i64, ptr %i.lb, align 8, !range !16, !noalias !347, !noundef !4
  %i.lh = trunc nuw i64 %i.lg to i1
  br i1 %i.lh, label %bb.df, label %.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i: ; preds = %bb.dg, %.thread.i.i, %bb.dd
  %i.li = load ptr, ptr %i.ch, align 8, !alias.scope !344, !noalias !345, !noundef !4 ; 10 uses
  %.not16.i.i = icmp eq ptr %i.li, null
  br i1 %.not16.i.i, label %bb.ed, label %bb.dh

bb.df:                                            ; preds = %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  %i.lj = add i32 %.val19.i.i, 1
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %.sroa.5.0.i.i141.i = load ptr, ptr %i.ll, align 8, !noalias !347, !nonnull !4, !noundef !4
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i141.i, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !noalias !347, !noundef !4
  %i.lo = icmp ugt i64 %i.ln, %i.lk
  br i1 %i.lo, label %_RNvXs7_CslVwgvvnzcNb_13syntax_bridgeINtB5_9ConverterNtNvNtCsileJQcQObtj_7hir_def9item_tree23lower_extra_crate_attrs11FakeSpanMapNCINvB5_25syntax_node_to_token_treeBO_E0ENtB5_14TokenConverter4peekBU_.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.df, %_RNvYTINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsuAhG64lL82_9text_size4size8TextSizeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  store i32 %i.ld, ptr %i.lc, align 8, !noalias !348
  %i.lp = icmp eq i32 %i.ld, 0
  br i1 %i.lp, label %bb.dg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i

bb.dg:                                            ; preds = %.thread.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.lb) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !290

bb.dh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit22.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 48 ; 6 uses
  %i.lr = load i32, ptr %i.lq, align 4, !noalias !347, !noundef !4 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, -1
  br i1 %i.ls, label %.invoke1182.i, label %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i, !prof !14

_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i: ; preds = %bb.dh
  %i.lt = add nuw i32 %i.lr, 1
  store i32 %i.lt, ptr %i.lq, align 4, !noalias !347
  %i.lu = load i32, ptr %i.ci, align 8, !alias.scope !344, !noalias !345, !noundef !4
  %i.lv = load i32, ptr %i.cj, align 4, !alias.scope !344, !noalias !345, !noundef !4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.li, i64 60
  %i.lx = load i8, ptr %i.lw, align 4, !range !15, !noalias !347, !noundef !4
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.dj, label %bb.di, !prof !14

bb.di:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.ma = load i32, ptr %i.lz, align 8, !noalias !347, !noundef !4
  br label %.noexc24.i.i

bb.dj:                                            ; preds = %_RNvXso_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def.exit.i.i
  %i.mb = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.li)
          to label %.noexc24.i.i unwind label %.loopexit414.i, !noalias !347

.noexc24.i.i:                                     ; preds = %bb.dj, %bb.di
  %.sroa.0.0.i23.i.i = phi i32 [ %i.ma, %bb.di ], [ %i.mb, %bb.dj ] ; 3 uses
  %i.mc = load i64, ptr %i.li, align 8, !range !16, !noalias !347, !noundef !4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.me = trunc nuw i64 %i.mc to i1
  %i.mf = load ptr, ptr %i.md, align 8, !noalias !347, !nonnull !4, !noundef !4 ; 3 uses
  br i1 %i.me, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %.noexc24.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !347, !noundef !4 ; 2 uses
  %i.mi = icmp ugt i64 %i.mh, 4294967295
  %i.mj = shl nuw i64 %i.mh, 32
  %.sroa.09.0.insert.insert.i.i.i137.i = select i1 %i.mi, i64 513, i64 %i.mj ; 2 uses
  %i.mk = trunc i64 %.sroa.09.0.insert.insert.i.i.i137.i to i1
  br i1 %i.mk, label %bb.dl, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i138.i, !prof !14

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !351
  store i8 2, ptr %i.b, align 1, !noalias !351
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931) #38
          to label %.noexc25.i.i unwind label %.loopexit.split-lp415.i, !noalias !347

.noexc25.i.i:                                     ; preds = %bb.dl
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i138.i: ; preds = %bb.dk
  %.sroa.6.0.extract.shift.i.i.i.i139.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i137.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i140.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i139.i to i32
  br label %bb.dn

bb.dm:                                            ; preds = %.noexc24.i.i
  %i.ml = load i32, ptr %i.mf, align 8, !noalias !347, !noundef !4
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i138.i
  %.sroa.02.0.i.i128.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i140.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i138.i ], [ %i.ml, %bb.dm ]
  %i.mm = add i32 %.sroa.02.0.i.i128.i, %.sroa.0.0.i23.i.i ; 2 uses
  %.not.i.i129.i = icmp ugt i32 %.sroa.0.0.i23.i.i, %i.mm
  br i1 %.not.i.i129.i, label %bb.do, label %bb.dr, !prof !14

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #38
          to label %.noexc26.i.i unwind label %.loopexit.split-lp415.i, !noalias !347
end_hunk_1
