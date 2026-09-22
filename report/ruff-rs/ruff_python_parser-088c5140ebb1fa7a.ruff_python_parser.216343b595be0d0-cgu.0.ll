Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser10parse_listNCNvMNtB5_10expressionBL_34parse_interpolated_string_elements0EB7_:bb.a
bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i: ; preds = %bb.hq, %bb.hp
  %i.xv = load ptr, ptr %i.dg, align 8, !alias.scope !737, !noalias !738, !nonnull !15, !noundef !15
  %i.xw = getelementptr inbounds nuw [40 x i8], ptr %i.xv, i64 %i.xs ; 6 uses
  store i8 12, ptr %i.xw, align 8, !noalias !739
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xw, i64 1
  store i8 3, ptr %.sroa.5216.0..sroa_idx, align 1, !noalias !739
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  store i32 %i.xl, ptr %.sroa.4.0..sroa_idx.i.i56, align 8, !noalias !740
  %.sroa.5.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %i.xw, i64 28
  store i32 %i.xm, ptr %.sroa.5.0..sroa_idx.i.i57, align 4, !noalias !740
  %.sroa.6.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  store i8 %i.xn, ptr %.sroa.6.0..sroa_idx.i.i58, align 8, !noalias !740
  %.sroa.7.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.xw, i64 33
  store i8 %i.xo, ptr %.sroa.7.0..sroa_idx.i.i59, align 1, !noalias !740
  %i.xx = add i64 %i.xs, 1
  store i64 %i.xx, ptr %i.df, align 8, !alias.scope !737, !noalias !738
  br label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread: ; preds = %bb.hk, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !741), !noalias !623
  %.val.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !742, !noalias !627, !nonnull !15, !noundef !15 ; 7 uses
  %.val1.i.i = load i64, ptr %i.cf, align 8, !alias.scope !742, !noalias !627, !noundef !15 ; 11 uses
  %.idx = mul nuw nsw i64 %.val1.i.i, 12
  %i.xy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i299.i2156 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i299.i2156, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

bb.hr:                                            ; preds = %.lr.ph
  %.not.i.i299.i = icmp eq ptr %.val.i.i, %i.ya
  br i1 %.not.i.i299.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hr
  %.sroa.03.0.i.i.i.i2157 = phi i64 [ %i.yb, %bb.hr ], [ %.val1.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xz = phi ptr [ %i.ya, %bb.hr ], [ %i.xy, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -12 ; 3 uses
  %i.yb = add i64 %.sroa.03.0.i.i.i.i2157, -1     ; 3 uses
  %.val9.i.i.i.i = load i32, ptr %i.ya, align 4, !noalias !743, !noundef !15
  %i.yc = icmp eq i32 %.val9.i.i.i.i, %.sroa.0.0.i266.i
  br i1 %i.yc, label %bb.hs, label %bb.hr

bb.hs:                                            ; preds = %.lr.ph
  %i.yd = icmp ult i64 %i.yb, %.val1.i.i
  call void @llvm.assume(i1 %i.yd), !noalias !623
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i: ; preds = %bb.hr, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hs
  %.not.i.i299.i1818 = phi i1 [ false, %bb.hs ], [ true, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ true, %bb.hr ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.yb, %bb.hs ], [ undef, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ undef, %bb.hr ] ; 4 uses
  %i.ye = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ye, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

bb.ht:                                            ; preds = %.lr.ph2160
  %i.yf = getelementptr inbounds i8, ptr %i.yh, i64 -12 ; 2 uses
  %i.yg = icmp eq ptr %.val.i.i, %i.yf
  br i1 %i.yg, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

.lr.ph2160:                                       ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %bb.ht
  %.sroa.03.0.i7.i.i.i2159 = phi i64 [ %i.yi, %bb.ht ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 4 uses
  %i.yh = phi ptr [ %i.yf, %bb.ht ], [ %i.xy, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 2 uses
  %i.yi = add i64 %.sroa.03.0.i7.i.i.i2159, -1    ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yh, i64 -8
  %.val9.i8.i.i.i = load i32, ptr %i.yj, align 4, !noalias !744, !noundef !15
  %i.yk = icmp eq i32 %.val9.i8.i.i.i, %.sroa.11.0.i
  br i1 %i.yk, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i, label %bb.ht

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i: ; preds = %.lr.ph2160
  %i.yl = icmp ult i64 %i.yi, %.val1.i.i
  call void @llvm.assume(i1 %i.yl), !noalias !623
  br i1 %.not.i.i299.i1818, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %bb.hu

bb.hu:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %i.ym = icmp ult i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  br i1 %i.ym, label %bb.hv, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !14

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef %.sroa.03.0.i7.i.i.i2159, i64 noundef range(i64 0, 768614336404564651) %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
          to label %.noexc301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.noexc301.i:                                      ; preds = %bb.hv
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.hu
  %i.yn = sub nuw nsw i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  %i.yo = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %.sroa.3.0.i.i.i.i
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i: ; preds = %bb.ht, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %.pn11.i.i.i = phi ptr [ %i.yo, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val.i.i, %bb.ht ] ; 2 uses
  %.pn9.i.i.i = phi i64 [ %i.yn, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val1.i.i, %bb.ht ]
  %i.yp = getelementptr inbounds nuw [12 x i8], ptr %.pn11.i.i.i, i64 %.pn9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !745), !noalias !623
  br label %bb.hw

bb.hw:                                            ; preds = %.noexc302.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i
  %.sroa.0.0.i300.i = phi i1 [ %.sroa.022.0.i.lcssa841, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ true, %.noexc302.i ]
  %i.yq = phi ptr [ %.pn11.i.i.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ %i.yt, %.noexc302.i ]
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hy, %bb.hw
  %i.yr = phi ptr [ %i.yt, %bb.hy ], [ %i.yq, %bb.hw ] ; 4 uses
  %i.ys = icmp eq ptr %i.yr, %i.yp
  br i1 %i.ys, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 12 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 10
  %i.yv = load i8, ptr %i.yu, align 2, !range !22, !noalias !746, !noundef !15
  %i.yw = icmp eq i8 %i.yv, 12
  br i1 %i.yw, label %bb.hz, label %bb.hx

bb.hz:                                            ; preds = %bb.hy
  %i.yx = load <2 x i32>, ptr %i.yr, align 4, !noalias !747
  %i.yy = load i8, ptr %i.dc, align 4, !alias.scope !742, !noalias !748, !noundef !15
  %i.yz = load i8, ptr %i.dd, align 1, !alias.scope !742, !noalias !748, !noundef !15
  %i.za = load i64, ptr %i.df, align 8, !alias.scope !749, !noalias !750, !noundef !15 ; 5 uses
  %i.zb = icmp ult i64 %i.za, 230584300921369396
  call void @llvm.assume(i1 %i.zb), !noalias !623
  %i.zc = load i64, ptr %i.de, align 8, !range !26, !alias.scope !749, !noalias !750, !noundef !15
  %i.zd = icmp eq i64 %i.za, %i.zc
  br i1 %i.zd, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, label %.noexc302.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i: ; preds = %bb.hz
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %i.za, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 40)
          to label %.noexc302.i unwind label %.loopexit, !noalias !627, !inline_history !321

.noexc302.i:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, %bb.hz
  %i.ze = load ptr, ptr %i.dg, align 8, !alias.scope !749, !noalias !750, !nonnull !15, !noundef !15
  %i.zf = getelementptr inbounds nuw [40 x i8], ptr %i.ze, i64 %i.za ; 5 uses
  store i8 12, ptr %i.zf, align 8, !noalias !751
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zf, i64 1
  store i8 1, ptr %.sroa.415.0..sroa_idx.i.i.i, align 1, !noalias !751
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  store <2 x i32> %i.yx, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !751
  %.sroa.819.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  store i8 %i.yy, ptr %.sroa.819.0..sroa_idx.i.i.i, align 8, !noalias !751
  %.sroa.920.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zf, i64 33
  store i8 %i.yz, ptr %.sroa.920.0..sroa_idx.i.i.i, align 1, !noalias !751
  %i.zg = add nuw nsw i64 %i.za, 1
  store i64 %i.zg, ptr %i.df, align 8, !alias.scope !749, !noalias !750
  br label %bb.hw

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i: ; preds = %bb.hx
  br i1 %.sroa.0.0.i300.i, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.ia

bb.ia:                                            ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i
  %i.zh = load ptr, ptr %i.bl, align 8, !alias.scope !626, !noalias !627, !nonnull !15, !noundef !15 ; 8 uses
  %i.zi = load i64, ptr %i.bm, align 8, !alias.scope !626, !noalias !627, !noundef !15 ; 8 uses
  br i1 %i.qm, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %.not5.i304.i = icmp ugt i64 %i.zi, %i.qk
  br i1 %.not5.i304.i, label %bb.id, label %.split.i305.i

bb.ic:                                            ; preds = %bb.id, %.split.i305.i, %bb.ia
  br i1 %i.qn, label %bb.ig, label %bb.ie

.split.i305.i:                                    ; preds = %bb.ib
  %i.zj = icmp eq i64 %i.zi, %i.qk
  br i1 %i.zj, label %bb.ic, label %.invoke2167

bb.id:                                            ; preds = %bb.ib
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.qk
  %i.zl = load i8, ptr %i.zk, align 1, !alias.scope !752, !noalias !627, !noundef !15
  %i.zm = icmp sgt i8 %i.zl, -65
  br i1 %i.zm, label %bb.ic, label %.invoke2167

bb.ie:                                            ; preds = %bb.ic
  %.not6.i308.i = icmp ugt i64 %i.zi, %i.ql
  br i1 %.not6.i308.i, label %bb.if, label %.split7.i309.i

.split7.i309.i:                                   ; preds = %bb.ie
  %i.zn = icmp eq i64 %i.zi, %i.ql
  br i1 %i.zn, label %bb.ig, label %.invoke2167

bb.if:                                            ; preds = %bb.ie
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.ql
  %i.zp = load i8, ptr %i.zo, align 1, !alias.scope !752, !noalias !627, !noundef !15
  %i.zq = icmp sgt i8 %i.zp, -65
  br i1 %i.zq, label %bb.ig, label %.invoke2167

bb.ig:                                            ; preds = %bb.if, %.split7.i309.i, %bb.ic
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.qk ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.ql
  %i.zt = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !753, !nonnull !15, !noundef !15
  %i.zu = invoke { i64, ptr } %i.zt(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.zr, ptr noundef nonnull readonly %i.zs)
          to label %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !529 ; 2 uses

_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.ig
  %i.zv = extractvalue { i64, ptr } %i.zu, 0
  %i.zw = trunc nuw i64 %i.zv to i1
  br i1 %i.zw, label %bb.ih, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.ih:                                            ; preds = %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.zx = extractvalue { i64, ptr } %i.zu, 1
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = ptrtoint ptr %i.zr to i64
  %i.aaa = sub i64 %i.zy, %i.zz                   ; 2 uses
  %3 = icmp sgt i64 %i.aaa, -1
  call void @llvm.assume(i1 %3), !noalias !623
  %.not.i.i = icmp samesign ult i64 %i.aaa, %i.sw
  call void @llvm.assume(i1 %.not.i.i), !noalias !623
  %.not115.i = icmp eq i32 %.sroa.0.0.i266.i, -1
  br i1 %.not115.i, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i, !prof !14

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i: ; preds = %bb.ih
  %i.aab = add nuw i32 %.sroa.0.0.i266.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !754), !noalias !623
  %i.aac = load i8, ptr %i.dc, align 4, !alias.scope !755, !noalias !756, !noundef !15 ; 3 uses
  %i.aad = load i8, ptr %i.dd, align 1, !alias.scope !755, !noalias !756, !noundef !15 ; 2 uses
  %i.aae = icmp eq i8 %i.aac, 3
  %i.aaf = icmp ult i8 %i.aac, 3
  %i.aag = icmp ult i8 %i.aad, 12
  %spec.select9.i.i315.i = select i1 %i.aae, i1 %i.aag, i1 %i.aaf
  br i1 %spec.select9.i.i315.i, label %bb.ii, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.ii:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i
  call void @llvm.experimental.noalias.scope.decl(metadata !757), !noalias !623
  %i.aah = load i64, ptr %i.df, align 8, !alias.scope !758, !noalias !759, !noundef !15 ; 3 uses
  %i.aai = load i64, ptr %i.de, align 8, !range !26, !alias.scope !758, !noalias !759, !noundef !15
  %i.aaj = icmp eq i64 %i.aah, %i.aai
  br i1 %i.aaj, label %bb.ij, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i: ; preds = %bb.ij, %bb.ii
  %i.aak = load ptr, ptr %i.dg, align 8, !alias.scope !758, !noalias !759, !nonnull !15, !noundef !15
  %i.aal = getelementptr inbounds nuw [40 x i8], ptr %i.aak, i64 %i.aah ; 6 uses
  store i8 12, ptr %i.aal, align 8, !noalias !760
  %.sroa.5219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aal, i64 1
  store i8 2, ptr %.sroa.5219.0..sroa_idx, align 1, !noalias !760
  %.sroa.4.0..sroa_idx.i317.i = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  store i32 %.sroa.0.0.i266.i, ptr %.sroa.4.0..sroa_idx.i317.i, align 8, !noalias !761
  %.sroa.5.0..sroa_idx.i318.i = getelementptr inbounds nuw i8, ptr %i.aal, i64 28
  store i32 %i.aab, ptr %.sroa.5.0..sroa_idx.i318.i, align 4, !noalias !761
  %.sroa.6.0..sroa_idx.i319.i = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  store i8 %i.aac, ptr %.sroa.6.0..sroa_idx.i319.i, align 8, !noalias !761
  %.sroa.7.0..sroa_idx.i320.i = getelementptr inbounds nuw i8, ptr %i.aal, i64 33
  store i8 %i.aad, ptr %.sroa.7.0..sroa_idx.i320.i, align 1, !noalias !761
  %i.aam = add i64 %i.aah, 1
  store i64 %i.aam, ptr %i.df, align 8, !alias.scope !758, !noalias !759
  br label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.aan = load i8, ptr %i.dc, align 4, !alias.scope !762, !noalias !704, !noundef !15 ; 4 uses
  %i.aao = load i8, ptr %i.dd, align 1, !alias.scope !762, !noalias !704, !noundef !15 ; 3 uses
  %i.aap = icmp eq i8 %i.aan, 3
  %i.aaq = icmp ult i8 %i.aan, 3
  %i.aar = icmp ult i8 %i.aao, 12
  %spec.select9.i.i329.i = select i1 %i.aap, i1 %i.aar, i1 %i.aaq
  br i1 %spec.select9.i.i329.i, label %bb.ik, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel, !llvm.loop !536

bb.ik:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i
  %i.aas = load i64, ptr %i.df, align 8, !alias.scope !763, !noalias !706, !noundef !15 ; 3 uses
  %i.aat = load i64, ptr %i.de, align 8, !range !26, !alias.scope !763, !noalias !706, !noundef !15
  %i.aau = icmp eq i64 %i.aas, %i.aat
  br i1 %i.aau, label %bb.il, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split, !llvm.loop !536

bb.il:                                            ; preds = %bb.ik
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !noalias !627, !llvm.loop !536, !inline_history !321

bb.im:                                            ; preds = %bb.ev
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error14ParseErrorTypeEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.x) #44, !noalias !627, !inline_history !321
  br label %.body

common.resume:                                    ; preds = %.body.i.i, %.loopexit.split-lp.i.i, %bb.lt, %bb.iq, %.noexc209.i, %.thread
  %common.resume.op = phi { ptr, i32 } [ %i.abb, %bb.iq ], [ %.pn.pn.i, %.noexc209.i ], [ %.pn.pn.pn.i261, %.thread ], [ %i.ade, %.body.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %bb.lt ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %.loopexit337, %.loopexit.split-lp338.loopexit.split-lp, %.loopexit.split-lp338.loopexit, %bb.cg, %.noexc209.i
  %.pn.pn.pn.i261 = phi { ptr, i32 } [ %.pn.pn.i, %.noexc209.i ], [ %i.jb, %bb.cg ], [ %lpad.loopexit339, %.loopexit337 ], [ %lpad.loopexit350, %.loopexit.split-lp338.loopexit ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp338.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.aa) #44
          to label %common.resume unwind label %bb.ch, !noalias !627, !inline_history !321

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit: ; preds = %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pz, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !628
  %.sroa.5177.sroa.5.0.insert.ext = zext i8 %.sroa.5177.sroa.5.0 to i64
  %.sroa.5177.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5177.sroa.5.0.insert.ext, 56
  %.sroa.5177.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5177.sroa.5.0.insert.shift, %.sroa.5177.sroa.0.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !628
  store ptr %.sroa.0172.0, ptr %i.ak, align 8, !noalias !625
  store i64 %.sroa.5174.0, ptr %.sroa.575.0..sroa_idx76, align 8, !noalias !625
  store i64 %.sroa.5177.sroa.0.0.insert.insert, ptr %.sroa.678.0..sroa_idx79, align 8, !noalias !625
  store i64 %.sroa.8181.0, ptr %.sroa.884.0..sroa_idx85, align 8, !noalias !625
  store ptr %i.pz, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !625
  store i32 %.sroa.0.0.i266.i, ptr %.sroa.570.0..sroa_idx, align 8, !noalias !625
  store i32 %.val150.i, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !625
  store ptr %storemerge, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !625
  store i32 -2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !625
  br label %bb.io

bb.in:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.thread, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread
  %.val.i431357 = phi i8 [ %.val.i43.ph, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.thread ], [ %i.ee, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread ] ; 4 uses
  %i.aaw = load i8, ptr %i.bk, align 1, !range !22, !noalias !625, !noundef !15
  %i.aax = icmp eq i8 %.val.i431357, %i.aaw
  br i1 %i.aax, label %bb.it, label %bb.is

bb.io:                                            ; preds = %bb.ma, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit
  %storemerge1355 = phi i8 [ 0, %bb.ma ], [ %.sroa.0.0.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit ]
  store i8 %storemerge1355, ptr %i.bx, align 4, !noalias !625
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.aay = load i64, ptr %i.dn, align 8, !alias.scope !764, !noalias !765, !noundef !15 ; 3 uses
  %i.aaz = load i64, ptr %i.dm, align 8, !range !26, !alias.scope !764, !noalias !765, !noundef !15
  %i.aba = icmp eq i64 %i.aay, %i.aaz
  br i1 %i.aba, label %bb.ip, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.iq, !noalias !765

bb.iq:                                            ; preds = %bb.ip
  %i.abb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ak) #44
          to label %common.resume unwind label %bb.ir, !noalias !766

bb.ir:                                            ; preds = %bb.iq
  %i.abc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !767
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.io, %bb.ip
  %i.abd = load ptr, ptr %i.do, align 8, !alias.scope !764, !noalias !765, !nonnull !15, !noundef !15
  %i.abe = getelementptr inbounds nuw [64 x i8], ptr %i.abd, i64 %i.aay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abe, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ak, i64 64, i1 false), !noalias !766
  %i.abf = add i64 %i.aay, 1
  store i64 %i.abf, ptr %i.dn, align 8, !alias.scope !764, !noalias !765
  br label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser34parse_interpolated_string_elements0B8_.exit

bb.is:                                            ; preds = %bb.in
  %i.abg = icmp eq i8 %.val.i431357, 106
  br i1 %i.abg, label %bb.lw, label %bb.lx, !prof !30

bb.it:                                            ; preds = %bb.in
  %.val13.i47 = load i32, ptr %i.bg, align 8, !alias.scope !624, !noalias !623, !noundef !15 ; 7 uses
  %.val14.i = load i32, ptr %i.bh, align 4, !alias.scope !624, !noalias !623, !noundef !15 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %.val.i48 = load ptr, ptr %i.bl, align 8, !alias.scope !768, !noalias !623, !nonnull !15, !noundef !15 ; 5 uses
  %.val1.i = load i64, ptr %i.bm, align 8, !alias.scope !768, !noalias !623, !noundef !15 ; 5 uses
  %i.abh = zext i32 %.val13.i47 to i64            ; 6 uses
  %i.abi = zext i32 %.val14.i to i64              ; 6 uses
  %.not.i.i.i49 = icmp ugt i32 %.val13.i47, %.val14.i
  br i1 %.not.i.i.i49, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.abj = icmp eq i32 %.val13.i47, 0
  br i1 %i.abj, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %.not5.i.i.i50 = icmp ugt i64 %.val1.i, %i.abh
  br i1 %.not5.i.i.i50, label %bb.ix, label %.split.i.i.i51

bb.iw:                                            ; preds = %bb.ix, %.split.i.i.i51, %bb.iu
  %i.abk = icmp eq i32 %.val14.i, 0
  br i1 %i.abk, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %bb.iy

.split.i.i.i51:                                   ; preds = %bb.iv
  %i.abl = icmp eq i64 %.val1.i, %i.abh
  br i1 %i.abl, label %bb.iw, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.ix:                                            ; preds = %bb.iv
  %i.abm = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abh
  %i.abn = load i8, ptr %i.abm, align 1, !alias.scope !769, !noalias !770, !noundef !15
  %i.abo = icmp sgt i8 %i.abn, -65
  br i1 %i.abo, label %bb.iw, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.iy:                                            ; preds = %bb.iw
  %.not6.i.i.i52 = icmp ugt i64 %.val1.i, %i.abi
  br i1 %.not6.i.i.i52, label %bb.iz, label %.split7.i.i.i53

.split7.i.i.i53:                                  ; preds = %bb.iy
  %i.abp = icmp eq i64 %.val1.i, %i.abi
  br i1 %i.abp, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.iz:                                            ; preds = %bb.iy
  %i.abq = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abi
  %i.abr = load i8, ptr %i.abq, align 1, !alias.scope !769, !noalias !770, !noundef !15
  %i.abs = icmp sgt i8 %i.abr, -65
  br i1 %i.abs, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i: ; preds = %bb.iz, %.split7.i.i.i53, %bb.ix, %.split.i.i.i51, %bb.it
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i48, i64 noundef %.val1.i, i64 noundef %i.abh, i64 noundef %i.abi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #41, !noalias !770
  unreachable

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit: ; preds = %bb.iw, %.split7.i.i.i53, %bb.iz
  %i.abt = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abh ; 5 uses
  %i.abu = sub nuw nsw i64 %i.abi, %i.abh         ; 11 uses
  call fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i8 noundef %.val.i431357), !noalias !623, !inline_history !544
  %i.abv = load i16, ptr %i.bn, align 2, !noalias !623, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !771
  store ptr %i.abt, ptr %i.af, align 8, !noalias !771
  store i64 %i.abu, ptr %i.bo, align 8, !noalias !771
end_hunk_0
begin_hunk_1_@_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer16lex_number_radix:bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i32 %i.u, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !5130
  %i.am = add i64 %i.ae, 1
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !5130, !noalias !5131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit
  %.sroa.0.0 = phi i8 [ 106, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 1, 107) i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer18lex_decimal_number(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i32 noundef range(i32 46, 58) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i32 %1, 48
  %i.b = icmp eq i32 %1, 46
  br i1 %i.b, label %..thread_crit_edge, label %bb.c

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5203
  %.phi.trans.insert142 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert142, align 8, !alias.scope !5203
  br label %.thread

.thread:                                          ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread, %..thread_crit_edge, %.thread126, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37
  %i.c = phi ptr [ %.val1.i.pre, %..thread_crit_edge ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37 ], [ %.val1.i30, %.thread126 ], [ %.val1.i30, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread ] ; 6 uses
  %.val.i = phi ptr [ %.val.i.pre, %..thread_crit_edge ], [ %i.cl, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37 ], [ %i.ch, %.thread126 ], [ %i.cd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread ] ; 7 uses
  %.sroa.02.0122 = phi i1 [ false, %..thread_crit_edge ], [ %i.au, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37 ], [ %i.au, %.thread126 ], [ %i.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5203)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not.i.i = icmp eq ptr %.val.i, %i.c
  br i1 %.not.i.i, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.f = load i8, ptr %.val.i, align 1, !noalias !5204, !noundef !15 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  %i.i = and i8 %i.f, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.h, %i.c
  tail call void @llvm.assume(i1 %i.k)
  %i.l = load i8, ptr %i.h, align 1, !noalias !5204, !noundef !15
  %i.m = and i8 %i.l, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = icmp samesign ugt i8 %i.f, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 2 ; 2 uses
  %i.q = icmp ne ptr %i.p, %i.c
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i8, ptr %i.p, align 1, !noalias !5204, !noundef !15
  %i.s = shl nuw nsw i32 %i.n, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = icmp samesign ugt i8 %i.f, -17
  br i1 %i.w, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 3 ; 2 uses
  %i.y = icmp ne ptr %i.x, %i.c
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.x, align 1, !noalias !5204, !noundef !15
  %i.aa = shl nuw nsw i32 %i.j, 18
  %i.ab = and i32 %i.aa, 1835008
  %i.ac = shl nuw nsw i32 %i.v, 6
  %i.ad = and i8 %i.z, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = or disjoint i32 %i.af, %i.ab
  %i.ah = icmp eq i32 %i.ag, 95
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i
  %i.ai = shl nuw nsw i32 %i.j, 12
  %i.aj = or disjoint i32 %i.v, %i.ai
  %i.ak = icmp eq i32 %i.aj, 95
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i
  %i.al = shl nuw nsw i32 %i.j, 6
  %i.am = or disjoint i32 %i.al, %i.n
  %i.an = icmp eq i32 %i.am, 95
  br i1 %i.an, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i: ; preds = %bb.b
  %i.ao = icmp eq i8 %i.f, 95
  br i1 %i.ao, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 3 ; 2 uses
  store ptr %i.ap, ptr %i.d, align 8, !alias.scope !5205
  %i.aq = icmp ne ptr %i.ap, %i.c
  tail call void @llvm.assume(i1 %i.aq)
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread

bb.c:                                             ; preds = %bb.a
  %i.ar = icmp ne i32 %1, 48
  %i.as = tail call fastcc { i1, i1 } @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer9radix_run(ptr noalias noundef align 8 dereferenceable(144) %0, i8 noundef 2)
  %i.at = extractvalue { i1, i1 } %i.as, 1
  %i.au = or i1 %i.ar, %i.at                      ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5206)
  %.val.i29 = load ptr, ptr %i.av, align 8, !alias.scope !5206, !nonnull !15, !noundef !15 ; 15 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i30 = load ptr, ptr %i.aw, align 8, !alias.scope !5206, !nonnull !15, !noundef !15 ; 12 uses
  %.not.i.i31 = icmp eq ptr %.val.i29, %.val1.i30
  br i1 %.not.i.i31, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i8, ptr %.val.i29, align 1, !noalias !5207, !noundef !15 ; 5 uses
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i29, i64 1 ; 2 uses
  %i.ba = and i8 %i.ax, 31
  %i.bb = zext nneg i8 %i.ba to i32               ; 3 uses
  %i.bc = icmp ne ptr %i.az, %.val1.i30
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load i8, ptr %i.az, align 1, !noalias !5207, !noundef !15
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i32               ; 2 uses
  %i.bg = icmp samesign ugt i8 %i.ax, -33
  br i1 %i.bg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2 ; 2 uses
  %i.bi = icmp ne ptr %i.bh, %.val1.i30
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i8, ptr %i.bh, align 1, !noalias !5207, !noundef !15
  %i.bk = shl nuw nsw i32 %i.bf, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm            ; 2 uses
  %i.bo = icmp samesign ugt i8 %i.ax, -17
  br i1 %i.bo, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i29, i64 3 ; 2 uses
  %i.bq = icmp ne ptr %i.bp, %.val1.i30
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load i8, ptr %i.bp, align 1, !noalias !5207, !noundef !15
  %i.bs = shl nuw nsw i32 %i.bb, 18
  %i.bt = and i32 %i.bs, 1835008
  %i.bu = shl nuw nsw i32 %i.bn, 6
  %i.bv = and i8 %i.br, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw
  %i.by = or disjoint i32 %i.bx, %i.bt
  %i.bz = icmp eq i32 %i.by, 46
  br i1 %i.bz, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39
  %i.ca = shl nuw nsw i32 %i.bb, 12
  %i.cb = or disjoint i32 %i.bn, %i.ca
  %i.cc = icmp eq i32 %i.cb, 46
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i29, i64 3 ; 2 uses
  store ptr %i.cd, ptr %i.av, align 8, !alias.scope !5208
  br label %.thread

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32
  %i.ce = shl nuw nsw i32 %i.bb, 6
  %i.cf = or disjoint i32 %i.ce, %i.bf
  %i.cg = icmp eq i32 %i.cf, 46
  br i1 %i.cg, label %.thread126, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

.thread126:                                       ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2 ; 2 uses
  store ptr %i.ch, ptr %i.av, align 8, !alias.scope !5209
  br label %.thread

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41: ; preds = %bb.d
  %i.ci = icmp eq i8 %i.ax, 46
  br i1 %i.ci, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i29, i64 3 ; 2 uses
  store ptr %i.cj, ptr %i.av, align 8, !alias.scope !5208
  %i.ck = icmp ne ptr %i.cj, %.val1.i30
  tail call void @llvm.assume(i1 %i.ck)
  br label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41
  %.sink9.i38 = phi i64 [ 4, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36 ], [ 1, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i29, i64 %.sink9.i38 ; 2 uses
  store ptr %i.cl, ptr %i.av, align 8, !alias.scope !5210
  br label %.thread

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33, %bb.c, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit
  %.val3.i = phi ptr [ %.pre146, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ %.val.i29, %bb.c ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ] ; 6 uses
  %.val.i43.pre = phi ptr [ %.pre, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ %.val.i29, %bb.c ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ] ; 9 uses
  %.sroa.02.0121 = phi i1 [ %.sroa.02.0122, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ %i.au, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ %i.au, %bb.c ], [ %i.au, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ %i.au, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ %i.au, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ]
  %.sroa.04.0 = phi i1 [ true, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ false, %bb.c ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = ptrtoint ptr %.val3.i to i64
  %i.cp = ptrtoint ptr %.val.i43.pre to i64
  %i.cq = sub nuw i64 %i.co, %i.cp                ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 1
  br i1 %i.cr, label %bb.f, label %bb.e

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i, %.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread
  %i.cs = tail call fastcc { i1, i1 } @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer9radix_run(ptr noalias noundef align 8 dereferenceable(144) %0, i8 noundef 2) ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8
  %.pre146 = load ptr, ptr %i.e, align 8
  br label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161
  %.sink169 = phi i64 [ 3, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161 ], [ 2, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread ], [ 4, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i ], [ 1, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sink169 ; 2 uses
  store ptr %i.ct, ptr %i.d, align 8, !alias.scope !5211
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5212
  %i.cu = tail call noundef dereferenceable_or_null(14) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 14, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5212 ; 5 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66

bb.e:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42
  %i.cw = tail call fastcc noundef i32 @_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_numbers_0EB7_(ptr noalias noundef align 8 dereferenceable(24) %i.cm)
  %.not23 = icmp eq i32 %i.cw, -1
  br i1 %.not23, label %bb.n, label %bb.u

bb.f:                                             ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 1 ; 5 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !15 ; 2 uses
  %i.cz = add i8 %i.cy, -48
  %or.cond27 = icmp ult i8 %i.cz, 10
  br i1 %or.cond27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.not = icmp eq i64 %i.cq, 2
  br i1 %.not, label %bb.e, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.da = load i8, ptr %.val.i43.pre, align 1, !noundef !15
  switch i8 %i.da, label %bb.g [
    i8 101, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit
    i8 69, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit
  ]

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit: ; preds = %bb.l, %bb.l, %bb.h, %bb.h
  store ptr %i.cx, ptr %i.cm, align 8, !alias.scope !5213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5214)
  %.not.i.i44 = icmp eq ptr %i.cx, %.val3.i
  br i1 %.not.i.i44, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit
  %i.db = load i8, ptr %i.cx, align 1, !noalias !5215, !noundef !15 ; 5 uses
  %i.dc = icmp sgt i8 %i.db, -1
  br i1 %i.dc, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45: ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 2 ; 2 uses
  %i.de = and i8 %i.db, 31
  %i.df = zext nneg i8 %i.de to i32               ; 3 uses
  %i.dg = icmp ne ptr %i.dd, %.val3.i
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = load i8, ptr %i.dd, align 1, !noalias !5215, !noundef !15
  %i.di = and i8 %i.dh, 63
  %i.dj = zext nneg i8 %i.di to i32               ; 2 uses
  %i.dk = icmp samesign ugt i8 %i.db, -33
  br i1 %i.dk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 3 ; 2 uses
  %i.dm = icmp ne ptr %i.dl, %.val3.i
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = load i8, ptr %i.dl, align 1, !noalias !5215, !noundef !15
  %i.do = shl nuw nsw i32 %i.dj, 6
  %i.dp = and i8 %i.dn, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq            ; 2 uses
  %i.ds = icmp samesign ugt i8 %i.db, -17
  br i1 %i.ds, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 4 ; 2 uses
  %i.du = icmp ne ptr %i.dt, %.val3.i
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i8, ptr %i.dt, align 1, !noalias !5215, !noundef !15
  %i.dw = shl nuw nsw i32 %i.df, 18
  %i.dx = and i32 %i.dw, 1835008
  %i.dy = shl nuw nsw i32 %i.dr, 6
  %i.dz = and i8 %i.dv, 63
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dy, %i.ea
  %i.ec = or disjoint i32 %i.eb, %i.dx
  %i.ed = add nsw i32 %i.ec, -43
  %switch.and.i.i = and i32 %i.ed, -3
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48
  %i.ee = shl nuw nsw i32 %i.df, 12
  %i.ef = or disjoint i32 %i.dr, %i.ee
  %i.eg = add nsw i32 %i.ef, -43
  %switch.and.i.i167 = and i32 %i.eg, -3
  %switch.selectcmp.i.i168 = icmp eq i32 %switch.and.i.i167, 0
  br i1 %switch.selectcmp.i.i168, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45
  %i.eh = shl nuw nsw i32 %i.df, 6
  %i.ei = add nsw i32 %i.eh, -43
  %i.ej = add nsw i32 %i.ei, %i.dj
  %switch.and.i.i133 = and i32 %i.ej, -3
  %switch.selectcmp.i.i134 = icmp eq i32 %switch.and.i.i133, 0
  br i1 %switch.selectcmp.i.i134, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50: ; preds = %bb.i
  %i.ek = zext nneg i8 %i.db to i32
  %i.el = add nsw i32 %i.ek, -43
  %switch.and.i13.i = and i32 %i.el, -3
  %switch.selectcmp.i14.i = icmp eq i32 %switch.and.i13.i, 0
  br i1 %switch.selectcmp.i14.i, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 4
  %i.en = icmp ne ptr %i.em, %.val3.i
  tail call void @llvm.assume(i1 %i.en)
  br label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split

_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i
  %.sink170 = phi i64 [ 4, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i ], [ 3, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165 ], [ 2, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread ], [ 1, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sink170
  store ptr %i.eo, ptr %i.cm, align 8, !alias.scope !5216
  br label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit: ; preds = %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50
  %i.ep = tail call fastcc { i1, i1 } @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer9radix_run(ptr noalias noundef align 8 dereferenceable(144) %0, i8 noundef 2) ; 0 uses
  %i.eq = tail call fastcc noundef i32 @_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_numbers_0EB7_(ptr noalias noundef align 8 dereferenceable(24) %i.cm)
  %.not22 = icmp eq i32 %i.eq, -1
  br i1 %.not22, label %bb.m, label %bb.u

bb.j:                                             ; preds = %bb.g
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 2
  %i.es = load i8, ptr %i.er, align 1, !noundef !15
  %i.et = add i8 %i.es, -48
  %or.cond28 = icmp ult i8 %i.et, 10
  br i1 %or.cond28, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.eu = load i8, ptr %.val.i43.pre, align 1, !noundef !15
  switch i8 %i.eu, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  switch i8 %i.cy, label %bb.e [
    i8 45, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit
    i8 43, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit
  ]

bb.m:                                             ; preds = %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit, %bb.n
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  br i1 %.sroa.04.0, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond = select i1 %i.a, i1 %.sroa.02.0121, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5217
  %i.ev = tail call noundef dereferenceable_or_null(31) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 31, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5217 ; 5 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.q, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 31) #41
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.ev, ptr noundef nonnull align 1 dereferenceable(31) @87, i64 31, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !5218, !noundef !15
  %i.ez = trunc i64 %i.ey to i32                  ; 2 uses
  %i.fa = load ptr, ptr %i.cm, align 8, !alias.scope !5218, !nonnull !15, !noundef !15
  %i.fb = load ptr, ptr %i.cn, align 8, !alias.scope !5218, !nonnull !15, !noundef !15
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %.neg.i = sub i64 %i.fd, %i.fc
  %.neg3.i = trunc i64 %.neg.i to i32
  %i.fe = add i32 %.neg3.i, %i.ez                 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fg = load i32, ptr %i.ff, align 8, !alias.scope !5218, !noundef !15
  %i.fh = sub i32 %i.ez, %i.fg                    ; 3 uses
  %.not.i54 = icmp ugt i32 %i.fh, %i.fe
  br i1 %.not.i54, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #41
          to label %.noexc unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit

.noexc:                                           ; preds = %bb.r
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit: ; preds = %bb.r
  %i.fi = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 31, i64 noundef 1) #42, !noalias !5219
  br label %common.resume

bb.s:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.fh, ptr %i.fj, align 8, !alias.scope !5220, !noalias !5221
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.fe, ptr %i.fk, align 4, !alias.scope !5220, !noalias !5221
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5222)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !5223, !noalias !5224, !noundef !15 ; 3 uses
  %i.fo = load i64, ptr %i.fl, align 8, !range !26, !alias.scope !5223, !noalias !5224, !noundef !15
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.t, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fl)
          to label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit, !noalias !5224

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit
  %common.resume.op = phi { ptr, i32 } [ %i.fq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit ], [ %i.gj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77 ], [ %i.go, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72 ], [ %i.fi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit: ; preds = %bb.t
  %i.fq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 31, i64 noundef 1) #42, !noalias !5225
  br label %common.resume

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit: ; preds = %bb.s, %bb.t
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !5223, !noalias !5224, !nonnull !15, !noundef !15
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fn ; 5 uses
  store i8 12, ptr %i.ft, align 8, !noalias !5223
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.ev, ptr %.sroa.595.0..sroa_idx, align 8, !noalias !5223
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 31, ptr %.sroa.698.0..sroa_idx, align 8, !noalias !5223
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i32 %i.fh, ptr %.sroa.7101.0..sroa_idx, align 8, !noalias !5223
  %.sroa.9102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 28
  store i32 %i.fe, ptr %.sroa.9102.0..sroa_idx, align 4, !noalias !5223
  %i.fu = add i64 %i.fn, 1
  store i64 %i.fu, ptr %i.fm, align 8, !alias.scope !5223, !noalias !5224
  br label %bb.u

bb.u:                                             ; preds = %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit, %bb.m, %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit, %bb.e, %bb.o, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67
  %.sroa.0.1 = phi i8 [ 106, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67 ], [ 3, %bb.e ], [ 2, %bb.m ], [ 106, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit ], [ 3, %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit ], [ 1, %bb.o ]
  ret i8 %.sroa.0.1

bb.v:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 14) #41
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.cu, ptr noundef nonnull align 1 dereferenceable(14) @88, i64 14, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !15
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = ptrtoint ptr %i.c to i64
  %i.fz = ptrtoint ptr %i.ct to i64
  %.neg = sub i64 %i.fz, %i.fy
  %.neg24 = trunc i64 %.neg to i32
  %i.ga = add i32 %.neg24, %i.fx                  ; 4 uses
  %.not25 = icmp eq i32 %i.ga, 0
  br i1 %.not25, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #41
          to label %bb.z unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72

bb.x:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66
  %i.gb = add i32 %i.ga, -1                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5226)
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.gb, ptr %i.gc, align 8, !alias.scope !5226, !noalias !5227
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.ga, ptr %i.gd, align 4, !alias.scope !5226, !noalias !5227
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5228)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !5229, !noalias !5230, !noundef !15 ; 3 uses
  %i.gh = load i64, ptr %i.ge, align 8, !range !26, !alias.scope !5229, !noalias !5230, !noundef !15
  %i.gi = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.y, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77, !noalias !5230

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77: ; preds = %bb.y
  %i.gj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef 14, i64 noundef 1) #42, !noalias !5231
  br label %common.resume

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67: ; preds = %bb.x, %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !5229, !noalias !5230, !nonnull !15, !noundef !15
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gl, i64 %i.gg ; 5 uses
  store i8 12, ptr %i.gm, align 8, !noalias !5229
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.cu, ptr %.sroa.580.0..sroa_idx, align 8, !noalias !5229
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store i64 14, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !5229
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store i32 %i.gb, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5229
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  store i32 %i.ga, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !5229
  %i.gn = add i64 %i.gg, 1
  store i64 %i.gn, ptr %i.gf, align 8, !alias.scope !5229, !noalias !5230
  br label %bb.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72: ; preds = %bb.w
  %i.go = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef 14, i64 noundef 1) #42, !noalias !5232
  br label %common.resume

bb.z:                                             ; preds = %bb.w
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer20re_lex_logical_token(ptr noalias noundef nonnull align 8 dereferenceable(144) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !15 ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, -1
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i16, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %i.h = and i16 %i.g, 2
  %i.i = icmp eq i16 %i.h, 0
  %i.j = and i16 %i.g, 48
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.not6 = or i1 %i.i, %i.k
  %i.l = trunc nuw i32 %1 to i1
  %or.cond4 = and i1 %or.cond.not6, %i.l
  br i1 %or.cond4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit
  %.sroa.03.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor10skip_bytes.exit ]
end_hunk_1
