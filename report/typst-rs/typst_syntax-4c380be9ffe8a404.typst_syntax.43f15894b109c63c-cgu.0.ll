Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next:bb.a
  %i.acz = landingpad { ptr, i32 }
          cleanup
  %.val.i.i94.i = load ptr, ptr %i.x, align 8, !noalias !2744, !nonnull !20, !noundef !20
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i94.i) #59
          to label %.thread210.i unwind label %bb.en, !noalias !2744

bb.en:                                            ; preds = %bb.em
  %i.ada = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !2744
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i95.i: ; preds = %.lr.ph.i.i.i93.i
  %i.adb = load ptr, ptr %i.x, align 8, !alias.scope !2745, !noalias !2744, !nonnull !20, !noundef !20 ; 2 uses
  %.promoted.i.i.i96.i = load i64, ptr %i.acy, align 8, !alias.scope !2745, !noalias !2744 ; 2 uses
  %scevgep.i.i.i97.i = getelementptr nuw i8, ptr %i.adb, i64 %.promoted.i.i.i96.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i97.i, ptr nonnull readonly align 1 %i.acv, i64 range(i64 0, -9223372036854775808) %i.acu, i1 false), !noalias !2747
  %i.adc = add i64 %.promoted.i.i.i96.i, %i.acu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2744
  br label %bb.ik

bb.eo:                                            ; preds = %.lr.ph.preheader.i.i91.i, %bb.el
  %.8..8..sroa.5188.0.copyload190.i = phi i64 [ %i.acx, %.lr.ph.preheader.i.i91.i ], [ 0, %bb.el ]
  %.0..0..sroa.0186.0.copyload187.i = phi ptr [ %.0..0..0..0..0..sroa.0186.0.copyload187.pre.i, %.lr.ph.preheader.i.i91.i ], [ null, %bb.el ]
  %.sroa.5188.15.insert.ext.i = shl nuw nsw i64 %i.acu, 56
  %.sroa.5188.15.insert.shift.i = or disjoint i64 %.8..8..sroa.5188.0.copyload190.i, %.sroa.5188.15.insert.ext.i
  %.sroa.5188.15.insert.insert.i = or disjoint i64 %.sroa.5188.15.insert.shift.i, -9223372036854775808
  br label %bb.ik

.thread236.i:                                     ; preds = %bb.in, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i
  %i.add = phi i64 [ %i.xx, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.pre381.i, %bb.in ], [ 0, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %.sroa.0.0.lcssa.i24.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %i.vu, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %.sroa.0.0.lcssa.i24.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ] ; 8 uses
  %i.ade = phi i64 [ %i.vu, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.pre380.i, %bb.in ], [ %i.vu, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %i.vu, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %i.vu, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %i.vu, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ] ; 7 uses
  %i.adf = phi ptr [ %.val.pre.i.i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.val.i.i80.i, %bb.in ], [ %.val.pre.i.i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %.val.pre.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %.val.pre.i.i.i, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %.val.pre.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0..sroa.10.24.247.i = phi i64 [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %i.aac, %bb.in ], [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %i.aac, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %i.zy, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %i.aac, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  %.sroa.7.0..sroa.7.16.246.i = phi i1 [ false, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.not.i81.i, %bb.in ], [ false, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ true, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ true, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ true, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  %.sroa.0166.0245.i = phi ptr [ null, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %i.acv, %bb.in ], [ null, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ null, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ null, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ null, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  %.sroa.5.0197244.i = phi i64 [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %i.acu, %bb.in ], [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ undef, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ undef, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ undef, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2749
  %i.adg = sub nuw i64 %i.ade, %i.add
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.add ; 2 uses
  invoke void @_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14split_newlines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adh, i64 noundef %i.adg)
          to label %.noexc126.i unwind label %.thread232.i, !noalias !2749

.thread232.i:                                     ; preds = %.thread236.i
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %.thread210.i

.noexc126.i:                                      ; preds = %.thread236.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !noalias !2749, !nonnull !20, !noundef !20 ; 8 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !noalias !2749, !noundef !20 ; 6 uses
  %.idx192.i.i = shl i64 %i.adm, 4                ; 3 uses
  %i.adn = getelementptr i8, ptr %i.adk, i64 %.idx192.i.i ; 6 uses
  %.not.i104.i = icmp eq i64 %i.adm, 0            ; 2 uses
  %i.ado = getelementptr i8, ptr %i.adn, i64 -16  ; 3 uses
  %.sroa.05.0.i.i64 = select i1 %.not.i104.i, ptr null, ptr %i.ado ; 4 uses
  %.idx.i.i = and i64 %i.adm, 1152921504606846975
  %.not.i.not.i.i.i.i.i.i.i.i.not.i.i = icmp eq i64 %.idx.i.i, 0
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adk, i64 16 ; 3 uses
  %i.adq = icmp eq i64 %.idx192.i.i, 16
  %or.cond.i.i = or i1 %.not.i.not.i.i.i.i.i.i.i.i.not.i.i, %i.adq
  br i1 %or.cond.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc126.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.adr = phi ptr [ %i.ads, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adp, %.noexc126.i ] ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  %i.adt = load ptr, ptr %i.adr, align 8, !alias.scope !2750, !noalias !2751, !nonnull !20, !noundef !20 ; 5 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.adv = load i64, ptr %i.adu, align 8, !alias.scope !2750, !noalias !2751, !noundef !20 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.adv ; 7 uses
  %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.adv, 0
  br i1 %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adx = phi ptr [ %i.afg, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 1 ; 3 uses
  %i.adz = load i8, ptr %i.adx, align 1, !noalias !2752, !noundef !20 ; 5 uses
  %i.aea = icmp sgt i8 %i.adz, -1
  br i1 %i.aea, label %bb.ep, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aeb = and i8 %i.adz, 31
  %i.aec = zext nneg i8 %i.aeb to i32             ; 3 uses
  %i.aed = icmp ne ptr %i.ady, %i.adw
  tail call void @llvm.assume(i1 %i.aed)
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adx, i64 2 ; 3 uses
  %i.aef = load i8, ptr %i.ady, align 1, !noalias !2752, !noundef !20
  %i.aeg = shl nuw nsw i32 %i.aec, 6
  %i.aeh = and i8 %i.aef, 63
  %i.aei = zext nneg i8 %i.aeh to i32             ; 2 uses
  %i.aej = or disjoint i32 %i.aeg, %i.aei
  %i.aek = icmp samesign ugt i8 %i.adz, -33
  br i1 %i.aek, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ael = zext nneg i8 %i.adz to i32
  br label %bb.eq

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aem = icmp ne ptr %i.aee, %i.adw
  tail call void @llvm.assume(i1 %i.aem)
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 3 ; 3 uses
  %i.aeo = load i8, ptr %i.aee, align 1, !noalias !2752, !noundef !20
  %i.aep = shl nuw nsw i32 %i.aei, 6
  %i.aeq = and i8 %i.aeo, 63
  %i.aer = zext nneg i8 %i.aeq to i32
  %i.aes = or disjoint i32 %i.aep, %i.aer         ; 2 uses
  %i.aet = shl nuw nsw i32 %i.aec, 12
  %i.aeu = or disjoint i32 %i.aes, %i.aet
  %i.aev = icmp samesign ugt i8 %i.adz, -17
  br i1 %i.aev, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aew = icmp ne ptr %i.aen, %i.adw
  tail call void @llvm.assume(i1 %i.aew)
  %i.aex = getelementptr inbounds nuw i8, ptr %i.adx, i64 4
  %i.aey = load i8, ptr %i.aen, align 1, !noalias !2752, !noundef !20
  %i.aez = shl nuw nsw i32 %i.aec, 18
  %i.afa = and i32 %i.aez, 1835008
  %i.afb = shl nuw nsw i32 %i.aes, 6
  %i.afc = and i8 %i.aey, 63
  %i.afd = zext nneg i8 %i.afc to i32
  %i.afe = or disjoint i32 %i.afb, %i.afd
  %i.aff = or disjoint i32 %i.afe, %i.afa
  br label %bb.eq

bb.eq:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ep, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afg = phi ptr [ %i.aen, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aex, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aee, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ady, %bb.ep ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aeu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aff, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aej, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ael, %bb.ep ] ; 7 uses
  switch i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.er [
    i32 32, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 13, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 12, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 11, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 10, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 9, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.er:                                            ; preds = %bb.eq
  %i.afh = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 133
  br i1 %i.afh, label %.lr.ph.i.i.i.i.i.i.preheader.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.afi = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  switch i32 %i.afi, label %.lr.ph.i.i.i.i.i.i.preheader.i.i [
    i32 0, label %bb.ev
    i32 22, label %bb.et
    i32 32, label %bb.ew
    i32 48, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %i.afj = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5760
  %i.afk = zext i1 %i.afj to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.eu:                                            ; preds = %bb.es
  %i.afl = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 12288
  %i.afm = zext i1 %i.afl to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ev:                                            ; preds = %bb.es
  %i.afn = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.afo = zext nneg i32 %i.afn to i64
  %i.afp = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !noalias !2753, !noundef !20
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ew:                                            ; preds = %bb.es
  %i.afr = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.afs = zext nneg i32 %i.afr to i64
  %i.aft = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.afs
  %i.afu = load i8, ptr %i.aft, align 1, !noalias !2753, !noundef !20
  %i.afv = lshr i8 %i.afu, 1
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.et
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.afm, %bb.eu ], [ %i.afq, %bb.ev ], [ %i.afk, %bb.et ], [ %i.afv, %bb.ew ]
  %i.afw = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.afw, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i

.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eq, %bb.eq, %bb.eq, %bb.eq, %bb.eq, %bb.eq
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afg, %i.adw
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.afx = icmp eq ptr %i.ads, %i.adn
  br i1 %i.afx, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc126.i
  %.not.i.i.i105.i = icmp eq ptr %.sroa.05.0.i.i64, null
  br i1 %.not.i.i.i105.i, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1X_5Lexer10blocky_raw0ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvNtB8_3map8map_foldRB1L_jjNCB1R_s_0NvYjNtNtBc_3cmp3Ord3minE0EB1Z_.exit.i.i.i.thread.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i
  %.val.i.i.pre.i.i = load ptr, ptr %i.ado, align 8, !noalias !2754 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.adn, i64 -8
  %.val3.i.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !2754 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.val.i.i.pre.i.i, i64 %.val3.i.i.pre.i.i
  %.not.i18.i.i.i.i.i.i266.i.i = icmp samesign eq i64 %.val3.i.i.pre.i.i, 0
  br i1 %.not.i18.i.i.i.i.i.i266.i.i, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1X_5Lexer10blocky_raw0ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvNtB8_3map8map_foldRB1L_jjNCB1R_s_0NvYjNtNtBc_3cmp3Ord3minE0EB1Z_.exit.i.i.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i:                 ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.es, %bb.er, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i
  %i.afz = phi ptr [ %i.afy, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %i.adw, %bb.er ], [ %i.adw, %bb.es ], [ %i.adw, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0153273.i.i = phi ptr [ null, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %.sroa.05.0.i.i64, %bb.er ], [ %.sroa.05.0.i.i64, %bb.es ], [ %.sroa.05.0.i.i64, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i154268.i.i = phi ptr [ null, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %i.ads, %bb.er ], [ %i.ads, %bb.es ], [ %i.ads, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.val.i.i267.i.i = phi ptr [ %.val.i.i.pre.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %i.adt, %bb.er ], [ %i.adt, %bb.es ], [ %i.adt, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i.i
  %.sroa.01.019.i.i.i.i.i.i.i.i = phi i64 [ %i.aia, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.aga = phi ptr [ %i.ahj, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i267.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 1 ; 3 uses
  %i.agc = load i8, ptr %i.aga, align 1, !noalias !2755, !noundef !20 ; 5 uses
  %i.agd = icmp sgt i8 %i.agc, -1
  br i1 %i.agd, label %bb.ex, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.age = and i8 %i.agc, 31
  %i.agf = zext nneg i8 %i.age to i32             ; 3 uses
  %i.agg = icmp ne ptr %i.agb, %i.afz
  tail call void @llvm.assume(i1 %i.agg)
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aga, i64 2 ; 3 uses
  %i.agi = load i8, ptr %i.agb, align 1, !noalias !2755, !noundef !20
  %i.agj = shl nuw nsw i32 %i.agf, 6
  %i.agk = and i8 %i.agi, 63
  %i.agl = zext nneg i8 %i.agk to i32             ; 2 uses
  %i.agm = or disjoint i32 %i.agj, %i.agl
  %i.agn = icmp samesign ugt i8 %i.agc, -33
  br i1 %i.agn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i, label %bb.ey

bb.ex:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ago = zext nneg i8 %i.agc to i32
  br label %bb.ey

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i
  %i.agp = icmp ne ptr %i.agh, %i.afz
  tail call void @llvm.assume(i1 %i.agp)
  %i.agq = getelementptr inbounds nuw i8, ptr %i.aga, i64 3 ; 3 uses
  %i.agr = load i8, ptr %i.agh, align 1, !noalias !2755, !noundef !20
  %i.ags = shl nuw nsw i32 %i.agl, 6
  %i.agt = and i8 %i.agr, 63
  %i.agu = zext nneg i8 %i.agt to i32
  %i.agv = or disjoint i32 %i.ags, %i.agu         ; 2 uses
  %i.agw = shl nuw nsw i32 %i.agf, 12
  %i.agx = or disjoint i32 %i.agv, %i.agw
  %i.agy = icmp samesign ugt i8 %i.agc, -17
  br i1 %i.agy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i, label %bb.ey

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i
  %i.agz = icmp ne ptr %i.agq, %i.afz
  tail call void @llvm.assume(i1 %i.agz)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.aga, i64 4
  %i.ahb = load i8, ptr %i.agq, align 1, !noalias !2755, !noundef !20
  %i.ahc = shl nuw nsw i32 %i.agf, 18
  %i.ahd = and i32 %i.ahc, 1835008
  %i.ahe = shl nuw nsw i32 %i.agv, 6
  %i.ahf = and i8 %i.ahb, 63
  %i.ahg = zext nneg i8 %i.ahf to i32
  %i.ahh = or disjoint i32 %i.ahe, %i.ahg
  %i.ahi = or disjoint i32 %i.ahh, %i.ahd
  br label %bb.ey

bb.ey:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i, %bb.ex, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i
  %i.ahj = phi ptr [ %i.agq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.aha, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.agh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i ], [ %i.agb, %bb.ex ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.agx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.ahi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.agm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i ], [ %i.ago, %bb.ex ] ; 7 uses
  switch i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, label %bb.ez [
    i32 32, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 13, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 12, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 11, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 10, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 9, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
  ]

bb.ez:                                            ; preds = %bb.ey
  %i.ahk = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 133
  br i1 %i.ahk, label %.loopexit.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ahl = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 8
  switch i32 %i.ahl, label %.loopexit.i.i.i [
    i32 0, label %bb.fd
    i32 22, label %bb.fb
    i32 32, label %bb.fe
    i32 48, label %bb.fc
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.ahm = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 5760
  %i.ahn = zext i1 %i.ahm to i8
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.aho = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 12288
  %i.ahp = zext i1 %i.aho to i8
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %bb.fa
  %i.ahq = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 255
  %i.ahr = zext nneg i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ahr
  %i.aht = load i8, ptr %i.ahs, align 1, !noalias !2756, !noundef !20
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fa
  %i.ahu = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 255
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !noalias !2756, !noundef !20
  %i.ahy = lshr i8 %i.ahx, 1
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.fb
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ahp, %bb.fc ], [ %i.aht, %bb.fd ], [ %i.ahn, %bb.fb ], [ %i.ahy, %bb.fe ]
  %i.ahz = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ahz, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i, %bb.ey, %bb.ey, %bb.ey, %bb.ey, %bb.ey, %bb.ey
  %i.aia = add i64 %.sroa.01.019.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahj, %i.afz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i, %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i, %bb.fa, %bb.ez
  %.sroa.3.0.i.ph.i.i106.i = phi i64 [ %.sroa.01.019.i.i.i.i.i.i.i.i, %bb.ez ], [ %i.aia, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.01.019.i.i.i.i.i.i.i.i, %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.019.i.i.i.i.i.i.i.i, %bb.fa ] ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %.sroa.5.0.copyload.i154268.i.i, null
  %i.aib = icmp eq ptr %.sroa.5.0.copyload.i154268.i.i, %i.adn
  %or.cond.i66 = or i1 %.not.i.i.i.i.i65, %i.aib
  br i1 %or.cond.i66, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1X_5Lexer10blocky_raw0ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvNtB8_3map8map_foldRB1L_jjNCB1R_s_0NvYjNtNtBc_3cmp3Ord3minE0EB1Z_.exit.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %.loopexit.i.i.i
  %i.aic = ptrtoint ptr %i.adn to i64
  %i.aid = ptrtoint ptr %.sroa.5.0.copyload.i154268.i.i to i64
  %i.aie = sub nuw i64 %i.aic, %i.aid
  %i.aif = lshr exact i64 %i.aie, 4
  br label %bb.fg

bb.fg:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i, %bb.ff
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ff ], [ %i.amn, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.ph.i.i106.i, %bb.ff ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload.i154268.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  %i.aih = load ptr, ptr %i.aig, align 8, !alias.scope !2757, !noalias !2758, !nonnull !20, !noundef !20 ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  %i.aij = load i64, ptr %i.aii, align 8, !alias.scope !2757, !noalias !2758, !noundef !20 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 %i.aij ; 8 uses
  %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.aij, 0
  br i1 %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i6.i.i.i

.lr.ph.i.i.i.i.i.i.i.i6.i.i.i:                    ; preds = %bb.fg, %.backedge.i.i.i.i.i.i.i.i.i.i.i
  %i.ail = phi ptr [ %i.aju, %.backedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aih, %bb.fg ] ; 5 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 1 ; 3 uses
  %i.ain = load i8, ptr %i.ail, align 1, !noalias !2759, !noundef !20 ; 5 uses
  %i.aio = icmp sgt i8 %i.ain, -1
  br i1 %i.aio, label %bb.fh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i6.i.i.i
  %i.aip = and i8 %i.ain, 31
  %i.aiq = zext nneg i8 %i.aip to i32             ; 3 uses
  %i.air = icmp ne ptr %i.aim, %i.aik
  tail call void @llvm.assume(i1 %i.air)
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ail, i64 2 ; 3 uses
  %i.ait = load i8, ptr %i.aim, align 1, !noalias !2759, !noundef !20
  %i.aiu = shl nuw nsw i32 %i.aiq, 6
  %i.aiv = and i8 %i.ait, 63
  %i.aiw = zext nneg i8 %i.aiv to i32             ; 2 uses
  %i.aix = or disjoint i32 %i.aiu, %i.aiw
  %i.aiy = icmp samesign ugt i8 %i.ain, -33
  br i1 %i.aiy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fi

bb.fh:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i6.i.i.i
  %i.aiz = zext nneg i8 %i.ain to i32
  br label %bb.fi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aja = icmp ne ptr %i.ais, %i.aik
  tail call void @llvm.assume(i1 %i.aja)
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ail, i64 3 ; 3 uses
  %i.ajc = load i8, ptr %i.ais, align 1, !noalias !2759, !noundef !20
  %i.ajd = shl nuw nsw i32 %i.aiw, 6
  %i.aje = and i8 %i.ajc, 63
  %i.ajf = zext nneg i8 %i.aje to i32
  %i.ajg = or disjoint i32 %i.ajd, %i.ajf         ; 2 uses
  %i.ajh = shl nuw nsw i32 %i.aiq, 12
  %i.aji = or disjoint i32 %i.ajg, %i.ajh
  %i.ajj = icmp samesign ugt i8 %i.ain, -17
  br i1 %i.ajj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fi

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ajk = icmp ne ptr %i.ajb, %i.aik
  tail call void @llvm.assume(i1 %i.ajk)
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ail, i64 4
  %i.ajm = load i8, ptr %i.ajb, align 1, !noalias !2759, !noundef !20
  %i.ajn = shl nuw nsw i32 %i.aiq, 18
  %i.ajo = and i32 %i.ajn, 1835008
  %i.ajp = shl nuw nsw i32 %i.ajg, 6
  %i.ajq = and i8 %i.ajm, 63
  %i.ajr = zext nneg i8 %i.ajq to i32
end_hunk_0
