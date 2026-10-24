Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvNtCs9gmjTwvRRSu_10typst_html6encode13write_element:bb.a
    i8 5, label %.lr.ph.i.i161.preheader
    i8 10, label %.lr.ph.i.i161.preheader
    i8 11, label %.lr.ph.i.i161.preheader
    i8 12, label %.lr.ph.i.i161.preheader
    i8 13, label %.lr.ph.i.i161.preheader
    i8 14, label %.lr.ph.i.i161.preheader
    i8 15, label %.lr.ph.i.i161.preheader
    i8 16, label %.lr.ph.i.i161.preheader
    i8 17, label %.lr.ph.i.i161.preheader
    i8 9, label %.lr.ph.i.i161.preheader
  ]

bb.ed:                                            ; preds = %bb.eb
  switch i64 %i.au, label %.lr.ph.i.i161.preheader [
    i64 -9223372036833012083, label %bb.ec
    i64 -9223372036854775507, label %bb.ec
    i64 -9223372036854775347, label %bb.ec
    i64 -9223372036854775315, label %bb.ec
    i64 -9223372036683808147, label %bb.ec
    i64 -9223372036854775187, label %bb.ec
  ]

bb.ee:                                            ; preds = %bb.ec
  %.not3.i.i = icmp eq i64 %i.au, -9223372036854770096
  br i1 %.not3.i.i, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.thread42.i, label %.lr.ph.i.i161.preheader

_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.i: ; preds = %bb.ec
  %i.acv = icmp eq i64 %i.au, -9223372036854643544
  br i1 %i.acv, label %.lr.ph.i.i161.preheader, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.thread42.i

.lr.ph.i.i161.preheader:                          ; preds = %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ed, %bb.ee, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.i
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.acx = load ptr, ptr %i.acw, align 16, !alias.scope !16117, !nonnull !52, !noundef !52 ; 2 uses
  %.idx.i159 = shl nuw nsw i64 %i.acp, 7
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 %.idx.i159
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader, %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children0B5_.exit.backedge.i.i
  %i.acz = phi ptr [ %i.ada, %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children0B5_.exit.backedge.i.i ], [ %i.acx, %.lr.ph.i.i161.preheader ] ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 128 ; 2 uses
  %i.adb = load i64, ptr %i.acz, align 16, !range !56, !alias.scope !16118, !noalias !16119, !noundef !52
  switch i64 %i.adb, label %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children0B5_.exit.backedge.i.i [
    i64 2, label %.split.i.i
    i64 3, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_6encode14write_children0EBU_.exit.loopexit.i
  ]

.split.i.i:                                       ; preds = %.lr.ph.i.i161
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.add = call fastcc noundef zeroext i1 @_RNvNtCs9gmjTwvRRSu_10typst_html6encode19wants_pretty_around(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.adc), !noalias !16119, !inline_history !15855
  br i1 %i.add, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_6encode14write_children0EBU_.exit.loopexit.i, label %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children0B5_.exit.backedge.i.i

_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children0B5_.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i161
  %.not5.i.i = icmp eq ptr %i.ada, %i.acy
  br i1 %.not5.i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_6encode14write_children0EBU_.exit.loopexit.i, label %.lr.ph.i.i161

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_6encode14write_children0EBU_.exit.loopexit.i: ; preds = %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children0B5_.exit.backedge.i.i, %.split.i.i, %.lr.ph.i.i161
  %.lcssa.i.ph.i = phi i8 [ 1, %.lr.ph.i.i161 ], [ 1, %.split.i.i ], [ 0, %_RNCNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children0B5_.exit.backedge.i.i ]
  %i.ade = and i8 %.lcssa.i.ph.i, %i.acs
  br label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.thread42.i

_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.thread42.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_6encode14write_children0EBU_.exit.loopexit.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.i, %bb.ee, %bb.ec
  %.sroa.02.0.i = phi i8 [ 0, %bb.ee ], [ 0, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.i ], [ 0, %bb.ec ], [ %i.ade, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtBU_6encode14write_children0EBU_.exit.loopexit.i ] ; 2 uses
  store i8 %.sroa.02.0.i, ptr %i.acr, align 8, !alias.scope !16116
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.adg = load i64, ptr %i.adf, align 8, !alias.scope !16116, !noundef !52
  %i.adh = add i64 %i.adg, 1
  store i64 %i.adh, ptr %i.adf, align 8, !alias.scope !16116
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.adj = load ptr, ptr %i.adi, align 16, !alias.scope !16117, !nonnull !52, !noundef !52 ; 2 uses
  %i.adk = getelementptr inbounds nuw [128 x i8], ptr %i.adj, i64 %i.acp
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.adl = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.adm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ado = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.adp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.adq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.2.0..sroa_idx.i.i162 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.2.sroa.3.sroa.2.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.2.sroa.3.sroa.3.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %.sroa.2.sroa.3.sroa.4.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.2.sroa.3.sroa.5.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %.sroa.2.sroa.3.sroa.6.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.sroa.2.sroa.3.sroa.7.0..sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 73 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.adt = load i8, ptr %i.ads, align 16, !range !64, !alias.scope !16117
  %i.adu = trunc nuw i8 %i.adt to i1
  br label %.outer.i

.outer.i:                                         ; preds = %_RNvNtCs9gmjTwvRRSu_10typst_html6encode10write_node.exit.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.thread42.i
  %.sroa.05.0.ph.i = phi ptr [ %i.adw, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode10write_node.exit.i ], [ %i.adj, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.thread42.i ]
  %.sroa.03.0.ph.i = phi i8 [ %.sroa.08.2.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode10write_node.exit.i ], [ %.sroa.02.0.i, %_RNvNtCs9gmjTwvRRSu_10typst_html6encode20allows_pretty_inside.exit.thread42.i ] ; 2 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.eg, %.outer.i
  %.sroa.05.0.i = phi ptr [ %i.adw, %bb.eg ], [ %.sroa.05.0.ph.i, %.outer.i ] ; 19 uses
  %i.adv = icmp eq ptr %.sroa.05.0.i, %i.adk
  br i1 %i.adv, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 128 ; 2 uses
  %i.adx = load i64, ptr %.sroa.05.0.i, align 16, !range !56, !noalias !16117, !noundef !52
  switch i64 %i.adx, label %default.unreachable [
    i64 0, label %bb.ef
    i64 1, label %.loopexit58.i
    i64 2, label %bb.ek
    i64 3, label %.loopexit58.i
  ]

bb.eh:                                            ; preds = %bb.ef
  %i.ady = load i64, ptr %i.adf, align 8, !alias.scope !16116, !noundef !52
  %i.adz = add i64 %i.ady, -1                     ; 2 uses
  store i64 %i.adz, ptr %i.adf, align 8, !alias.scope !16116
  call void @llvm.experimental.noalias.scope.decl(metadata !16120)
  %i.aea = load i8, ptr %i.acr, align 8, !range !64, !alias.scope !16121, !noundef !52
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %bb.ei, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children.exit.thread

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !16122)
  %i.aec = load i64, ptr %i.ak, align 8, !alias.scope !16123, !noundef !52 ; 5 uses
  %i.aed = icmp sgt i64 %i.aec, -1
  call void @llvm.assume(i1 %i.aed)
  %i.aee = load i64, ptr %0, align 8, !range !67, !alias.scope !16124, !noundef !52
  %i.aef = icmp eq i64 %i.aee, %i.aec
  br i1 %i.aef, label %bb.ej, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i.i181, !prof !55

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.aec, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !16117, !inline_history !15855
  %.pre93.i = load i64, ptr %i.adf, align 8, !alias.scope !16121
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i.i181

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i.i181: ; preds = %bb.ej, %bb.ei
  %i.aeg = phi i64 [ %.pre93.i, %bb.ej ], [ %i.adz, %bb.ei ] ; 2 uses
  %i.aeh = load ptr, ptr %i.ap, align 8, !alias.scope !16123, !nonnull !52, !noundef !52 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aec
  store i8 10, ptr %i.aei, align 1, !noalias !16125
  %i.aej = add nuw i64 %i.aec, 1                  ; 2 uses
  store i64 %i.aej, ptr %i.ak, align 8, !alias.scope !16123
  %.not.i16.i = icmp eq i64 %i.aeg, 0
  br i1 %.not.i16.i, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children.exit.thread, label %.lr.ph.preheader.i.i182

.lr.ph.preheader.i.i182:                          ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i.i181
  %.pre3.i.i183 = load i64, ptr %0, align 8, !range !67, !alias.scope !16126
  br label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186, %.lr.ph.preheader.i.i182
  %i.aek = phi ptr [ %i.aet, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186 ], [ %i.aeh, %.lr.ph.preheader.i.i182 ]
  %i.ael = phi i64 [ %i.aeu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186 ], [ %.pre3.i.i183, %.lr.ph.preheader.i.i182 ] ; 2 uses
  %i.aem = phi i64 [ %i.aex, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186 ], [ %i.aej, %.lr.ph.preheader.i.i182 ] ; 4 uses
  %.sroa.0.02.i.i184 = phi i64 [ %i.aen, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186 ], [ 0, %.lr.ph.preheader.i.i182 ]
  %i.aen = add nuw i64 %.sroa.0.02.i.i184, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16127)
  %i.aeo = sub i64 %i.ael, %i.aem
  %i.aep = icmp ult i64 %i.aeo, 2
  br i1 %i.aep, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i188, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i185, !prof !55

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i188: ; preds = %.lr.ph.i17.i
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.aem, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !16117, !inline_history !15855
  %i.aeq = load i64, ptr %i.ak, align 8, !alias.scope !16128, !noundef !52 ; 2 uses
  %i.aer = icmp sgt i64 %i.aeq, -1
  call void @llvm.assume(i1 %i.aer)
  %.pre.i.i189 = load i64, ptr %0, align 8, !range !67, !alias.scope !16126
  %.pre4.i.i190 = load ptr, ptr %i.ap, align 8, !alias.scope !16128
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i185: ; preds = %.lr.ph.i17.i
  %i.aes = icmp sgt i64 %i.aem, -1
  call void @llvm.assume(i1 %i.aes)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i185, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i188
  %i.aet = phi ptr [ %.pre4.i.i190, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i188 ], [ %i.aek, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i185 ] ; 2 uses
  %i.aeu = phi i64 [ %.pre.i.i189, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i188 ], [ %i.ael, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i185 ]
  %i.aev = phi i64 [ %i.aeq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i188 ], [ %i.aem, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i.i185 ] ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aev
  store i16 8224, ptr %i.aew, align 1, !noalias !16129
  %i.aex = add nuw i64 %i.aev, 2                  ; 2 uses
  store i64 %i.aex, ptr %i.ak, align 8, !alias.scope !16128
  %exitcond.not.i.i187 = icmp eq i64 %i.aen, %i.aeg
  br i1 %exitcond.not.i.i187, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children.exit.thread, label %.lr.ph.i17.i

_RNvNtCs9gmjTwvRRSu_10typst_html6encode14write_children.exit.thread: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i.i186, %bb.eh, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i.i181
  store i8 %i.acs, ptr %i.acr, align 8, !alias.scope !16116
  br label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode9write_raw.exit.thread

bb.ek:                                            ; preds = %bb.eg
  %i.aey = load i8, ptr %i.acr, align 8, !range !64, !alias.scope !16116, !noundef !52
  %i.aez = trunc nuw i8 %i.aey to i1
  br i1 %i.aez, label %bb.el, label %.loopexit58.i

bb.el:                                            ; preds = %bb.ek
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 16
  %i.afb = call fastcc noundef zeroext i1 @_RNvNtCs9gmjTwvRRSu_10typst_html6encode19wants_pretty_around(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.afa), !noalias !16117, !inline_history !15855 ; 2 uses
  %2 = zext i1 %i.afb to i8                       ; 2 uses
  %i.afc = trunc nuw i8 %.sroa.03.0.ph.i to i1
  %or.cond.i = or i1 %i.afb, %i.afc
  br i1 %or.cond.i, label %.thread.i179.a, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i

.loopexit58.i:                                    ; preds = %bb.eg, %bb.eg, %bb.ek
  %i.afd = trunc nuw i8 %.sroa.03.0.ph.i to i1
  br i1 %i.afd, label %bb.em, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i

bb.em:                                            ; preds = %.loopexit58.i
  %.pre.i178 = load i8, ptr %i.acr, align 8, !range !64, !alias.scope !16130
  %i.afe = trunc nuw i8 %.pre.i178 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !16131)
  br i1 %i.afe, label %.thread.i179.a, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i

.thread.i179.a:                                   ; preds = %bb.el, %bb.em
  %.sroa.08.1117.i = phi i8 [ 0, %bb.em ], [ %2, %bb.el ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16132)
  %i.aff = load i64, ptr %i.ak, align 8, !alias.scope !16133, !noundef !52 ; 5 uses
  %i.afg = icmp sgt i64 %i.aff, -1
  call void @llvm.assume(i1 %i.afg)
  %i.afh = load i64, ptr %0, align 8, !range !67, !alias.scope !16134, !noundef !52
  %i.afi = icmp eq i64 %i.afh, %i.aff
  br i1 %i.afi, label %bb.en, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i18.i, !prof !55

bb.en:                                            ; preds = %.thread.i179.a
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.aff, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !16117, !inline_history !15855
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i18.i

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i18.i: ; preds = %bb.en, %.thread.i179.a
  %i.afj = load ptr, ptr %i.ap, align 8, !alias.scope !16133, !nonnull !52, !noundef !52 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.aff
  store i8 10, ptr %i.afk, align 1, !noalias !16135
  %i.afl = add nuw i64 %i.aff, 1                  ; 2 uses
  store i64 %i.afl, ptr %i.ak, align 8, !alias.scope !16133
  %i.afm = load i64, ptr %i.adf, align 8, !alias.scope !16130, !noundef !52 ; 2 uses
  %.not.i19.i = icmp eq i64 %i.afm, 0
  br i1 %.not.i19.i, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i, label %.lr.ph.preheader.i20.i

.lr.ph.preheader.i20.i:                           ; preds = %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i18.i
  %.pre3.i21.i = load i64, ptr %0, align 8, !range !67, !alias.scope !16136
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i, %.lr.ph.preheader.i20.i
  %i.afn = phi ptr [ %i.afw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i ], [ %i.afj, %.lr.ph.preheader.i20.i ]
  %i.afo = phi i64 [ %i.afx, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i ], [ %.pre3.i21.i, %.lr.ph.preheader.i20.i ] ; 2 uses
  %i.afp = phi i64 [ %i.aga, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i ], [ %i.afl, %.lr.ph.preheader.i20.i ] ; 4 uses
  %.sroa.0.02.i23.i = phi i64 [ %i.afq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i ], [ 0, %.lr.ph.preheader.i20.i ]
  %i.afq = add nuw i64 %.sroa.0.02.i23.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16137)
  %i.afr = sub i64 %i.afo, %i.afp
  %i.afs = icmp ult i64 %i.afr, 2
  br i1 %i.afs, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i27.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i24.i, !prof !55

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i27.i: ; preds = %.lr.ph.i22.i
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.afp, i64 noundef 2, i64 noundef 1, i64 noundef 1), !noalias !16117, !inline_history !15855
  %i.aft = load i64, ptr %i.ak, align 8, !alias.scope !16138, !noundef !52 ; 2 uses
  %i.afu = icmp sgt i64 %i.aft, -1
  call void @llvm.assume(i1 %i.afu)
  %.pre.i28.i = load i64, ptr %0, align 8, !range !67, !alias.scope !16136
  %.pre4.i29.i = load ptr, ptr %i.ap, align 8, !alias.scope !16138
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i24.i: ; preds = %.lr.ph.i22.i
  %i.afv = icmp sgt i64 %i.afp, -1
  call void @llvm.assume(i1 %i.afv)
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i24.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i27.i
  %i.afw = phi ptr [ %.pre4.i29.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i27.i ], [ %i.afn, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i24.i ] ; 2 uses
  %i.afx = phi i64 [ %.pre.i28.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i27.i ], [ %i.afo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i24.i ]
  %i.afy = phi i64 [ %i.aft, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i27.i ], [ %i.afp, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i24.i ] ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.afy
  store i16 8224, ptr %i.afz, align 1, !noalias !16139
  %i.aga = add nuw i64 %i.afy, 2                  ; 2 uses
  store i64 %i.aga, ptr %i.ak, align 8, !alias.scope !16138
  %exitcond.not.i26.i = icmp eq i64 %i.afq, %i.afm
  br i1 %exitcond.not.i26.i, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i, label %.lr.ph.i22.i

_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i18.i, %bb.em, %.loopexit58.i, %bb.el
  %.sroa.08.2.i = phi i8 [ 0, %.loopexit58.i ], [ %2, %bb.el ], [ 0, %bb.em ], [ %.sroa.08.1117.i, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit.i18.i ], [ %.sroa.08.1117.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9gmjTwvRRSu_10typst_html.exit.i25.i ]
  %i.agb = load i64, ptr %.sroa.05.0.i, align 16, !range !56, !alias.scope !16140, !noalias !16117, !noundef !52
  switch i64 %i.agb, label %default.unreachable [
    i64 0, label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode10write_node.exit.i
    i64 1, label %bb.eo
    i64 2, label %bb.ep
    i64 3, label %bb.eq
  ]

bb.eo:                                            ; preds = %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 8 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 23
  %i.age = load i8, ptr %i.agd, align 1, !alias.scope !16141, !noalias !16117, !noundef !52 ; 2 uses
  %.not.i39.i = icmp sgt i8 %i.age, -1            ; 2 uses
  %i.agf = and i8 %i.age, 127
  %i.agg = zext nneg i8 %i.agf to i64
  %i.agh = load ptr, ptr %i.agc, align 8, !alias.scope !16141, !noalias !16117, !nonnull !52
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 16
  %i.agj = load i64, ptr %i.agi, align 16, !alias.scope !16141, !noalias !16117
  %.sroa.3.0.i.i177 = select i1 %.not.i39.i, i64 %i.agj, i64 %i.agg
  %.sroa.0.0.i40.i = select i1 %.not.i39.i, ptr %i.agh, ptr %i.agc
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 24
  %i.agl = load i64, ptr %i.agk, align 8, !range !61, !alias.scope !16140, !noalias !16117, !noundef !52
  %i.agm = call fastcc { ptr, i64 } @_RNvNtCs9gmjTwvRRSu_10typst_html6encode10write_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i40.i, i64 noundef %.sroa.3.0.i.i177, i64 noundef %i.agl, i1 noundef zeroext %i.adu), !noalias !16117, !inline_history !15884 ; 2 uses
  %i.agn = extractvalue { ptr, i64 } %i.agm, 0    ; 2 uses
  %.not11.i.i = icmp eq ptr %i.agn, null
  %i.ago = extractvalue { ptr, i64 } %i.agm, 1
  %spec.select.i.i = select i1 %.not11.i.i, i64 undef, i64 %i.ago
  br label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode10write_node.exit.i

bb.ep:                                            ; preds = %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 16
  %i.agq = call fastcc { ptr, i64 } @_RNvNtCs9gmjTwvRRSu_10typst_html6encode13write_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.agp), !noalias !16117, !inline_history !15884 ; 2 uses
  %i.agr = extractvalue { ptr, i64 } %i.agq, 0    ; 2 uses
  %.not.i32.i = icmp eq ptr %i.agr, null
  %i.ags = extractvalue { ptr, i64 } %i.agq, 1
  %spec.select13.i.i = select i1 %.not.i32.i, i64 undef, i64 %i.ags
  br label %_RNvNtCs9gmjTwvRRSu_10typst_html6encode10write_node.exit.i

bb.eq:                                            ; preds = %_RNvNtCs9gmjTwvRRSu_10typst_html6encode12write_indent.exit30.i
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !16142)
  call void @llvm.experimental.noalias.scope.decl(metadata !16143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16144
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 120
  %i.agv = load double, ptr %i.agu, align 8, !alias.scope !16143, !noalias !16117, !noundef !52
  %i.agw = load i8, ptr %i.acr, align 8, !range !64, !alias.scope !16145, !noundef !52
  %i.agx = trunc nuw i8 %i.agw to i1              ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 56
  %i.agz = load i64, ptr %i.agy, align 8, !range !60, !alias.scope !16143, !noalias !16117, !noundef !52
  %i.aha = trunc nuw i64 %i.agz to i1
  br i1 %i.aha, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 64 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 79
  %i.ahd = load i8, ptr %i.ahc, align 1, !alias.scope !16146, !noalias !16117, !noundef !52 ; 2 uses
  %.not.i.i.i174 = icmp sgt i8 %i.ahd, -1         ; 2 uses
  %i.ahe = and i8 %i.ahd, 127
  %i.ahf = zext nneg i8 %i.ahe to i64
  %i.ahg = load ptr, ptr %i.ahb, align 16, !alias.scope !16146, !noalias !16117, !nonnull !52
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 72
  %i.ahi = load i64, ptr %i.ahh, align 8, !alias.scope !16146, !noalias !16117
  %.sroa.3.0.i.i.i175 = select i1 %.not.i.i.i174, i64 %i.ahi, i64 %i.ahf
  %.sroa.0.0.i.i.i176 = select i1 %.not.i.i.i174, ptr %i.ahg, ptr %i.ahb
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.sroa.5.0.i.i = phi i64 [ %.sroa.3.0.i.i.i175, %bb.er ], [ undef, %bb.eq ]
  %.sroa.0.0.i33.i = phi ptr [ %.sroa.0.0.i.i.i176, %bb.er ], [ null, %bb.eq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false), !noalias !16144
  store i8 -128, ptr %.sroa.47.0..sroa_idx.i.i, align 1, !noalias !16144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16144
  %i.ahj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 80
  store ptr %i.ahj, ptr %i.e, align 8, !noalias !16144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16144
  store ptr %i.e, ptr %i.d, align 8, !noalias !16144
  store ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvMNtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtBW_10Properties9to_inline0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtB10_, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !16144
  %i.ahk = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @47, ptr noundef nonnull %i.d)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16147, !inline_history !15855

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.es, %bb.eu
  %lpad.loopexit.split-lp716 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #49
          to label %common.resume224 unwind label %bb.fr, !noalias !16147, !inline_history !15855

bb.et:                                            ; preds = %bb.es
  br i1 %i.ahk, label %bb.eu, label %bb.ew, !prof !55

bb.eu:                                            ; preds = %bb.et
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @921, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1453) #51
          to label %.noexc.i.i173 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16147, !inline_history !15855

.noexc.i.i173:                                    ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %bb.ew
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #49
          to label %common.resume224 unwind label %bb.fr, !noalias !16147, !inline_history !15855

bb.ew:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !16144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16144
  %i.ahm = load i8, ptr %i.adl, align 1, !alias.scope !16148, !noalias !16144, !noundef !52 ; 2 uses
  %.not.i48.i.i = icmp sgt i8 %i.ahm, -1          ; 2 uses
  %i.ahn = and i8 %i.ahm, 127
  %i.aho = zext nneg i8 %i.ahn to i64
  %i.ahp = load ptr, ptr %i.g, align 8, !alias.scope !16148, !noalias !16144 ; 5 uses
  %i.ahq = load i64, ptr %i.adm, align 8, !alias.scope !16148, !noalias !16144 ; 2 uses
  %.sroa.3.0.i49.i.i = select i1 %.not.i48.i.i, i64 %i.ahq, i64 %i.aho
  %.sroa.0.0.i50.i.i = select i1 %.not.i48.i.i, ptr %i.ahp, ptr %i.g
  %i.ahr = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 96
  %i.ahs = load ptr, ptr %i.ahr, align 16, !alias.scope !16143, !noalias !16117, !nonnull !52, !noundef !52
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 104
  %i.ahu = load i64, ptr %i.aht, align 8, !alias.scope !16143, !noalias !16117, !noundef !52
  invoke void @_RNvCsl4q486LaARA_9typst_svg11svg_in_html(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.agt, double noundef %i.agv, i1 noundef zeroext %i.agx, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.0.0.i33.i, i64 %.sroa.5.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i50.i.i, i64 noundef %.sroa.3.0.i49.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ahs, i64 noundef %i.ahu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.adn)
          to label %bb.ex unwind label %bb.ev, !noalias !16117, !inline_history !15855

bb.ex:                                            ; preds = %bb.ew
  %.not.i.i.i.i.i164 = icmp sgt i64 %i.ahq, -1
  br i1 %.not.i.i.i.i.i164, label %bb.ey, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahp) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ahp, inttoptr (i64 16 to ptr)
  %i.ahv = getelementptr inbounds i8, ptr %i.ahp, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %bb.ey
  %i.ahw = atomicrmw add ptr %i.ahv, i64 -1 release, align 8, !noalias !16149
  %.not.i.i.i.i.i.i172 = icmp eq i64 %i.ahw, 1
  br i1 %.not.i.i.i.i.i.i172, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16150
  %i.ahx = getelementptr i8, ptr %i.ahp, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ahx, align 8, !noalias !16149, !noundef !52 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, label %bb.ez, !prof !54

bb.ez:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #54
          to label %.noexc51.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16147, !inline_history !15855

.noexc51.i.i:                                     ; preds = %bb.ez
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  %i.ahy = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.ahv, ptr %i.ado, align 8, !noalias !16150
  store i64 8, ptr %i.b, align 8, !noalias !16150
  store i64 %i.ahy, ptr %i.adp, align 8, !noalias !16150
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc52.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16147, !inline_history !15855

.noexc52.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16150
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i65.i.i, %bb.fp, %bb.fg, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i36.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, %bb.ez
  %lpad.loopexit.split-lp719 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16151)
  %.val.i53.i.i = load i64, ptr %i.h, align 8, !alias.scope !16151, !noalias !16144 ; 2 uses
  %i.ahz = icmp eq i64 %.val.i53.i.i, 0
  br i1 %i.ahz, label %common.resume224, label %bb.fa

bb.fa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i54.i.i = load ptr, ptr %i.adq, align 8, !alias.scope !16151, !noalias !16144, !nonnull !52, !noundef !52
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i54.i.i, i64 noundef %.val.i53.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !16152, !inline_history !15855
  br label %common.resume224

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %.noexc52.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i, %bb.ey, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16144
  %i.aia = load ptr, ptr %i.adq, align 8, !noalias !16144, !nonnull !52, !noundef !52 ; 2 uses
  %i.aib = load i64, ptr %i.adr, align 8, !noalias !16144, !noundef !52 ; 8 uses
  br i1 %i.agx, label %.lr.ph.i37.i, label %bb.fb

bb.fb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16153)
  %i.aic = load i64, ptr %i.ak, align 8, !alias.scope !16154, !noundef !52 ; 5 uses
  %i.aid = load i64, ptr %0, align 8, !range !67, !alias.scope !16154, !noundef !52
  %i.aie = sub i64 %i.aid, %i.aic
  %i.aif = icmp ugt i64 %i.aib, %i.aie
  br i1 %i.aif, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i36.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.i.i34.i, !prof !55

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i36.i: ; preds = %bb.fb
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.aic, i64 noundef %i.aib, i64 noundef 1, i64 noundef 1)
          to label %.noexc56.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16117, !inline_history !15855

.noexc56.i.i:                                     ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9gmjTwvRRSu_10typst_html.exit.thread.i.i36.i
  %i.aig = load i64, ptr %i.ak, align 8, !alias.scope !16155, !noundef !52 ; 2 uses
  %i.aih = icmp sgt i64 %i.aig, -1
end_hunk_0
