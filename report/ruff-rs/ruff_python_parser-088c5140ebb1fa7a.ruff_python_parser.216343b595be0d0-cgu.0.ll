Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser10parse_listNCNvMNtB5_10expressionBL_34parse_interpolated_string_elements0EB7_:bb.a
bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !592, !inline_history !301

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i: ; preds = %bb.hq, %bb.hp
  %i.xu = load ptr, ptr %i.dg, align 8, !alias.scope !687, !noalias !588, !nonnull !15, !noundef !15
  %i.xv = getelementptr inbounds nuw [40 x i8], ptr %i.xu, i64 %i.xr ; 6 uses
  store i8 12, ptr %i.xv, align 8, !noalias !688
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  store i8 3, ptr %.sroa.5216.0..sroa_idx, align 1, !noalias !688
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  store i32 %i.xk, ptr %.sroa.4.0..sroa_idx.i.i56, align 8, !noalias !689
  %.sroa.5.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %i.xv, i64 28
  store i32 %i.xl, ptr %.sroa.5.0..sroa_idx.i.i57, align 4, !noalias !689
  %.sroa.6.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.xv, i64 32
  store i8 %i.xm, ptr %.sroa.6.0..sroa_idx.i.i58, align 8, !noalias !689
  %.sroa.7.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.xv, i64 33
  store i8 %i.xn, ptr %.sroa.7.0..sroa_idx.i.i59, align 1, !noalias !689
  %i.xw = add i64 %i.xr, 1
  store i64 %i.xw, ptr %i.df, align 8, !alias.scope !687, !noalias !588
  br label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread: ; preds = %bb.hk, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !690), !noalias !588
  %.val.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !691, !noalias !588, !nonnull !15, !noundef !15 ; 7 uses
  %.val1.i.i = load i64, ptr %i.cf, align 8, !alias.scope !691, !noalias !588, !noundef !15 ; 11 uses
  %.idx = mul nuw nsw i64 %.val1.i.i, 12
  %i.xx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i299.i2156 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i299.i2156, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

bb.hr:                                            ; preds = %.lr.ph
  %.not.i.i299.i = icmp eq ptr %.val.i.i, %i.xz
  br i1 %.not.i.i299.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hr
  %.sroa.03.0.i.i.i.i2157 = phi i64 [ %i.ya, %bb.hr ], [ %.val1.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xy = phi ptr [ %i.xz, %bb.hr ], [ %i.xx, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 -12 ; 3 uses
  %i.ya = add i64 %.sroa.03.0.i.i.i.i2157, -1     ; 3 uses
  %.val9.i.i.i.i = load i32, ptr %i.xz, align 4, !noalias !692, !noundef !15
  %i.yb = icmp eq i32 %.val9.i.i.i.i, %.sroa.0.0.i266.i
  br i1 %i.yb, label %bb.hs, label %bb.hr

bb.hs:                                            ; preds = %.lr.ph
  %i.yc = icmp ult i64 %i.ya, %.val1.i.i
  call void @llvm.assume(i1 %i.yc), !noalias !588
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i: ; preds = %bb.hr, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hs
  %.not.i.i299.i1818 = phi i1 [ false, %bb.hs ], [ true, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ true, %bb.hr ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.ya, %bb.hs ], [ undef, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ undef, %bb.hr ] ; 4 uses
  %i.yd = icmp eq i64 %.val1.i.i, 0
  br i1 %i.yd, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

bb.ht:                                            ; preds = %.lr.ph2160
  %i.ye = getelementptr inbounds i8, ptr %i.yg, i64 -12 ; 2 uses
  %i.yf = icmp eq ptr %.val.i.i, %i.ye
  br i1 %i.yf, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

.lr.ph2160:                                       ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %bb.ht
  %.sroa.03.0.i7.i.i.i2159 = phi i64 [ %i.yh, %bb.ht ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 4 uses
  %i.yg = phi ptr [ %i.ye, %bb.ht ], [ %i.xx, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 2 uses
  %i.yh = add i64 %.sroa.03.0.i7.i.i.i2159, -1    ; 2 uses
  %i.yi = getelementptr i8, ptr %i.yg, i64 -8
  %.val9.i8.i.i.i = load i32, ptr %i.yi, align 4, !noalias !693, !noundef !15
  %i.yj = icmp eq i32 %.val9.i8.i.i.i, %.sroa.11.0.i
  br i1 %i.yj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i, label %bb.ht

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i: ; preds = %.lr.ph2160
  %i.yk = icmp ult i64 %i.yh, %.val1.i.i
  call void @llvm.assume(i1 %i.yk), !noalias !588
  br i1 %.not.i.i299.i1818, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %bb.hu

bb.hu:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %i.yl = icmp ult i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  br i1 %i.yl, label %bb.hv, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !14

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef %.sroa.03.0.i7.i.i.i2159, i64 noundef range(i64 0, 768614336404564651) %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
          to label %.noexc301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !592, !inline_history !301

.noexc301.i:                                      ; preds = %bb.hv
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.hu
  %i.ym = sub nuw nsw i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  %i.yn = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %.sroa.3.0.i.i.i.i
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i: ; preds = %bb.ht, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %.pn11.i.i.i = phi ptr [ %i.yn, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val.i.i, %bb.ht ] ; 2 uses
  %.pn9.i.i.i = phi i64 [ %i.ym, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val1.i.i, %bb.ht ]
  %i.yo = getelementptr inbounds nuw [12 x i8], ptr %.pn11.i.i.i, i64 %.pn9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !694), !noalias !588
  br label %bb.hw

bb.hw:                                            ; preds = %.noexc302.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i
  %.sroa.0.0.i300.i = phi i1 [ %.sroa.022.0.i.lcssa841, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ true, %.noexc302.i ]
  %i.yp = phi ptr [ %.pn11.i.i.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ %i.ys, %.noexc302.i ]
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hy, %bb.hw
  %i.yq = phi ptr [ %i.ys, %bb.hy ], [ %i.yp, %bb.hw ] ; 4 uses
  %i.yr = icmp eq ptr %i.yq, %i.yo
  br i1 %i.yr, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 12 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 10
  %i.yu = load i8, ptr %i.yt, align 2, !range !22, !noalias !695, !noundef !15
  %i.yv = icmp eq i8 %i.yu, 12
  br i1 %i.yv, label %bb.hz, label %bb.hx

bb.hz:                                            ; preds = %bb.hy
  %i.yw = load <2 x i32>, ptr %i.yq, align 4, !noalias !696
  %i.yx = load i8, ptr %i.dc, align 4, !alias.scope !691, !noalias !697, !noundef !15
  %i.yy = load i8, ptr %i.dd, align 1, !alias.scope !691, !noalias !697, !noundef !15
  %i.yz = load i64, ptr %i.df, align 8, !alias.scope !698, !noalias !588, !noundef !15 ; 5 uses
  %i.za = icmp ult i64 %i.yz, 230584300921369396
  call void @llvm.assume(i1 %i.za), !noalias !588
  %i.zb = load i64, ptr %i.de, align 8, !range !26, !alias.scope !698, !noalias !588, !noundef !15
  %i.zc = icmp eq i64 %i.yz, %i.zb
  br i1 %i.zc, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, label %.noexc302.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i: ; preds = %bb.hz
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %i.yz, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 40)
          to label %.noexc302.i unwind label %.loopexit, !noalias !592, !inline_history !301

.noexc302.i:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, %bb.hz
  %i.zd = load ptr, ptr %i.dg, align 8, !alias.scope !698, !noalias !588, !nonnull !15, !noundef !15
  %i.ze = getelementptr inbounds nuw [40 x i8], ptr %i.zd, i64 %i.yz ; 5 uses
  store i8 12, ptr %i.ze, align 8, !noalias !699
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  store i8 1, ptr %.sroa.415.0..sroa_idx.i.i.i, align 1, !noalias !699
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  store <2 x i32> %i.yw, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !699
  %.sroa.819.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  store i8 %i.yx, ptr %.sroa.819.0..sroa_idx.i.i.i, align 8, !noalias !699
  %.sroa.920.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ze, i64 33
  store i8 %i.yy, ptr %.sroa.920.0..sroa_idx.i.i.i, align 1, !noalias !699
  %i.zf = add nuw nsw i64 %i.yz, 1
  store i64 %i.zf, ptr %i.df, align 8, !alias.scope !698, !noalias !588
  br label %bb.hw

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i: ; preds = %bb.hx
  br i1 %.sroa.0.0.i300.i, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.ia

bb.ia:                                            ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i
  %i.zg = load ptr, ptr %i.bl, align 8, !alias.scope !591, !noalias !588, !nonnull !15, !noundef !15 ; 8 uses
  %i.zh = load i64, ptr %i.bm, align 8, !alias.scope !591, !noalias !588, !noundef !15 ; 8 uses
  br i1 %i.ql, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %.not5.i304.i = icmp ugt i64 %i.zh, %i.qj
  br i1 %.not5.i304.i, label %bb.id, label %.split.i305.i

bb.ic:                                            ; preds = %bb.id, %.split.i305.i, %bb.ia
  br i1 %i.qm, label %bb.ig, label %bb.ie

.split.i305.i:                                    ; preds = %bb.ib
  %i.zi = icmp eq i64 %i.zh, %i.qj
  br i1 %i.zi, label %bb.ic, label %.invoke2167

bb.id:                                            ; preds = %bb.ib
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qj
  %i.zk = load i8, ptr %i.zj, align 1, !alias.scope !700, !noalias !592, !noundef !15
  %i.zl = icmp sgt i8 %i.zk, -65
  br i1 %i.zl, label %bb.ic, label %.invoke2167

bb.ie:                                            ; preds = %bb.ic
  %.not6.i308.i = icmp ugt i64 %i.zh, %i.qk
  br i1 %.not6.i308.i, label %bb.if, label %.split7.i309.i

.split7.i309.i:                                   ; preds = %bb.ie
  %i.zm = icmp eq i64 %i.zh, %i.qk
  br i1 %i.zm, label %bb.ig, label %.invoke2167

bb.if:                                            ; preds = %bb.ie
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qk
  %i.zo = load i8, ptr %i.zn, align 1, !alias.scope !700, !noalias !592, !noundef !15
  %i.zp = icmp sgt i8 %i.zo, -65
  br i1 %i.zp, label %bb.ig, label %.invoke2167

bb.ig:                                            ; preds = %bb.if, %.split7.i309.i, %bb.ic
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qj ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.qk
  %i.zs = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !701, !nonnull !15, !noundef !15
  %i.zt = invoke { i64, ptr } %i.zs(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.zq, ptr noundef nonnull readonly %i.zr)
          to label %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !592, !inline_history !492 ; 2 uses

_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.ig
  %i.zu = extractvalue { i64, ptr } %i.zt, 0
  %i.zv = trunc nuw i64 %i.zu to i1
  br i1 %i.zv, label %bb.ih, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.ih:                                            ; preds = %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.zw = extractvalue { i64, ptr } %i.zt, 1
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = ptrtoint ptr %i.zq to i64
  %i.zz = sub i64 %i.zx, %i.zy
  %.not.i.i = icmp samesign ult i64 %i.zz, %i.sv
  call void @llvm.assume(i1 %.not.i.i), !noalias !588
  %.not115.i = icmp eq i32 %.sroa.0.0.i266.i, -1
  br i1 %.not115.i, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i, !prof !14

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i: ; preds = %bb.ih
  %i.aaa = add nuw i32 %.sroa.0.0.i266.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !702), !noalias !588
  %i.aab = load i8, ptr %i.dc, align 4, !alias.scope !703, !noalias !588, !noundef !15 ; 3 uses
  %i.aac = load i8, ptr %i.dd, align 1, !alias.scope !703, !noalias !588, !noundef !15 ; 2 uses
  %i.aad = icmp eq i8 %i.aab, 3
  %i.aae = icmp ult i8 %i.aab, 3
  %i.aaf = icmp ult i8 %i.aac, 12
  %spec.select9.i.i315.i = select i1 %i.aad, i1 %i.aaf, i1 %i.aae
  br i1 %spec.select9.i.i315.i, label %bb.ii, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

bb.ii:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i
  call void @llvm.experimental.noalias.scope.decl(metadata !704), !noalias !588
  %i.aag = load i64, ptr %i.df, align 8, !alias.scope !705, !noalias !588, !noundef !15 ; 3 uses
  %i.aah = load i64, ptr %i.de, align 8, !range !26, !alias.scope !705, !noalias !588, !noundef !15
  %i.aai = icmp eq i64 %i.aag, %i.aah
  br i1 %i.aai, label %bb.ij, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !592, !inline_history !301

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i: ; preds = %bb.ij, %bb.ii
  %i.aaj = load ptr, ptr %i.dg, align 8, !alias.scope !705, !noalias !588, !nonnull !15, !noundef !15
  %i.aak = getelementptr inbounds nuw [40 x i8], ptr %i.aaj, i64 %i.aag ; 6 uses
  store i8 12, ptr %i.aak, align 8, !noalias !706
  %.sroa.5219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aak, i64 1
  store i8 2, ptr %.sroa.5219.0..sroa_idx, align 1, !noalias !706
  %.sroa.4.0..sroa_idx.i317.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  store i32 %.sroa.0.0.i266.i, ptr %.sroa.4.0..sroa_idx.i317.i, align 8, !noalias !707
  %.sroa.5.0..sroa_idx.i318.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 28
  store i32 %i.aaa, ptr %.sroa.5.0..sroa_idx.i318.i, align 4, !noalias !707
  %.sroa.6.0..sroa_idx.i319.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  store i8 %i.aab, ptr %.sroa.6.0..sroa_idx.i319.i, align 8, !noalias !707
  %.sroa.7.0..sroa_idx.i320.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 33
  store i8 %i.aac, ptr %.sroa.7.0..sroa_idx.i320.i, align 1, !noalias !707
  %i.aal = add i64 %i.aag, 1
  store i64 %i.aal, ptr %i.df, align 8, !alias.scope !705, !noalias !588
  br label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.aam = load i8, ptr %i.dc, align 4, !alias.scope !708, !noalias !588, !noundef !15 ; 4 uses
  %i.aan = load i8, ptr %i.dd, align 1, !alias.scope !708, !noalias !588, !noundef !15 ; 3 uses
  %i.aao = icmp eq i8 %i.aam, 3
  %i.aap = icmp ult i8 %i.aam, 3
  %i.aaq = icmp ult i8 %i.aan, 12
  %spec.select9.i.i329.i = select i1 %i.aao, i1 %i.aaq, i1 %i.aap
  br i1 %spec.select9.i.i329.i, label %bb.ik, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel, !llvm.loop !499

bb.ik:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i
  %i.aar = load i64, ptr %i.df, align 8, !alias.scope !709, !noalias !588, !noundef !15 ; 3 uses
  %i.aas = load i64, ptr %i.de, align 8, !range !26, !alias.scope !709, !noalias !588, !noundef !15
  %i.aat = icmp eq i64 %i.aar, %i.aas
  br i1 %i.aat, label %bb.il, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split, !llvm.loop !499

bb.il:                                            ; preds = %bb.ik
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, !noalias !592, !llvm.loop !499, !inline_history !301

bb.im:                                            ; preds = %bb.ev
  %i.aau = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error14ParseErrorTypeEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.x) #44, !noalias !592, !inline_history !301
  br label %.body

common.resume:                                    ; preds = %.body.i.i, %.loopexit.split-lp.i.i, %bb.lt, %bb.iq, %.noexc209.i, %.thread
  %common.resume.op = phi { ptr, i32 } [ %i.aba, %bb.iq ], [ %.pn.pn.i, %.noexc209.i ], [ %.pn.pn.pn.i261, %.thread ], [ %i.add, %.body.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %bb.lt ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %.loopexit337, %.loopexit.split-lp338.loopexit.split-lp, %.loopexit.split-lp338.loopexit, %bb.cg, %.noexc209.i
  %.pn.pn.pn.i261 = phi { ptr, i32 } [ %.pn.pn.i, %.noexc209.i ], [ %i.jb, %bb.cg ], [ %lpad.loopexit339, %.loopexit337 ], [ %lpad.loopexit350, %.loopexit.split-lp338.loopexit ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp338.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(72) %i.aa) #44
          to label %common.resume unwind label %bb.ch, !noalias !592, !inline_history !301

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit: ; preds = %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pz, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !593
  %.sroa.5177.sroa.5.0.insert.ext = zext i8 %.sroa.5177.sroa.5.0 to i64
  %.sroa.5177.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5177.sroa.5.0.insert.ext, 56
  %.sroa.5177.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5177.sroa.5.0.insert.shift, %.sroa.5177.sroa.0.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !593
  store ptr %.sroa.0172.0, ptr %i.ak, align 8, !noalias !590
  store i64 %.sroa.5174.0, ptr %.sroa.575.0..sroa_idx76, align 8, !noalias !590
  store i64 %.sroa.5177.sroa.0.0.insert.insert, ptr %.sroa.678.0..sroa_idx79, align 8, !noalias !590
  store i64 %.sroa.8181.0, ptr %.sroa.884.0..sroa_idx85, align 8, !noalias !590
  store ptr %i.pz, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !590
  store i32 %.sroa.0.0.i266.i, ptr %.sroa.570.0..sroa_idx, align 8, !noalias !590
  store i32 %.val150.i, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !590
  store ptr %storemerge, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !590
  store i32 -2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !590
  br label %bb.io

bb.in:                                            ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.thread, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread
  %.val.i431357 = phi i8 [ %.val.i43.ph, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.thread ], [ %i.ee, %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread ] ; 4 uses
  %i.aav = load i8, ptr %i.bk, align 1, !range !22, !noalias !590, !noundef !15
  %i.aaw = icmp eq i8 %.val.i431357, %i.aav
  br i1 %i.aaw, label %bb.it, label %bb.is

bb.io:                                            ; preds = %bb.ma, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit
  %storemerge1355 = phi i8 [ 0, %bb.ma ], [ %.sroa.0.0.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit ]
  store i8 %storemerge1355, ptr %i.bx, align 4, !noalias !590
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.aax = load i64, ptr %i.dn, align 8, !alias.scope !710, !noalias !588, !noundef !15 ; 3 uses
  %i.aay = load i64, ptr %i.dm, align 8, !range !26, !alias.scope !710, !noalias !588, !noundef !15
  %i.aaz = icmp eq i64 %i.aax, %i.aay
  br i1 %i.aaz, label %bb.ip, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit unwind label %bb.iq, !noalias !711

bb.iq:                                            ; preds = %bb.ip
  %i.aba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ak) #44
          to label %common.resume unwind label %bb.ir, !noalias !712

bb.ir:                                            ; preds = %bb.iq
  %i.abb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !713
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.io, %bb.ip
  %i.abc = load ptr, ptr %i.do, align 8, !alias.scope !710, !noalias !588, !nonnull !15, !noundef !15
  %i.abd = getelementptr inbounds nuw [64 x i8], ptr %i.abc, i64 %i.aax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abd, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ak, i64 64, i1 false), !noalias !712
  %i.abe = add i64 %i.aax, 1
  store i64 %i.abe, ptr %i.dn, align 8, !alias.scope !710, !noalias !588
  br label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB6_6Parser34parse_interpolated_string_elements0B8_.exit

bb.is:                                            ; preds = %bb.in
  %i.abf = icmp eq i8 %.val.i431357, 106
  br i1 %i.abf, label %bb.lw, label %bb.lx, !prof !30

bb.it:                                            ; preds = %bb.in
  %.val13.i47 = load i32, ptr %i.bg, align 8, !alias.scope !589, !noundef !15 ; 7 uses
  %.val14.i = load i32, ptr %i.bh, align 4, !alias.scope !589, !noundef !15 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %.val.i48 = load ptr, ptr %i.bl, align 8, !alias.scope !714, !noalias !588, !nonnull !15, !noundef !15 ; 5 uses
  %.val1.i = load i64, ptr %i.bm, align 8, !alias.scope !714, !noalias !588, !noundef !15 ; 5 uses
  %i.abg = zext i32 %.val13.i47 to i64            ; 6 uses
  %i.abh = zext i32 %.val14.i to i64              ; 6 uses
  %.not.i.i.i49 = icmp ugt i32 %.val13.i47, %.val14.i
  br i1 %.not.i.i.i49, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.abi = icmp eq i32 %.val13.i47, 0
  br i1 %i.abi, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %.not5.i.i.i50 = icmp ugt i64 %.val1.i, %i.abg
  br i1 %.not5.i.i.i50, label %bb.ix, label %.split.i.i.i51

bb.iw:                                            ; preds = %bb.ix, %.split.i.i.i51, %bb.iu
  %i.abj = icmp eq i32 %.val14.i, 0
  br i1 %i.abj, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %bb.iy

.split.i.i.i51:                                   ; preds = %bb.iv
  %i.abk = icmp eq i64 %.val1.i, %i.abg
  br i1 %i.abk, label %bb.iw, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.ix:                                            ; preds = %bb.iv
  %i.abl = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abg
  %i.abm = load i8, ptr %i.abl, align 1, !alias.scope !715, !noalias !716, !noundef !15
  %i.abn = icmp sgt i8 %i.abm, -65
  br i1 %i.abn, label %bb.iw, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.iy:                                            ; preds = %bb.iw
  %.not6.i.i.i52 = icmp ugt i64 %.val1.i, %i.abh
  br i1 %.not6.i.i.i52, label %bb.iz, label %.split7.i.i.i53

.split7.i.i.i53:                                  ; preds = %bb.iy
  %i.abo = icmp eq i64 %.val1.i, %i.abh
  br i1 %i.abo, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.iz:                                            ; preds = %bb.iy
  %i.abp = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abh
  %i.abq = load i8, ptr %i.abp, align 1, !alias.scope !715, !noalias !716, !noundef !15
  %i.abr = icmp sgt i8 %i.abq, -65
  br i1 %i.abr, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i: ; preds = %bb.iz, %.split7.i.i.i53, %bb.ix, %.split.i.i.i51, %bb.it
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i48, i64 noundef %.val1.i, i64 noundef %i.abg, i64 noundef %i.abh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #41, !noalias !716
  unreachable

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser18current_token_text.exit: ; preds = %bb.iw, %.split7.i.i.i53, %bb.iz
  %i.abs = getelementptr inbounds nuw i8, ptr %.val.i48, i64 %i.abg ; 5 uses
  %i.abt = sub nuw nsw i64 %i.abh, %i.abg         ; 11 uses
  call fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser4bump(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i8 noundef %.val.i431357), !noalias !588, !inline_history !509
  %i.abu = load i16, ptr %i.bn, align 2, !noalias !588, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !717
  store ptr %i.abs, ptr %i.af, align 8, !noalias !717
  store i64 %i.abt, ptr %i.bo, align 8, !noalias !717
end_hunk_0
begin_hunk_1_@_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer16lex_number_radix:bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i32 %i.u, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !4990
  %i.am = add i64 %i.ae, 1
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !4990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit
  %.sroa.0.0 = phi i8 [ 106, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 1, 107) i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer18lex_decimal_number(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i32 noundef range(i32 46, 58) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i32 %1, 48                       ; 2 uses
  %i.b = icmp eq i32 %1, 46
  br i1 %i.b, label %..thread_crit_edge, label %bb.c

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5055
  %.phi.trans.insert143 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert143, align 8, !alias.scope !5055
  br label %.thread

.thread:                                          ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread, %..thread_crit_edge, %.thread126, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37
  %i.c = phi ptr [ %.val1.i.pre, %..thread_crit_edge ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37 ], [ %.val1.i30, %.thread126 ], [ %.val1.i30, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread ] ; 6 uses
  %.val.i = phi ptr [ %.val.i.pre, %..thread_crit_edge ], [ %i.ck, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37 ], [ %i.cg, %.thread126 ], [ %i.cc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread ] ; 7 uses
  %.sroa.02.0122 = phi i1 [ false, %..thread_crit_edge ], [ %i.at, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37 ], [ %i.at, %.thread126 ], [ %i.at, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5055)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not.i.i = icmp eq ptr %.val.i, %i.c
  br i1 %.not.i.i, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.f = load i8, ptr %.val.i, align 1, !noalias !5056, !noundef !15 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  %i.i = and i8 %i.f, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.h, %i.c
  tail call void @llvm.assume(i1 %i.k)
  %i.l = load i8, ptr %i.h, align 1, !noalias !5056, !noundef !15
  %i.m = and i8 %i.l, 63
  %i.n = zext nneg i8 %i.m to i32                 ; 2 uses
  %i.o = icmp samesign ugt i8 %i.f, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 2 ; 2 uses
  %i.q = icmp ne ptr %i.p, %i.c
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load i8, ptr %i.p, align 1, !noalias !5056, !noundef !15
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
  %i.z = load i8, ptr %i.x, align 1, !noalias !5056, !noundef !15
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
  store ptr %i.ap, ptr %i.d, align 8, !alias.scope !5057
  %i.aq = icmp ne ptr %i.ap, %i.c
  tail call void @llvm.assume(i1 %i.aq)
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread

bb.c:                                             ; preds = %bb.a
  %.not141 = xor i1 %i.a, true
  %i.ar = tail call fastcc { i1, i1 } @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer9radix_run(ptr noalias noundef align 8 dereferenceable(144) %0, i8 noundef 2)
  %i.as = extractvalue { i1, i1 } %i.ar, 1
  %i.at = or i1 %i.as, %.not141                   ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5058)
  %.val.i29 = load ptr, ptr %i.au, align 8, !alias.scope !5058, !nonnull !15, !noundef !15 ; 15 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i30 = load ptr, ptr %i.av, align 8, !alias.scope !5058, !nonnull !15, !noundef !15 ; 12 uses
  %.not.i.i31 = icmp eq ptr %.val.i29, %.val1.i30
  br i1 %.not.i.i31, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i8, ptr %.val.i29, align 1, !noalias !5059, !noundef !15 ; 5 uses
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32: ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i29, i64 1 ; 2 uses
  %i.az = and i8 %i.aw, 31
  %i.ba = zext nneg i8 %i.az to i32               ; 3 uses
  %i.bb = icmp ne ptr %i.ay, %.val1.i30
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = load i8, ptr %i.ay, align 1, !noalias !5059, !noundef !15
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i32               ; 2 uses
  %i.bf = icmp samesign ugt i8 %i.aw, -33
  br i1 %i.bf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, %.val1.i30
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bg, align 1, !noalias !5059, !noundef !15
  %i.bj = shl nuw nsw i32 %i.be, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = icmp samesign ugt i8 %i.aw, -17
  br i1 %i.bn, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i29, i64 3 ; 2 uses
  %i.bp = icmp ne ptr %i.bo, %.val1.i30
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = load i8, ptr %i.bo, align 1, !noalias !5059, !noundef !15
  %i.br = shl nuw nsw i32 %i.ba, 18
  %i.bs = and i32 %i.br, 1835008
  %i.bt = shl nuw nsw i32 %i.bm, 6
  %i.bu = and i8 %i.bq, 63
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv
  %i.bx = or disjoint i32 %i.bw, %i.bs
  %i.by = icmp eq i32 %i.bx, 46
  br i1 %i.by, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i39
  %i.bz = shl nuw nsw i32 %i.ba, 12
  %i.ca = or disjoint i32 %i.bm, %i.bz
  %i.cb = icmp eq i32 %i.ca, 46
  br i1 %i.cb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i35.thread: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i29, i64 3 ; 2 uses
  store ptr %i.cc, ptr %i.au, align 8, !alias.scope !5060
  br label %.thread

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i32
  %i.cd = shl nuw nsw i32 %i.ba, 6
  %i.ce = or disjoint i32 %i.cd, %i.be
  %i.cf = icmp eq i32 %i.ce, 46
  br i1 %i.cf, label %.thread126, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

.thread126:                                       ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2 ; 2 uses
  store ptr %i.cg, ptr %i.au, align 8, !alias.scope !5061
  br label %.thread

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41: ; preds = %bb.d
  %i.ch = icmp eq i8 %i.aw, 46
  br i1 %i.ch, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i29, i64 3 ; 2 uses
  store ptr %i.ci, ptr %i.au, align 8, !alias.scope !5060
  %i.cj = icmp ne ptr %i.ci, %.val1.i30
  tail call void @llvm.assume(i1 %i.cj)
  br label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit.sink.split.i37: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41
  %.sink9.i38 = phi i64 [ 4, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i36 ], [ 1, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i29, i64 %.sink9.i38 ; 2 uses
  store ptr %i.ck, ptr %i.au, align 8, !alias.scope !5062
  br label %.thread

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33, %bb.c, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit
  %.val3.i = phi ptr [ %.pre147, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ %.val.i29, %bb.c ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ %.val1.i30, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ] ; 7 uses
  %.val.i43.pre = phi ptr [ %.pre, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ %.val.i29, %bb.c ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ %.val.i29, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ] ; 7 uses
  %.sroa.02.0121 = phi i1 [ %.sroa.02.0122, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ %i.at, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ %i.at, %bb.c ], [ %i.at, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ %i.at, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ %i.at, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ]
  %.sroa.04.0 = phi i1 [ true, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread ], [ false, %bb.c ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33 ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i41 ], [ false, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i33.thread163 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cn = ptrtoint ptr %.val3.i to i64
  %i.co = ptrtoint ptr %.val.i43.pre to i64
  %i.cp = sub nuw i64 %i.cn, %i.co                ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 1
  br i1 %i.cq, label %bb.f, label %bb.e

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i, %.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread
  %i.cr = tail call fastcc { i1, i1 } @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer9radix_run(ptr noalias noundef align 8 dereferenceable(144) %0, i8 noundef 2) ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8
  %.pre147 = load ptr, ptr %i.e, align 8
  br label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161
  %.sink169 = phi i64 [ 3, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread161 ], [ 2, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i.thread ], [ 4, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i6.i ], [ 1, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sink169 ; 2 uses
  store ptr %i.cs, ptr %i.d, align 8, !alias.scope !5063
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5064
  %i.ct = tail call noundef dereferenceable_or_null(14) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 14, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5064 ; 5 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66

bb.e:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42
  %i.cv = tail call fastcc noundef i32 @_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_numbers_0EB7_(ptr noalias noundef align 8 dereferenceable(24) %i.cl)
  %.not23 = icmp eq i32 %i.cv, -1
  br i1 %.not23, label %bb.n, label %bb.u

bb.f:                                             ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor8eat_char.exit42
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 1 ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !15 ; 2 uses
  %i.cy = add i8 %i.cx, -48
  %or.cond27 = icmp ult i8 %i.cy, 10
  br i1 %or.cond27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.not = icmp eq i64 %i.cp, 2
  br i1 %.not, label %bb.e, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cz = load i8, ptr %.val.i43.pre, align 1, !noundef !15
  switch i8 %i.cz, label %bb.g [
    i8 101, label %2
    i8 69, label %2
  ]

2:                                                ; preds = %bb.l, %bb.l, %bb.h, %bb.h
  %.not.i = icmp eq ptr %.val.i43.pre, %.val3.i
  br i1 %.not.i, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit, label %3

3:                                                ; preds = %2
  store ptr %i.cw, ptr %i.cl, align 8, !alias.scope !5065
  br label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit: ; preds = %3, %2
  %.val.i43 = phi ptr [ %.val.i43.pre, %2 ], [ %i.cw, %3 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5066)
  %.not.i.i44 = icmp eq ptr %.val.i43, %.val3.i
  br i1 %.not.i.i44, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit
  %i.da = load i8, ptr %.val.i43, align 1, !noalias !5067, !noundef !15 ; 5 uses
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45: ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i43, i64 1 ; 2 uses
  %i.dd = and i8 %i.da, 31
  %i.de = zext nneg i8 %i.dd to i32               ; 3 uses
  %i.df = icmp ne ptr %i.dc, %.val3.i
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = load i8, ptr %i.dc, align 1, !noalias !5067, !noundef !15
  %i.dh = and i8 %i.dg, 63
  %i.di = zext nneg i8 %i.dh to i32               ; 2 uses
  %i.dj = icmp samesign ugt i8 %i.da, -33
  br i1 %i.dj, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i43, i64 2 ; 2 uses
  %i.dl = icmp ne ptr %i.dk, %.val3.i
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = load i8, ptr %i.dk, align 1, !noalias !5067, !noundef !15
  %i.dn = shl nuw nsw i32 %i.di, 6
  %i.do = and i8 %i.dm, 63
  %i.dp = zext nneg i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dn, %i.dp            ; 2 uses
  %i.dr = icmp samesign ugt i8 %i.da, -17
  br i1 %i.dr, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i43, i64 3 ; 2 uses
  %i.dt = icmp ne ptr %i.ds, %.val3.i
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = load i8, ptr %i.ds, align 1, !noalias !5067, !noundef !15
  %i.dv = shl nuw nsw i32 %i.de, 18
  %i.dw = and i32 %i.dv, 1835008
  %i.dx = shl nuw nsw i32 %i.dq, 6
  %i.dy = and i8 %i.du, 63
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = or disjoint i32 %i.dx, %i.dz
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = add nsw i32 %i.eb, -43
  %switch.and.i.i = and i32 %i.ec, -3
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i.i48
  %i.ed = shl nuw nsw i32 %i.de, 12
  %i.ee = or disjoint i32 %i.dq, %i.ed
  %i.ef = add nsw i32 %i.ee, -43
  %switch.and.i.i167 = and i32 %i.ef, -3
  %switch.selectcmp.i.i168 = icmp eq i32 %switch.and.i.i167, 0
  br i1 %switch.selectcmp.i.i168, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit12.i.i.i45
  %i.eg = shl nuw nsw i32 %i.de, 6
  %i.eh = add nsw i32 %i.eg, -43
  %i.ei = add nsw i32 %i.eh, %i.di
  %switch.and.i.i133 = and i32 %i.ei, -3
  %switch.selectcmp.i.i134 = icmp eq i32 %switch.and.i.i133, 0
  br i1 %switch.selectcmp.i.i134, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50: ; preds = %bb.i
  %i.ej = zext nneg i8 %i.da to i32
  %i.ek = add nsw i32 %i.ej, -43
  %switch.and.i13.i = and i32 %i.ek, -3
  %switch.selectcmp.i14.i = icmp eq i32 %switch.and.i13.i, 0
  br i1 %switch.selectcmp.i14.i, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i43, i64 3
  %i.em = icmp ne ptr %i.el, %.val3.i
  tail call void @llvm.assume(i1 %i.em)
  br label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split

_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split: ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i
  %.sink170 = phi i64 [ 4, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit16.i.i8.i ], [ 3, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165 ], [ 2, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread ], [ 1, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i43, i64 %.sink170
  store ptr %i.en, ptr %i.cl, align 8, !alias.scope !5066
  br label %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit

_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit: ; preds = %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit.sink.split, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread165, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46.thread, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor4bump.exit, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.i46, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB2_6Cursor5first.exit.thread.i50
  %i.eo = tail call fastcc { i1, i1 } @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer9radix_run(ptr noalias noundef align 8 dereferenceable(144) %0, i8 noundef 2) ; 0 uses
  %i.ep = tail call fastcc noundef i32 @_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_numbers_0EB7_(ptr noalias noundef align 8 dereferenceable(24) %i.cl)
  %.not22 = icmp eq i32 %i.ep, -1
  br i1 %.not22, label %bb.m, label %bb.u

bb.j:                                             ; preds = %bb.g
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i43.pre, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !noundef !15
  %i.es = add i8 %i.er, -48
  %or.cond28 = icmp ult i8 %i.es, 10
  br i1 %or.cond28, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.et = load i8, ptr %.val.i43.pre, align 1, !noundef !15
  switch i8 %i.et, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  switch i8 %i.cx, label %bb.e [
    i8 45, label %2
    i8 43, label %2
  ]

bb.m:                                             ; preds = %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit, %bb.n
  br label %bb.u

bb.n:                                             ; preds = %bb.e
  br i1 %.sroa.04.0, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond = select i1 %i.a, i1 %.sroa.02.0121, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5068
  %i.eu = tail call noundef dereferenceable_or_null(31) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 31, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !5068 ; 5 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.q, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 31) #41
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.eu, ptr noundef nonnull align 1 dereferenceable(31) @87, i64 31, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !5069, !noundef !15
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %i.ez = load ptr, ptr %i.cl, align 8, !alias.scope !5069, !nonnull !15, !noundef !15
  %i.fa = load ptr, ptr %i.cm, align 8, !alias.scope !5069, !nonnull !15, !noundef !15
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %.neg.i = sub i64 %i.fc, %i.fb
  %.neg3.i = trunc i64 %.neg.i to i32
  %i.fd = add i32 %.neg3.i, %i.ey                 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ff = load i32, ptr %i.fe, align 8, !alias.scope !5069, !noundef !15
  %i.fg = sub i32 %i.ey, %i.ff                    ; 3 uses
  %.not.i54 = icmp ugt i32 %i.fg, %i.fd
  br i1 %.not.i54, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #41
          to label %.noexc unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit

.noexc:                                           ; preds = %bb.r
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit: ; preds = %bb.r
  %i.fh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef 31, i64 noundef 1) #42, !noalias !5070
  br label %common.resume

bb.s:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5071)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.fg, ptr %i.fi, align 8, !alias.scope !5071
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.fd, ptr %i.fj, align 4, !alias.scope !5071
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5072)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !5073, !noundef !15 ; 3 uses
  %i.fn = load i64, ptr %i.fk, align 8, !range !26, !alias.scope !5073, !noundef !15
  %i.fo = icmp eq i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.t, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit, !noalias !5074

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit
  %common.resume.op = phi { ptr, i32 } [ %i.fp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit ], [ %i.gi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77 ], [ %i.gn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72 ], [ %i.fh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit: ; preds = %bb.t
  %i.fp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eu, i64 noundef 31, i64 noundef 1) #42, !noalias !5075
  br label %common.resume

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit: ; preds = %bb.s, %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !5073, !nonnull !15, !noundef !15
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %i.fm ; 5 uses
  store i8 12, ptr %i.fs, align 8, !noalias !5073
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.eu, ptr %.sroa.595.0..sroa_idx, align 8, !noalias !5073
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 31, ptr %.sroa.698.0..sroa_idx, align 8, !noalias !5073
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i32 %i.fg, ptr %.sroa.7101.0..sroa_idx, align 8, !noalias !5073
  %.sroa.9102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 28
  store i32 %i.fd, ptr %.sroa.9102.0..sroa_idx, align 4, !noalias !5073
  %i.ft = add i64 %i.fm, 1
  store i64 %i.ft, ptr %i.fl, align 8, !alias.scope !5073
  br label %bb.u

bb.u:                                             ; preds = %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit, %bb.m, %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit, %bb.e, %bb.o, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67
  %.sroa.0.1 = phi i8 [ 106, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67 ], [ 3, %bb.e ], [ 2, %bb.m ], [ 106, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit ], [ 3, %_RINvMNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer6cursorNtB3_6Cursor6eat_ifNCNvMB5_NtB5_5Lexer18lex_decimal_number0EB7_.exit ], [ 1, %bb.o ]
  ret i8 %.sroa.0.1

bb.v:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 14) #41
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit14.i.i5.i.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ct, ptr noundef nonnull align 1 dereferenceable(14) @88, i64 14, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !15
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = ptrtoint ptr %i.c to i64
  %i.fy = ptrtoint ptr %i.cs to i64
  %.neg = sub i64 %i.fy, %i.fx
  %.neg24 = trunc i64 %.neg to i32
  %i.fz = add i32 %.neg24, %i.fw                  ; 4 uses
  %.not25 = icmp eq i32 %i.fz, 0
  br i1 %.not25, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #41
          to label %bb.z unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72

bb.x:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsb6FLkjZuKG_18ruff_python_parser.exit66
  %i.ga = add i32 %i.fz, -1                       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5076)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.ga, ptr %i.gb, align 8, !alias.scope !5076
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.fz, ptr %i.gc, align 4, !alias.scope !5076
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5077)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !5078, !noundef !15 ; 3 uses
  %i.gg = load i64, ptr %i.gd, align 8, !range !26, !alias.scope !5078, !noundef !15
  %i.gh = icmp eq i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.y, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gd)
          to label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77, !noalias !5079

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error12LexicalErrorEBF_.exit77: ; preds = %bb.y
  %i.gi = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef 14, i64 noundef 1) #42, !noalias !5080
  br label %common.resume

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10push_error.exit67: ; preds = %bb.x, %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !5078, !nonnull !15, !noundef !15
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.gf ; 5 uses
  store i8 12, ptr %i.gl, align 8, !noalias !5078
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.ct, ptr %.sroa.580.0..sroa_idx, align 8, !noalias !5078
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 14, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !5078
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  store i32 %i.ga, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !5078
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  store i32 %i.fz, ptr %.sroa.9.0..sroa_idx, align 4, !noalias !5078
  %i.gm = add i64 %i.gf, 1
  store i64 %i.gm, ptr %i.ge, align 8, !alias.scope !5078
  br label %bb.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error16LexicalErrorTypeEBF_.exit72: ; preds = %bb.w
  %i.gn = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef 14, i64 noundef 1) #42, !noalias !5081
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
