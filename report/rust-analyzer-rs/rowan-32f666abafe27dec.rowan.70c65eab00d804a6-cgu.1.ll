Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rowan-32f666abafe27dec.rowan.70c65eab00d804a6-cgu.1?download=true
inline.NumInlined: 304
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB2_10SyntaxText13contains_char:bb.a
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.m, align 4, !alias.scope !133, !noalias !135
  %i.af = icmp samesign ult i32 %1, 128
  %i.ag = icmp samesign ult i32 %1, 2048
  %i.ah = trunc i32 %1 to i8                      ; 3 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128              ; 4 uses
  %i.ak = lshr i32 %1, 6
  %i.al = trunc i32 %i.ak to i8                   ; 2 uses
  %i.am = and i8 %i.al, 63
  %i.an = or disjoint i8 %i.am, -128              ; 2 uses
  %i.ao = lshr i32 %1, 12
  %i.ap = trunc i32 %i.ao to i8                   ; 2 uses
  %i.aq = and i8 %i.ap, 63
  %i.ar = or disjoint i8 %i.aq, -128
  %i.as = lshr i32 %1, 18
  %i.at = trunc nuw nsw i32 %i.as to i8
  %i.au = or disjoint i8 %i.at, -16
  %i.av = icmp samesign ult i32 %1, 65536
  %i.aw = or disjoint i8 %i.ap, -32
  %i.ax = or disjoint i8 %i.al, -64               ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.noexc10.i, %.lr.ph.i.i.i.i
  %i.ay = phi i64 [ %i.o, %.lr.ph.i.i.i.i ], [ %i.ok, %.noexc10.i ]
  %.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !134 ; 6 uses
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.d, label %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0B9_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !136, !noundef !4
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !noalias !136
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEEBG_.exit.sink.split.i.i.i.i.i.i.invoke.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtBa_6result6ResultuuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCIB2_B22_B2N_uB3d_NCNvMNtB1j_11syntax_textNtB4G_10SyntaxText18tokens_with_ranges0NCIB2_B2N_TB2N_NtNtCsuAhG64lL82_9text_size5range9TextRangeEuB3d_NCB4D_s_0NCINvB4F_15try_fold_chunksuNCINvB4F_18try_for_each_chunkNCNvB4F_13contains_char0uE0uE0E0E0E0B1j_.exit.thread.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEEBG_.exit.sink.split.i.i.i.i.i.i.invoke.i: ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i) #16
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtBa_6result6ResultuuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCIB2_B22_B2N_uB3d_NCNvMNtB1j_11syntax_textNtB4G_10SyntaxText18tokens_with_ranges0NCIB2_B2N_TB2N_NtNtCsuAhG64lL82_9text_size5range9TextRangeEuB3d_NCB4D_s_0NCINvB4F_15try_fold_chunksuNCINvB4F_18try_for_each_chunkNCNvB4F_13contains_char0uE0uE0E0E0E0B1j_.exit.thread.i.i.i.i unwind label %.loopexit.i, !noalias !128

_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0B9_.exit.i.i.i.i.i: ; preds = %bb.c
  %.sroa.52.0.copyload.i.i.i.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i.i.i, align 8, !noalias !134
  switch i64 %.sroa.52.0.copyload.i.i.i.i, label %_RNCNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB4_10SyntaxText18tokens_with_ranges0B6_.exit.i.i.i.i.i.i [
    i64 2, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtBa_6result6ResultuuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCIB2_B22_B2N_uB3d_NCNvMNtB1j_11syntax_textNtB4G_10SyntaxText18tokens_with_ranges0NCIB2_B2N_TB2N_NtNtCsuAhG64lL82_9text_size5range9TextRangeEuB3d_NCB4D_s_0NCINvB4F_15try_fold_chunksuNCINvB4F_18try_for_each_chunkNCNvB4F_13contains_char0uE0uE0E0E0E0B1j_.exit.thread.i.i.i.i
    i64 0, label %bb.e
  ]

bb.e:                                             ; preds = %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0B9_.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i.i.i, i64 48 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !noalias !137, !noundef !4
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !noalias !137
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtBG_6cursor10SyntaxNodeNtB1u_11SyntaxTokenEEBG_.exit.sink.split.i.i.i.i.i.i.invoke.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtBa_6result6ResultuuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCIB2_B22_B2N_uB3d_NCNvMNtB1j_11syntax_textNtB4G_10SyntaxText18tokens_with_ranges0NCIB2_B2N_TB2N_NtNtCsuAhG64lL82_9text_size5range9TextRangeEuB3d_NCB4D_s_0NCINvB4F_15try_fold_chunksuNCINvB4F_18try_for_each_chunkNCNvB4F_13contains_char0uE0uE0E0E0E0B1j_.exit.thread.i.i.i.i

_RNCNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB4_10SyntaxText18tokens_with_ranges0B6_.exit.i.i.i.i.i.i: ; preds = %_RNCNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB7_10SyntaxNode23descendants_with_tokens0B9_.exit.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.6.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtBa_6result6ResultuuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCIB2_B22_B2N_uB3d_NCNvMNtB1j_11syntax_textNtB4G_10SyntaxText18tokens_with_ranges0NCIB2_B2N_TB2N_NtNtCsuAhG64lL82_9text_size5range9TextRangeEuB3d_NCB4D_s_0NCINvB4F_15try_fold_chunksuNCINvB4F_18try_for_each_chunkNCNvB4F_13contains_char0uE0uE0E0E0E0B1j_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB4_10SyntaxText18tokens_with_ranges0B6_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !138
  invoke fastcc void @_RNCNvMNtCs9GitHPCrz2Q_5rowan11syntax_textNtB4_10SyntaxText18tokens_with_rangess_0B6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, i32 %.val.i.i.i.i.i.i.i, i32 %.val2.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.6.0.copyload.i.i.i.i) #20
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !128

.noexc5.i:                                        ; preds = %bb.f
  %i.bi = load ptr, ptr %i.d, align 8, !noalias !138, !noundef !4 ; 12 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types9WalkEventINtB1h_11NodeOrTokenNtNtB1j_6cursor10SyntaxNodeNtB2o_11SyntaxTokenEEB22_uINtNtBa_6result6ResultuuENCNvMs4_B2o_B2m_23descendants_with_tokens0NCIB2_B22_B2N_uB3d_NCNvMNtB1j_11syntax_textNtB4G_10SyntaxText18tokens_with_ranges0NCIB2_B2N_TB2N_NtNtCsuAhG64lL82_9text_size5range9TextRangeEuB3d_NCB4D_s_0NCINvB4F_15try_fold_chunksuNCINvB4F_18try_for_each_chunkNCNvB4F_13contains_char0uE0uE0E0E0E0B1j_.exit.thread.i.i.i.sink.split.i, label %bb.g

bb.g:                                             ; preds = %.noexc5.i
  %.sroa.42.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !138 ; 4 uses
  %.sroa.53.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !138 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !range !8, !noalias !139, !noundef !4
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !139, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !139, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i, i64 16
  br label %bb.j

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.ab
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i:      ; preds = %bb.z, %bb.x, %bb.w, %bb.v
  %lpad.loopexit1.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.i.i.i.i: ; preds = %bb.bk, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ad
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.i.i.i: ; preds = %.split32.us.i11.i.i.i.i.i.invoke.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit1.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !139, !noundef !4
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !noalias !139
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %.body.i

bb.i:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bi) #16
          to label %.body.i unwind label %bb.bm, !noalias !139

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.h ], [ 0, %bb.g ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 6 uses
  %i.bt = zext i32 %.sroa.42.0.copyload.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.bu = zext i32 %.sroa.53.0.copyload.i.i.i.i.i.i.i to i64 ; 7 uses
  %i.bv = icmp ugt i32 %.sroa.42.0.copyload.i.i.i.i.i.i.i, %.sroa.53.0.copyload.i.i.i.i.i.i.i
  %i.bw = icmp ult i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i, %i.bu
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.bv, %i.bw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i, %i.bt
  br i1 %i.bx, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = icmp eq i32 %.sroa.42.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.bz = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i, %i.bu
  br i1 %i.bz, label %bb.o, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 %i.bt
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !140, !noalias !141, !noundef !4
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %bb.m, label %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !10

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 %i.bu
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !140, !noalias !141, !noundef !4
  %i.cf = icmp sgt i8 %i.ce, -65
  br i1 %i.cf, label %bb.o, label %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i, !prof !11

bb.o:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i, %bb.m, %bb.k
  %i.cg = sub nuw nsw i64 %i.bu, %i.bt            ; 17 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 %i.bt ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  br i1 %i.af, label %bb.bj, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !145
  store i32 0, ptr %i.c, align 4, !noalias !145
  br i1 %i.ag, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.av, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 %i.aj, ptr %i.p, align 1, !alias.scope !146, !noalias !145
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.ci = phi i8 [ %i.au, %bb.r ], [ %i.aw, %bb.q ] ; 6 uses
  %.sink33.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ar, %bb.r ], [ %i.an, %bb.q ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.an, %bb.r ], [ %i.aj, %bb.q ]
  %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 4, %bb.r ], [ 3, %bb.q ] ; 11 uses
  store i8 %i.ci, ptr %i.c, align 4, !alias.scope !146, !noalias !145
  store i8 %.sink33.i.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 1, !alias.scope !146, !noalias !145
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.r, align 2, !alias.scope !146, !noalias !145
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.cj = icmp samesign ult i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, %i.cg
  br i1 %i.cj, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  store i8 %i.ax, ptr %i.c, align 4, !alias.scope !146, !noalias !145
  store i8 %i.aj, ptr %i.q, align 1, !alias.scope !146, !noalias !145
  %i.ck = icmp samesign ugt i64 %i.cg, 2
  br i1 %i.ck, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.05.i4.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cl = icmp eq i64 %.sroa.0.05.i4.i.i.i.i.i.i.i.i.i.i.i, %i.cg
  br i1 %i.cl, label %bb.bi, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.cm = add nsw i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cn = add nsw i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !151, !noalias !152, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cp, %i.ci
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %2, label %bb.u

2:                                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1: ; preds = %2
  %i.cq = add nsw i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !151, !noalias !152, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.cs, %i.ci
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %3, label %bb.u

3:                                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2: ; preds = %3
  %i.ct = add nsw i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, -3 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !151, !noalias !152, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i8 %i.cv, %i.ci
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3: ; preds = %bb.t
  %i.cw = add nsw i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !151, !noalias !152, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i8 %i.cy, %i.ci
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa157 = phi i64 [ %i.cn, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cq, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.ct, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.cw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 ]
  %.lcssa = phi i8 [ %i.cp, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cs, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.cv, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.cy, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 ]
  %i.cz = add nuw nsw i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, 15
  %i.da = icmp samesign ult i64 %i.cg, %i.cz
  br i1 %i.da, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.db = icmp samesign ult i64 %i.cg, 17
  br i1 %i.db, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %.sroa.0.05.i36.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 4 uses
  %bcmp.i.i.us22.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ch, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i36.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !153, !noalias !154
  %i.dc = icmp eq i32 %bcmp.i.i.us22.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dc, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = add nsw i64 %i.cg, -1                   ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i146 = icmp ugt i64 %.sroa.0.05.i36.i.i.i.i.i.i.i.i.i.i.i, %i.dd
  br i1 %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i146, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = phi i64 [ %i.dh, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dd, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i147 = phi ptr [ %i.df, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ch, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i147, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.df, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i36.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !153, !noalias !154
  %i.dg = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dg, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9GitHPCrz2Q_5rowan.exit.backedge.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = add nsw i64 %i.de, -1                   ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.0.05.i36.i.i.i.i.i.i.i.i.i.i.i, %i.dh
  br i1 %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %.sink84.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ax, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.u ]
  %i.di = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.u ] ; 2 uses
  %.sroa.0.05.i38.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.dj = phi i8 [ %i.aj, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa, %bb.u ]
  %storemerge9194.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa157, %bb.u ] ; 6 uses
  %i.dk = insertelement <16 x i8> poison, i8 %.sink84.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.dl = shufflevector <16 x i8> %i.dk, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.dm = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  store ptr %i.ch, ptr %i.a, align 8, !noalias !155
  store i64 %i.cg, ptr %i.ac, align 8, !noalias !155
  store ptr %i.q, ptr %i.ad, align 8, !noalias !155
  store i64 %i.di, ptr %i.ae, align 8, !noalias !155
  %i.do = add nuw nsw i64 %.sroa.0.05.i38.i.i.i.i.i.i.i.i.i.i.i, 63 ; 2 uses
  %.not.i4.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.do, %i.cg
  br i1 %.not.i4.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i7.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.y, %.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.014.2.3.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %bb.y ] ; 2 uses
  %i.dp = add nuw nsw i64 %.sroa.0.05.i38.i.i.i.i.i.i.i.i.i.i.i, 15 ; 2 uses
  %i.dq = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dp
  %i.dr = icmp uge i64 %i.dq, %i.cg
  %i.ds = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond3104.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond3104.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i6.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph106.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i7.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y
  %.sroa.06.0102.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fk, %bb.y ], [ 0, %.thread92.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.06.0102.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dt, align 1, !alias.scope !156, !noalias !157
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %storemerge9194.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.du, align 1, !alias.scope !156, !noalias !157
  %i.dv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dl
  %i.dw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dn
  %i.dx = and <16 x i1> %i.dv, %i.dw
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dz, align 1, !alias.scope !156, !noalias !157
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %storemerge9194.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.copyload.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ea, align 1, !alias.scope !156, !noalias !157
  %i.eb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dl
  %i.ec = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dn
  %i.ed = and <16 x i1> %i.eb, %i.ec
  %i.ee = bitcast <16 x i1> %i.ed to i16          ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ef, align 1, !alias.scope !156, !noalias !157
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %storemerge9194.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.copyload.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.eg, align 1, !alias.scope !156, !noalias !157
  %i.eh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dl
  %i.ei = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dn
  %i.ej = and <16 x i1> %i.eh, %i.ei
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.el, align 1, !alias.scope !156, !noalias !157
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %storemerge9194.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.copyload.i.3.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.em, align 1, !alias.scope !156, !noalias !157
  %i.en = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dl
  %i.eo = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dn
  %i.ep = and <16 x i1> %i.en, %i.eo
  %i.eq = bitcast <16 x i1> %i.ep to i16          ; 2 uses
  %i.er = icmp eq i16 %i.dy, 0
  br i1 %i.er, label %.preheader95.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z

.preheader95.1.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc9.i.i.i.i.i.i.i.i, %.lr.ph.i7.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph.i7.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fp, %.noexc9.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.es = icmp eq i16 %i.ee, 0
  br i1 %i.es, label %.preheader95.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.preheader95.1.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = or disjoint i64 %.sroa.06.0102.i.i.i.i.i.i.i.i.i.i.i.i.i, 16
  %i.eu = trunc nuw i8 %.sroa.014.2.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.ev = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9GitHPCrz2Q_5rowan(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.et, i16 noundef %i.ee, i1 noundef zeroext %i.eu) #20
          to label %.noexc6.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, !noalias !139

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.v
  %i.ew = zext i1 %i.ev to i8
  %i.ex = or i8 %.sroa.014.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ew
  br label %.preheader95.2.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader95.2.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc6.i.i.i.i.i.i.i.i, %.preheader95.1.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader95.1.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ex, %.noexc6.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ey = icmp eq i16 %i.ek, 0
  br i1 %i.ey, label %.preheader95.3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.preheader95.2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = or disjoint i64 %.sroa.06.0102.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.fa = trunc nuw i8 %.sroa.014.2.1.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.fb = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9GitHPCrz2Q_5rowan(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ez, i16 noundef %i.ek, i1 noundef zeroext %i.fa) #20
          to label %.noexc7.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, !noalias !139

.noexc7.i.i.i.i.i.i.i.i:                          ; preds = %bb.w
  %i.fc = zext i1 %i.fb to i8
  %i.fd = or i8 %.sroa.014.2.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fc
  br label %.preheader95.3.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader95.3.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc7.i.i.i.i.i.i.i.i, %.preheader95.2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader95.2.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fd, %.noexc7.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fe = icmp eq i16 %i.eq, 0
  br i1 %i.fe, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader95.3.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = or disjoint i64 %.sroa.06.0102.i.i.i.i.i.i.i.i.i.i.i.i.i, 48
  %i.fg = trunc nuw i8 %.sroa.014.2.2.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.fh = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9GitHPCrz2Q_5rowan(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ff, i16 noundef %i.eq, i1 noundef zeroext %i.fg) #20
          to label %.noexc8.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, !noalias !139

.noexc8.i.i.i.i.i.i.i.i:                          ; preds = %bb.x
  %i.fi = zext i1 %i.fh to i8
  %i.fj = or i8 %.sroa.014.2.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fi
  br label %bb.y

bb.y:                                             ; preds = %.noexc8.i.i.i.i.i.i.i.i, %.preheader95.3.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.2.3.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader95.3.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fj, %.noexc8.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fk = add nuw nsw i64 %.sroa.06.0102.i.i.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.fl = add nuw nsw i64 %i.fk, %i.do
  %i.fm = icmp samesign uge i64 %i.fl, %i.cg
  %i.fn = trunc nuw i8 %.sroa.014.2.3.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i7.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i7.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fo = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9GitHPCrz2Q_5rowan(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i.i.i.i.i.i.i.i.i.i.i.i.i, i16 noundef %i.dy, i1 noundef zeroext false) #20
          to label %.noexc9.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i.i, !noalias !139

.noexc9.i.i.i.i.i.i.i.i:                          ; preds = %bb.z
  %i.fp = zext i1 %i.fo to i8
  br label %.preheader95.1.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i6.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.aa, %.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.014.4.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ds, %.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gj, %bb.aa ]
  %i.fq = sub nsw i64 %i.cg, %i.di
  %i.fr = add nsw i64 %i.fq, -16                  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fr ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fs, align 1, !alias.scope !156, !noalias !158
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %storemerge9194.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.copyload.i58.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ft, align 1, !alias.scope !156, !noalias !158
  %i.fu = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dl
  %i.fv = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dn
  %i.fw = and <16 x i1> %i.fu, %i.fv
  %i.fx = bitcast <16 x i1> %i.fw to i16          ; 2 uses
  %i.fy = icmp eq i16 %i.fx, 0
  br i1 %i.fy, label %bb.ac, label %bb.ad

.lr.ph106.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa
  %.sroa.06.1105.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gg, %bb.aa ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i5.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.06.1105.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.fz, align 1, !alias.scope !156, !noalias !159
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %storemerge9194.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.copyload.i60.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ga, align 1, !alias.scope !156, !noalias !159
  %i.gb = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dl
  %i.gc = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dn
  %i.gd = and <16 x i1> %i.gb, %i.gc
  %i.ge = bitcast <16 x i1> %i.gd to i16          ; 2 uses
  %i.gf = icmp eq i16 %i.ge, 0
  br i1 %i.gf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc10.i.i.i.i.i.i.i.i, %.lr.ph106.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.4.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph106.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gl, %.noexc10.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gg = add nuw nsw i64 %.sroa.06.1105.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.gh = add i64 %i.gg, %i.dp
  %i.gi = icmp samesign uge i64 %i.gh, %i.cg
  %i.gj = trunc nuw i8 %.sroa.014.4.i.i.i.i.i.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.gi, %i.gj
  br i1 %or.cond3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i6.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph106.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph106.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9GitHPCrz2Q_5rowan(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i.i.i.i.i.i.i.i.i.i.i.i.i, i16 noundef %i.ge, i1 noundef zeroext false) #20
          to label %.noexc10.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !139

.noexc10.i.i.i.i.i.i.i.i:                         ; preds = %bb.ab
  %i.gl = zext i1 %i.gk to i8
  br label %bb.aa

bb.ac:                                            ; preds = %.noexc11.i.i.i.i.i.i.i.i, %._crit_edge.i6.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.014.5.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i6.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.go, %.noexc11.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i6.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gm = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0Cs9GitHPCrz2Q_5rowan(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.fr, i16 noundef %i.fx, i1 noundef zeroext %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i) #20
          to label %.noexc11.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.i.i.i.i, !noalias !139

.noexc11.i.i.i.i.i.i.i.i:                         ; preds = %bb.ad
  %i.gn = zext i1 %i.gm to i8
  %i.go = or i8 %.sroa.014.3.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gn
  br label %bb.ac

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9GitHPCrz2Q_5rowan.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %bb.t, %3, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !160
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef range(i64 0, 4294967296) %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.i.i.i.i, !noalias !139

.noexc12.i.i.i.i.i.i.i.i:                         ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.gp = load i64, ptr %i.b, align 8, !range !8, !alias.scope !161, !noalias !162, !noundef !4
  %i.gq = trunc nuw i64 %i.gp to i1
  br i1 %i.gq, label %bb.an, label %.preheader.i8.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i8.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc12.i.i.i.i.i.i.i.i
  %i.gr = load i8, ptr %i.t, align 2, !range !6, !alias.scope !163, !noalias !164, !noundef !4
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i9.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i9.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.preheader.i8.i.i.i.i.i.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !161, !noalias !162 ; 12 uses
  %i.gt = load ptr, ptr %i.v, align 8, !alias.scope !163, !noalias !164, !nonnull !4, !noundef !4 ; 8 uses
  %i.gu = load i64, ptr %i.w, align 8, !alias.scope !163, !noalias !164, !noundef !4 ; 20 uses
  %.promoted52.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.u, align 8, !alias.scope !163, !noalias !164 ; 2 uses
  %i.gv = trunc nuw i8 %.promoted52.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.gw = icmp eq i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gw, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i9.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gu
  br i1 %.not.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.ae
  %i.gx = icmp eq i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gu
  br i1 %i.gx, label %bb.ag, label %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !165, !noalias !166, !noundef !4
  %i.ha = icmp sgt i8 %i.gz, -65
  br i1 %i.ha, label %bb.ag, label %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af, %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i9.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.hc = icmp samesign eq i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gu
  br i1 %i.hc, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hd = load i8, ptr %i.hb, align 1, !noalias !167, !noundef !4 ; 5 uses
  %i.he = icmp sgt i8 %i.hd, -1
  br i1 %i.he, label %bb.ai, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hg = and i8 %i.hd, 31
  %i.hh = zext nneg i8 %i.hg to i32               ; 3 uses
  %i.hi = add nuw nsw i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.hj = icmp samesign ne i64 %i.hi, %i.gu
  call void @llvm.assume(i1 %i.hj)
  %i.hk = load i8, ptr %i.hf, align 1, !noalias !167, !noundef !4
  %i.hl = shl nuw nsw i32 %i.hh, 6
  %i.hm = and i8 %i.hk, 63
  %i.hn = zext nneg i8 %i.hm to i32               ; 2 uses
  %i.ho = or disjoint i32 %i.hl, %i.hn
  %i.hp = icmp samesign ugt i8 %i.hd, -33
  br i1 %i.hp, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.hr = add nuw nsw i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.hs = icmp samesign ne i64 %i.hr, %i.gu
  call void @llvm.assume(i1 %i.hs)
  %i.ht = load i8, ptr %i.hq, align 1, !noalias !167, !noundef !4
  %i.hu = shl nuw nsw i32 %i.hn, 6
  %i.hv = and i8 %i.ht, 63
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = or disjoint i32 %i.hu, %i.hw            ; 2 uses
  %i.hy = shl nuw nsw i32 %i.hh, 12
  %i.hz = or disjoint i32 %i.hx, %i.hy
  %i.ia = icmp samesign ugt i8 %i.hd, -17
  br i1 %i.ia, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit16.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit16.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hb, i64 3
  %i.ic = add nuw nsw i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.id = icmp samesign ne i64 %i.ic, %i.gu
  call void @llvm.assume(i1 %i.id)
  %i.ie = load i8, ptr %i.ib, align 1, !noalias !167, !noundef !4
  %i.if = shl nuw nsw i32 %i.hh, 18
  %i.ig = and i32 %i.if, 1835008
  %i.ih = shl nuw nsw i32 %i.hx, 6
  %i.ii = and i8 %i.ie, 63
  %i.ij = zext nneg i8 %i.ii to i32
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = or disjoint i32 %i.ik, %i.ig
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.im = zext nneg i8 %i.hd to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit16.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.il, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit16.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ho, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.im, %bb.ai ] ; 4 uses
  %i.in = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.in)
  br i1 %i.gv, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.io = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, 128
  br i1 %i.io, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ip = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, 2048
  br i1 %i.ip, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.iq, i64 3, i64 4
  br label %bb.ao

bb.an:                                            ; preds = %.noexc12.i.i.i.i.i.i.i.i
  %i.ir = load i64, ptr %i.x, align 8, !alias.scope !161, !noalias !162, !noundef !4 ; 2 uses
  %i.is = icmp eq i64 %i.ir, -1
  %i.it = load ptr, ptr %i.v, align 8, !alias.scope !161, !noalias !162, !nonnull !4, !noundef !4 ; 8 uses
  %i.iu = load i64, ptr %i.w, align 8, !alias.scope !161, !noalias !162, !noundef !4 ; 10 uses
  %i.iv = load ptr, ptr %i.y, align 8, !alias.scope !161, !noalias !162, !nonnull !4, !noundef !4 ; 5 uses
  %i.iw = load i64, ptr %i.z, align 8, !alias.scope !161, !noalias !162, !noundef !4 ; 13 uses
  %i.ix = add nsw i64 %i.iw, -1                   ; 5 uses
  br i1 %i.is, label %bb.bb, label %bb.at

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.sroa.01.0.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.al ], [ %..i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am ], [ 1, %bb.ak ]
  %i.iy = add i64 %.sroa.01.0.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.iy, %i.gu
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ap
  %i.ja = icmp eq i64 %i.iy, %i.gu
  br i1 %i.ja, label %bb.ar, label %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.iy
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !165, !noalias !169, !noundef !4
  %i.jd = icmp sgt i8 %i.jc, -65
  br i1 %i.jd, label %bb.ar, label %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ao
  %i.je = icmp samesign eq i64 %i.iy, %i.gu
  br i1 %i.je, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.iy
  %i.jg = load i8, ptr %i.jf, align 1, !noalias !170, !noundef !4 ; 3 uses
  %i.jh = icmp sgt i8 %i.jg, -1
  br i1 %i.jh, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.ji = add nuw nsw i64 %i.iy, 1
  %i.jj = icmp samesign ne i64 %i.ji, %i.gu
  call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp samesign ugt i8 %i.jg, -33
  br i1 %i.jk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = add nuw nsw i64 %i.iy, 2
  %i.jm = icmp samesign ne i64 %i.jl, %i.gu
  call void @llvm.assume(i1 %i.jm)
  %i.jn = icmp samesign ugt i8 %i.jg, -17
  br i1 %i.jn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9GitHPCrz2Q_5rowan.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jo = add nuw nsw i64 %i.iy, 3
  %i.jp = icmp samesign ne i64 %i.jo, %i.gu
  call void @llvm.assume(i1 %i.jp)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i:         ; preds = %bb.aq, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af, %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i, %bb.n, %bb.j
  %i.jq = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.gt, %bb.aq ], [ %i.gt, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gt, %bb.af ], [ %i.gt, %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.jr = phi i64 [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.gu, %bb.aq ], [ %i.gu, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.af ], [ %i.gu, %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.js = phi i64 [ %i.bt, %bb.j ], [ %i.bt, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i ], [ %i.bt, %bb.n ], [ %i.iy, %bb.aq ], [ %i.iy, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.jt = phi i64 [ %i.bu, %bb.j ], [ %i.bu, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i ], [ %i.bu, %bb.n ], [ %i.gu, %bb.aq ], [ %i.gu, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.af ], [ %i.gu, %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ju = phi ptr [ @8, %bb.j ], [ @8, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i ], [ @8, %bb.n ], [ @24, %bb.aq ], [ @24, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ @24, %bb.af ], [ @24, %.split.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %i.jr, i64 noundef %i.js, i64 noundef %i.jt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ju) #18
          to label %.loopexit.i.i.i.i.cont.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.loopexit.split-lp.i.i.i.i, !noalias !139

.loopexit.i.i.i.i.cont.i.i.i.i.i.i.i.i:           ; preds = %.loopexit.i.i.i.i.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.at:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !174, !noalias !175 ; 2 uses
  %i.jv = add i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ix ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.iu
  br i1 %i.jw, label %.lr.ph.i1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i1.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.at
  %i.jx = load i64, ptr %i.ab, align 8, !alias.scope !174, !noalias !175, !noundef !4
end_hunk_0
