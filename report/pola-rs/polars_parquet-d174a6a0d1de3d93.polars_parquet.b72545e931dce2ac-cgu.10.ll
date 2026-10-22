Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtB2_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet:bb.a
bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !16628, !noalias !16463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.636.0..sroa_idx37, i64 24, i1 false), !dbg !16629, !noalias !16464
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118, align 8, !dbg !16628, !noalias !16463
  store i8 2, ptr %i.y, align 8, !dbg !16628, !noalias !16463
  call fastcc void @_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.y), !dbg !16630, !noalias !16465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !16631, !noalias !16463
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !16632

bb.aj:                                            ; preds = %bb.u
  %.sroa.0.0.i119 = call noundef i64 @llvm.umin.i64(i64 %i.gg, i64 %.sroa.016.1), !dbg !16633 ; 5 uses
  %i.gz = icmp eq i64 %.sroa.0.0.i119, 0, !dbg !16634
  br i1 %i.gz, label %bb.am, label %bb.al, !dbg !16634

bb.ak:                                            ; preds = %bb.u
  %i.ha = icmp ugt i32 %i.fx, 3, !dbg !16635
  br i1 %i.ha, label %bb.aq, label %bb.ap, !dbg !16635, !prof !724

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !16636
  %i.hb = trunc i64 %.sroa.043.0 to i32, !dbg !16637
  %i.hc = trunc nuw i64 %.sroa.0.0.i119 to i32, !dbg !16638
  store i32 %i.hb, ptr %i.ea, align 4, !dbg !16636
  store i32 %i.hc, ptr %i.eb, align 8, !dbg !16636
  store i8 0, ptr %i.aj, align 8, !dbg !16636
  call fastcc void @_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.aj), !dbg !16639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !16640
  br label %bb.am, !dbg !16641

bb.am:                                            ; preds = %bb.aj, %bb.al
  %i.hd = sub nuw i64 %.sroa.016.1, %.sroa.0.0.i119, !dbg !16642 ; 2 uses
  %i.he = icmp eq i64 %i.gb, 1, !dbg !16643
  %i.hf = icmp eq i64 %i.gc, 0
  %or.cond = select i1 %i.he, i1 %i.hf, i1 false, !dbg !16643
  br i1 %or.cond, label %bb.ao, label %bb.an, !dbg !16643

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !16644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, i8 0, i64 12, i1 false), !dbg !16645
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.ai, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.aw, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148), !dbg !16646
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.ec, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ai, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149), !dbg !16647
  %i.hg = trunc i64 %.sroa.043.0 to i32, !dbg !16648
  store i32 %i.hg, ptr %i.aw, align 4, !dbg !16648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !16649
  br label %bb.ao, !dbg !16650

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.be
  %.sroa.066.0 = phi i64 [ %i.ie, %bb.be ], [ %.sroa.0.0.i119, %bb.am ], [ %.sroa.0.0.i119, %bb.an ], !dbg !16651
  %.sroa.016.4 = phi i64 [ %.sroa.016.5, %bb.be ], [ %i.hd, %bb.am ], [ %i.hd, %bb.an ], !dbg !16651
  %i.hh = add i32 %.sroa.075.1410, -1, !dbg !16652 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 0, !dbg !16653
  br i1 %i.hi, label %bb.bh, label %bb.bl, !dbg !16653

bb.ap:                                            ; preds = %bb.ak
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #18, !dbg !16654
  unreachable, !dbg !16654

bb.aq:                                            ; preds = %bb.ak
  %i.hj = icmp ult i32 %i.fx, 25, !dbg !16655
  br i1 %i.hj, label %bb.as, label %bb.ar, !dbg !16655, !prof !724

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #18, !dbg !16656
  unreachable, !dbg !16656

bb.as:                                            ; preds = %bb.aq
  %i.hk = xor i64 %.sroa.0.0.i113, -1, !dbg !16657
  %i.hl = add i64 %.sroa.043.0, %i.hk, !dbg !16657 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr @154, i64 %i.gg, !dbg !16658
  %i.hn = load i8, ptr %i.hm, align 1, !dbg !16658, !noundef !664
  %i.ho = and i8 %i.hn, 63, !dbg !16659
  %i.hp = zext nneg i8 %i.ho to i64, !dbg !16659  ; 2 uses
  %i.hq = lshr i64 %i.hl, %i.hp, !dbg !16659      ; 2 uses
  %notmask = shl nsw i64 -1, %i.hp, !dbg !16660
  %i.hr = xor i64 %notmask, -1, !dbg !16660
  %i.hs = and i64 %i.hl, %i.hr, !dbg !16661       ; 2 uses
  %i.ht = mul i64 %i.hs, %i.gg, !dbg !16662
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr @155, i64 %i.gg, !dbg !16663
  %i.hv = load i32, ptr %i.hu, align 4, !dbg !16663, !noundef !664
  %i.hw = zext i32 %i.hv to i64, !dbg !16663
  %i.hx = add i64 %i.ht, %i.hw, !dbg !16662       ; 4 uses
  %i.hy = add i64 %i.hx, %i.gg, !dbg !16664       ; 3 uses
  %i.hz = icmp uge i64 %i.hy, %i.hx, !dbg !16665
  %i.ia = icmp ult i64 %i.hy, 122785
  %or.cond110 = and i1 %i.hz, %i.ia, !dbg !16665
  br i1 %or.cond110, label %bb.au, label %bb.at, !dbg !16665, !prof !794

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.hx, i64 noundef %i.hy, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #18, !dbg !16666
  unreachable, !dbg !16666

bb.au:                                            ; preds = %bb.as
  %i.ib = getelementptr inbounds nuw i8, ptr @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10dictionary17kBrotliDictionary, i64 %i.hx, !dbg !16667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !16668
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.aq, i8 0, i64 38, i1 false), !dbg !16669
  %i.ic = trunc i64 %i.hq to i32, !dbg !16670
  %i.id = call noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor9transform23TransformDictionaryWord(ptr noalias noundef nonnull %i.aq, i64 noundef 38, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ib, i64 noundef %i.gg, i32 noundef %i.fx, i32 noundef %i.ic), !dbg !16671 ; 3 uses
  %i.ie = sext i32 %i.id to i64, !dbg !16672      ; 5 uses
  %.not109 = icmp ult i64 %.sroa.016.1, %i.ie, !dbg !16673
  br i1 %.not109, label %bb.av, label %bb.aw, !dbg !16673

bb.av:                                            ; preds = %bb.au
  %i.if = icmp eq i64 %.sroa.016.1, 0, !dbg !16674
  br i1 %i.if, label %bb.be, label %bb.ay, !dbg !16674

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !16675
  %i.ig = trunc nuw nsw i32 %i.fx to i8, !dbg !16676
  %i.ih = trunc i64 %i.hq to i8, !dbg !16677
  %i.ii = trunc i32 %i.id to i8, !dbg !16678
  %i.ij = trunc i64 %i.hs to i32, !dbg !16679
  store i32 %i.ij, ptr %i.ed, align 4, !dbg !16675
  store i8 %i.ig, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !16675
  store i8 %i.ih, ptr %.sroa.551.0..sroa_idx, align 1, !dbg !16675
  store i8 %i.ii, ptr %.sroa.652.0..sroa_idx, align 2, !dbg !16675
  store i8 0, ptr %.sroa.753.0..sroa_idx, align 1, !dbg !16675
  store i8 1, ptr %i.ap, align 8, !dbg !16675
  call fastcc void @_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.ap), !dbg !16680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !16681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !16682
  %.not.i = icmp ugt i32 %i.id, 38, !dbg !16683
  br i1 %.not.i, label %bb.ax, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !16683, !prof !712

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #18, !dbg !16684, !noalias !16480
  unreachable, !dbg !16684

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.aw
  store ptr %i.aq, ptr %i.ao, align 8, !dbg !16682
  store i64 %i.ie, ptr %.sroa.455.0..sroa_idx, align 8, !dbg !16682
  store i64 0, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !16682
  store ptr inttoptr (i64 1 to ptr), ptr %i.ee, align 8, !dbg !16682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !16682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !16685
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, i64 noundef %i.ie), !dbg !16686
  %i.ik = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an), !dbg !16687
  br i1 %i.ik, label %bb.bg, label %bb.bf, !dbg !16687, !prof !724

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !16688
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, i64 noundef %.sroa.016.1), !dbg !16689
  call void @llvm.experimental.noalias.scope.decl(metadata !16482), !dbg !16690
  %i.il = load i64, ptr %i.ef, align 8, !dbg !16691, !alias.scope !16482, !noundef !664
  %i.im = icmp eq i64 %i.il, 0, !dbg !16692
  br i1 %i.im, label %bb.ba, label %bb.az, !dbg !16692

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !16693, !noalias !16483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.am, i64 24, i1 false), !dbg !16693, !noalias !16484
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120, align 8, !dbg !16693, !noalias !16483
  store i8 2, ptr %i.x, align 8, !dbg !16693, !noalias !16483
  call fastcc void @_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.x), !dbg !16694, !noalias !16482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !16695, !noalias !16483
  br label %bb.ba, !dbg !16696

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.in = load i64, ptr %i.eh, align 8, !dbg !16697, !alias.scope !16482, !noundef !664
  %i.io = icmp eq i64 %i.in, 0, !dbg !16698
  br i1 %i.io, label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122, label %bb.bb, !dbg !16698

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !16699, !noalias !16483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !dbg !16700, !noalias !16484
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121, align 8, !dbg !16699, !noalias !16483
  store i8 2, ptr %i.w, align 8, !dbg !16699, !noalias !16483
  call fastcc void @_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.w), !dbg !16701, !noalias !16482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !16702, !noalias !16483
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122, !dbg !16703

_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !16704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !16705
  store ptr %i.aq, ptr %i.al, align 8, !dbg !16705
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.461.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !16705
  store ptr inttoptr (i64 1 to ptr), ptr %i.ek, align 8, !dbg !16705
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !16705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !16706
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, i64 noundef 0), !dbg !16707
  %i.ip = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak), !dbg !16708
  br i1 %i.ip, label %bb.bd, label %bb.bc, !dbg !16708, !prof !724

bb.bc:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #18, !dbg !16709
  unreachable, !dbg !16709

bb.bd:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !16710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !16710
  br label %bb.be, !dbg !16711

bb.be:                                            ; preds = %bb.bd, %bb.av, %bb.bg
  %.sroa.016.5 = phi i64 [ %i.iq, %bb.bg ], [ 0, %bb.av ], [ 0, %bb.bd ], !dbg !16583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !16712
  br label %bb.ao, !dbg !16713

bb.bf:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #18, !dbg !16714
  unreachable, !dbg !16714

bb.bg:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.iq = sub nuw i64 %.sroa.016.1, %i.ie, !dbg !16715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !16716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !16716
  br label %bb.be, !dbg !16717

bb.bh:                                            ; preds = %bb.ao
  %i.ir = add i64 %.sroa.08.0416, 1, !dbg !16718  ; 7 uses
  %i.is = icmp ugt i64 %i.en, %i.ir, !dbg !16719
  br i1 %i.is, label %bb.bi, label %bb.bl, !dbg !16719

bb.bi:                                            ; preds = %bb.bh
  %i.it = icmp ult i64 %i.ir, %i.ep, !dbg !16720
  br i1 %i.it, label %bb.bj, label %bb.bk, !dbg !16720

bb.bj:                                            ; preds = %bb.bi
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ir, !dbg !16720
  %i.iv = load i32, ptr %i.iu, align 4, !dbg !16720, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !16721
  %i.iw = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ir, !dbg !16722
  %i.ix = load i8, ptr %i.iw, align 1, !dbg !16722, !noundef !664
  store i8 %i.ix, ptr %i.es, align 1, !dbg !16721
  store i8 3, ptr %i.ah, align 8, !dbg !16721
  call fastcc void @_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.ah), !dbg !16723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !16724
  br label %bb.bl, !dbg !16725

bb.bk:                                            ; preds = %bb.bi
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ir, i64 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #18, !dbg !16720
  unreachable, !dbg !16720

bb.bl:                                            ; preds = %bb.bh, %bb.bj, %bb.ao
  %.sroa.075.2 = phi i32 [ %i.iv, %bb.bj ], [ %i.hh, %bb.ao ], [ -2147483648, %bb.bh ], !dbg !16651
  %.sroa.08.1 = phi i64 [ %i.ir, %bb.bj ], [ %.sroa.08.0416, %bb.ao ], [ %i.ir, %bb.bh ], !dbg !16726
  %i.iy = icmp eq i32 %i.fx, 0, !dbg !16727
  br i1 %i.iy, label %bb.bm, label %bb.bn, !dbg !16727

bb.bm:                                            ; preds = %bb.bp, %bb.bo, %bb.br, %bb.bn, %bb.bl
  %.sroa.077.2 = phi i32 [ %.sroa.077.1412, %bb.bl ], [ %i.jn, %bb.br ], [ %.sroa.077.1412, %bb.bn ], [ %i.jh, %bb.bo ], [ -2147483648, %bb.bp ], !dbg !16534
  %.sroa.012.1 = phi i64 [ %.sroa.012.0415, %bb.bl ], [ %i.jj, %bb.br ], [ %.sroa.012.0415, %bb.bn ], [ %.sroa.012.0415, %bb.bo ], [ %i.jj, %bb.bp ], !dbg !16728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !16729
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, i64 noundef %.sroa.066.0), !dbg !16730
  %i.iz = load i64, ptr %i.fb, align 8, !dbg !16731, !noundef !664
  %i.ja = load i64, ptr %i.fc, align 8, !dbg !16731, !noundef !664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i64 48, i1 false), !dbg !16732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !16733
  %i.jb = add i64 %i.iz, %i.fn, !dbg !16734
  %i.jc = add i64 %i.jb, %i.ja, !dbg !16735       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !16736
  %i.jd = icmp eq ptr %i.fh, %i.bx, !dbg !16539
  br i1 %i.jd, label %._crit_edge421, label %bb.n, !dbg !16436

bb.bn:                                            ; preds = %bb.bl
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.028.0413, i64 12, !dbg !16737
  %i.jf = load i16, ptr %i.je, align 4, !dbg !16737, !noundef !664
  %i.jg = icmp ugt i16 %i.jf, 127, !dbg !16737
  br i1 %i.jg, label %bb.bo, label %bb.bm, !dbg !16737

bb.bo:                                            ; preds = %bb.bn
  %i.jh = add i32 %.sroa.077.1412, -1, !dbg !16738 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0, !dbg !16739
  br i1 %i.ji, label %bb.bp, label %bb.bm, !dbg !16739

bb.bp:                                            ; preds = %bb.bo
  %i.jj = add i64 %.sroa.012.0415, 1, !dbg !16740 ; 7 uses
  %i.jk = icmp ugt i64 %i.ev, %i.jj, !dbg !16741
  br i1 %i.jk, label %bb.bq, label %bb.bm, !dbg !16741

bb.bq:                                            ; preds = %bb.bp
  %i.jl = icmp ult i64 %i.jj, %i.ex, !dbg !16742
  br i1 %i.jl, label %bb.br, label %bb.bs, !dbg !16742

bb.br:                                            ; preds = %bb.bq
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.jj, !dbg !16742
  %i.jn = load i32, ptr %i.jm, align 4, !dbg !16742, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !16743
  %i.jo = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.jj, !dbg !16744
  %i.jp = load i8, ptr %i.jo, align 1, !dbg !16744, !noundef !664
  store i8 %i.jp, ptr %i.fa, align 1, !dbg !16743
  store i8 5, ptr %i.ag, align 8, !dbg !16743
  call fastcc void @_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(1656) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(56) %i.ag), !dbg !16745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !16746
  br label %bb.bm, !dbg !16747

bb.bs:                                            ; preds = %bb.bq
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.jj, i64 noundef %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #18, !dbg !16742
  unreachable, !dbg !16742

_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128: ; preds = %_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet.exit150, %bb.dg, %bb.cu, %bb.ct, %_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet.exit, %bb.cf, %.lr.ph
  %i.jq = sub i64 %.sroa.016.2403, %i.gr, !dbg !16748 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false), !dbg !16749
  %i.jr = add i64 %.sroa.04.2404, 1, !dbg !16750  ; 7 uses
  %i.js = icmp ugt i64 %i.dl, %i.jr, !dbg !16751
  br i1 %i.js, label %bb.dr, label %bb.ds, !dbg !16751

bb.bt:                                            ; preds = %.lr.ph
  %i.jt = icmp eq i64 %.sroa.6.0.copyload171, 0, !dbg !16752 ; 3 uses
  br i1 %.not108, label %bb.cq, label %bb.bu, !dbg !16753

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.jt, label %bb.cf, label %bb.bv, !dbg !16754

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !16755, !noalias !16490
  store i64 %.sroa.0.0.copyload, ptr %i.co, align 8, !dbg !16755, !noalias !16491
  store i64 %.sroa.6.0.copyload171, ptr %.sroa.6.0..sroa_idx172, align 8, !dbg !16755, !noalias !16491
  store i64 %.sroa.10.sroa.0.0.copyload, ptr %.sroa.10.0..sroa_idx181, align 8, !dbg !16755, !noalias !16491
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126, align 8, !dbg !16755, !noalias !16490
  store i8 2, ptr %i.v, align 8, !dbg !16755, !noalias !16490
  call void @llvm.experimental.noalias.scope.decl(metadata !16492), !dbg !16756
  %i.ju = load i64, ptr %i.cp, align 8, !dbg !16757, !alias.scope !16492, !noalias !16493, !noundef !664 ; 12 uses
  %.val12.i135 = load ptr, ptr %i.cq, align 8, !dbg !16758, !alias.scope !16492, !noalias !16493, !nonnull !664, !noundef !664 ; 3 uses
  %.val13.i136 = load i64, ptr %i.cr, align 8, !dbg !16758, !alias.scope !16492, !noalias !16493, !noundef !664 ; 2 uses
  %i.jv = icmp eq i64 %i.ju, %.val13.i136, !dbg !16757
  br i1 %i.jv, label %bb.bw, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtB24_11SliceOffsetEE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i137, !dbg !16759

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtB24_11SliceOffsetEE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i137: ; preds = %bb.ca, %bb.bz, %bb.bv
  %.val11.i138 = phi i64 [ %i.ka, %bb.bz ], [ %i.ka, %bb.ca ], [ %.val13.i136, %bb.bv ], !dbg !16760 ; 3 uses
  %.val10.i139 = phi ptr [ %i.jz, %bb.bz ], [ %i.jz, %bb.ca ], [ %.val12.i135, %bb.bv ], !dbg !16760
  %i.jw = icmp eq i64 %i.ju, %.val11.i138, !dbg !16761
  br i1 %i.jw, label %bb.ce, label %bb.cb, !dbg !16762

bb.bw:                                            ; preds = %bb.bv
  %i.jx = shl i64 %i.ju, 1, !dbg !16763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16764, !noalias !16494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16765, !noalias !16494
  store i32 1, ptr %i.cs, align 4, !dbg !16766, !alias.scope !16495, !noalias !16494
  store i32 0, ptr %i.ct, align 8, !dbg !16766, !alias.scope !16495, !noalias !16494
  store i8 0, ptr %i.j, align 8, !dbg !16767, !alias.scope !16495, !noalias !16494
  call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtBO_11SliceOffsetENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j, i64 noundef %i.jx), !dbg !16768, !noalias !16494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16764, !noalias !16494
  %i.jy = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtBH_11SliceOffsetEE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !16769, !noalias !16494 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16770, !noalias !16494
  %i.jz = extractvalue { ptr, i64 } %i.jy, 0, !dbg !16771 ; 6 uses
  %i.ka = extractvalue { ptr, i64 } %i.jy, 1, !dbg !16771 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ], !noalias !16493
  %.not.i.i140 = icmp ugt i64 %i.ju, %i.ka, !dbg !16772
  br i1 %.not.i.i140, label %bb.bx, label %bb.by, !dbg !16772, !prof !712

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @548) #18
          to label %.noexc.i141 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !16773, !noalias !16494

.noexc.i141:                                      ; preds = %bb.bx
  unreachable, !dbg !16773

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvXs3_NtCscgRAwXFJnXP_4core5sliceSINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtBA_11SliceOffsetEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 %i.jz, i64 noundef %i.ju, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val12.i135, i64 noundef %i.ju, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @549)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !16774, !noalias !16494

bb.bz:                                            ; preds = %bb.by
  store ptr %i.jz, ptr %i.cq, align 8, !dbg !16775, !alias.scope !16492, !noalias !16493
  store i64 %i.ka, ptr %i.cr, align 8, !dbg !16775, !alias.scope !16492, !noalias !16493
  %i.kb = icmp eq i64 %i.ju, 0, !dbg !16776
  br i1 %i.kb, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtB24_11SliceOffsetEE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i137, label %bb.ca, !dbg !16776

bb.ca:                                            ; preds = %bb.bz
  %i.kc = mul nuw nsw i64 %i.ju, 40, !dbg !16777
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.val12.i135, i64 noundef range(i64 1, 0) %i.kc, i64 noundef 8) #19, !dbg !16778, !noalias !16494
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtB24_11SliceOffsetEE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i137, !dbg !16779

bb.cb:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtB24_11SliceOffsetEE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !16780, !noalias !16494
  call void @_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_7CommandNtNtB7_10input_pair14InputReferenceE6freezeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v), !dbg !16781, !noalias !16496
  %i.kd = icmp ult i64 %i.ju, %.val11.i138, !dbg !16782
  br i1 %i.kd, label %bb.cc, label %bb.cd, !dbg !16782

bb.cc:                                            ; preds = %bb.cb
  %i.ke = getelementptr inbounds nuw [40 x i8], ptr %.val10.i139, i64 %i.ju, !dbg !16782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ke, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !dbg !16782, !noalias !16496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !16783, !noalias !16494
  %i.kf = add nuw i64 %i.ju, 1, !dbg !16784
  store i64 %i.kf, ptr %i.cp, align 8, !dbg !16784, !alias.scope !16492, !noalias !16493
  br label %_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet.exit142, !dbg !16785

bb.cd:                                            ; preds = %bb.cb
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ju, i64 noundef %.val11.i138, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @550) #18, !dbg !16782, !noalias !16496
  unreachable, !dbg !16782

bb.ce:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorINtNtNtCsk4ZPsEfLtLH_6brotli3enc9interface7CommandNtB24_11SliceOffsetEE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i137
  store i8 1, ptr %i.cu, align 1, !dbg !16786, !alias.scope !16492, !noalias !16493
  br label %_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet.exit142, !dbg !16787

common.resume.sink.split:                         ; preds = %.loopexit.split-lp219.loopexit.split-lp, %.loopexit.split-lp214.loopexit.split-lp, %.loopexit.split-lp209.loopexit.split-lp, %.loopexit.split-lp204.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sink580 = phi i64 [ %i.lr, %.loopexit.split-lp214.loopexit.split-lp ], [ %i.ld, %.loopexit.split-lp209.loopexit.split-lp ], [ %i.kp, %.loopexit.split-lp204.loopexit.split-lp ], [ %i.ka, %.loopexit.split-lp.loopexit.split-lp ], [ %i.mn, %.loopexit.split-lp219.loopexit.split-lp ]
  %.sink = phi ptr [ %i.lq, %.loopexit.split-lp214.loopexit.split-lp ], [ %i.lc, %.loopexit.split-lp209.loopexit.split-lp ], [ %i.ko, %.loopexit.split-lp204.loopexit.split-lp ], [ %i.jz, %.loopexit.split-lp.loopexit.split-lp ], [ %i.mm, %.loopexit.split-lp219.loopexit.split-lp ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp646, %.loopexit.split-lp214.loopexit.split-lp ], [ %lpad.loopexit.split-lp643, %.loopexit.split-lp209.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp204.loopexit.split-lp ], [ %lpad.loopexit.split-lp639, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp649, %.loopexit.split-lp219.loopexit.split-lp ]
  %i.kg = mul nuw nsw i64 %.sink580, 40, !dbg !16752
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef range(i64 1, 0) %i.kg, i64 noundef 8) #19, !dbg !16752, !noalias !664
  br label %common.resume, !dbg !16752

common.resume:                                    ; preds = %common.resume.sink.split, %.loopexit.split-lp219.loopexit.split-lp, %.loopexit.split-lp214.loopexit.split-lp, %.loopexit.split-lp209.loopexit.split-lp, %.loopexit.split-lp204.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp646, %.loopexit.split-lp214.loopexit.split-lp ], [ %lpad.loopexit.split-lp639, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp204.loopexit.split-lp ], [ %lpad.loopexit.split-lp643, %.loopexit.split-lp209.loopexit.split-lp ], [ %lpad.loopexit.split-lp649, %.loopexit.split-lp219.loopexit.split-lp ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !16752

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.by, %bb.bx
  %lpad.loopexit.split-lp639 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = icmp eq i64 %i.ka, 0, !dbg !16788
  br i1 %i.kh, label %common.resume, label %common.resume.sink.split, !dbg !16788

_RNvXs_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB4_12CommandQueueNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB6_9interface16CommandProcessor4pushCsfISxE4fmY1Y_14polars_parquet.exit142: ; preds = %bb.cc, %bb.ce
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.ew = phi i64 [ %i.hy, %bb.bs ], [ %i.ec, %.lr.ph ]
  %.sroa.04.2153 = phi i64 [ %i.hs, %bb.bs ], [ %.sroa.04.0169, %.lr.ph ]
  %.sroa.016.2152 = phi i64 [ %i.hr, %bb.bs ], [ %.sroa.016.0166, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !17144
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef %i.ew), !dbg !17145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !17146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !17146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false), !dbg !17147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !17148
  %i.ex = load i64, ptr %i.bi, align 8, !dbg !17149, !noundef !664
  %i.ey = load i64, ptr %i.bj, align 8, !dbg !17150, !noundef !664
  %i.ez = add i64 %i.ey, %i.ex, !dbg !17151       ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0, !dbg !17152
  br i1 %i.fa, label %bb.bp, label %bb.bq, !dbg !17152

bb.ad:                                            ; preds = %._crit_edge
  call void @_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p), !dbg !17172
  br label %bb.af, !dbg !17172

bb.ae:                                            ; preds = %._crit_edge
  br i1 %i.bm, label %bb.ag, label %bb.ah, !dbg !17173

bb.af:                                            ; preds = %bb.ag, %bb.ah, %bb.ad
  %i.fb = sub i64 %.sroa.016.2.lcssa, %.lcssa, !dbg !17174
  %i.fc = trunc nuw i64 %.lcssa to i32, !dbg !17174
  %i.fd = sub nuw i32 %.sroa.047.3.lcssa, %i.fc, !dbg !17174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !17175
  br label %bb.u, !dbg !17176

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p), !dbg !17177
  br label %bb.af, !dbg !17177

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor18push_rand_literalsCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p), !dbg !17178
  br label %bb.af, !dbg !17178

bb.ai:                                            ; preds = %bb.u
  %.sroa.0.0.i114 = call noundef i64 @llvm.umin.i64(i64 %i.dv, i64 %.sroa.016.1), !dbg !17179 ; 5 uses
  %i.fe = icmp eq i64 %.sroa.0.0.i114, 0, !dbg !17180
  br i1 %i.fe, label %bb.al, label %bb.ak, !dbg !17180

bb.aj:                                            ; preds = %bb.u
  %i.ff = icmp ugt i32 %i.dm, 3, !dbg !17181
  br i1 %i.ff, label %bb.ap, label %bb.ao, !dbg !17181, !prof !724

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17182
  %i.fg = trunc i64 %.sroa.043.0 to i32, !dbg !17183
  %i.fh = trunc nuw i64 %.sroa.0.0.i114 to i32, !dbg !17184
  store i32 %i.fg, ptr %i.bu, align 4, !dbg !17182
  store i32 %i.fh, ptr %i.bv, align 8, !dbg !17182
  store i8 0, ptr %i.e, align 8, !dbg !17182
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.e), !dbg !17185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17186
  br label %bb.al, !dbg !17187

bb.al:                                            ; preds = %bb.ai, %bb.ak
  %i.fi = sub nuw i64 %.sroa.016.1, %.sroa.0.0.i114, !dbg !17188 ; 2 uses
  %i.fj = icmp eq i64 %i.dq, 1, !dbg !17189
  %i.fk = icmp eq i64 %i.dr, 0
  %or.cond = select i1 %i.fj, i1 %i.fk, i1 false, !dbg !17189
  br i1 %or.cond, label %bb.an, label %bb.am, !dbg !17189

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false), !dbg !17191
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.d, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.s, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148), !dbg !17192
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.bw, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.d, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149), !dbg !17193
  %i.fl = trunc i64 %.sroa.043.0 to i32, !dbg !17194
  store i32 %i.fl, ptr %i.s, align 4, !dbg !17194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17195
  br label %bb.an, !dbg !17196

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ba
  %.sroa.066.0 = phi i64 [ %i.gj, %bb.ba ], [ %.sroa.0.0.i114, %bb.al ], [ %.sroa.0.0.i114, %bb.am ], !dbg !17197
  %.sroa.016.4 = phi i64 [ %.sroa.016.5, %bb.ba ], [ %i.fi, %bb.al ], [ %i.fi, %bb.am ], !dbg !17197
  %i.fm = add i32 %.sroa.075.1162, -1, !dbg !17198 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0, !dbg !17199
  br i1 %i.fn, label %bb.bd, label %bb.bh, !dbg !17199

bb.ao:                                            ; preds = %bb.aj
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #18, !dbg !17200
  unreachable, !dbg !17200

bb.ap:                                            ; preds = %bb.aj
  %i.fo = icmp ult i32 %i.dm, 25, !dbg !17201
  br i1 %i.fo, label %bb.ar, label %bb.aq, !dbg !17201, !prof !724

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #18, !dbg !17202
  unreachable, !dbg !17202

bb.ar:                                            ; preds = %bb.ap
  %i.fp = xor i64 %.sroa.0.0.i113, -1, !dbg !17203
  %i.fq = add i64 %.sroa.043.0, %i.fp, !dbg !17203 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr @154, i64 %i.dv, !dbg !17204
  %i.fs = load i8, ptr %i.fr, align 1, !dbg !17204, !noundef !664
  %i.ft = and i8 %i.fs, 63, !dbg !17205
  %i.fu = zext nneg i8 %i.ft to i64, !dbg !17205  ; 2 uses
  %i.fv = lshr i64 %i.fq, %i.fu, !dbg !17205      ; 2 uses
  %notmask = shl nsw i64 -1, %i.fu, !dbg !17206
  %i.fw = xor i64 %notmask, -1, !dbg !17206
  %i.fx = and i64 %i.fq, %i.fw, !dbg !17207       ; 2 uses
  %i.fy = mul i64 %i.fx, %i.dv, !dbg !17208
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @155, i64 %i.dv, !dbg !17209
  %i.ga = load i32, ptr %i.fz, align 4, !dbg !17209, !noundef !664
  %i.gb = zext i32 %i.ga to i64, !dbg !17209
  %i.gc = add i64 %i.fy, %i.gb, !dbg !17208       ; 4 uses
  %i.gd = add i64 %i.gc, %i.dv, !dbg !17210       ; 3 uses
  %i.ge = icmp uge i64 %i.gd, %i.gc, !dbg !17211
  %i.gf = icmp ult i64 %i.gd, 122785
  %or.cond110 = and i1 %i.ge, %i.gf, !dbg !17211
  br i1 %or.cond110, label %bb.at, label %bb.as, !dbg !17211, !prof !794

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.gc, i64 noundef %i.gd, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #18, !dbg !17212
  unreachable, !dbg !17212

bb.at:                                            ; preds = %bb.ar
  %i.gg = getelementptr inbounds nuw i8, ptr @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10dictionary17kBrotliDictionary, i64 %i.gc, !dbg !17213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !17214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.l, i8 0, i64 38, i1 false), !dbg !17215
  %i.gh = trunc i64 %i.fv to i32, !dbg !17216
  %i.gi = call noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor9transform23TransformDictionaryWord(ptr noalias noundef nonnull %i.l, i64 noundef 38, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %i.dv, i32 noundef %i.dm, i32 noundef %i.gh), !dbg !17217 ; 3 uses
  %i.gj = sext i32 %i.gi to i64, !dbg !17218      ; 5 uses
  %.not109 = icmp ult i64 %.sroa.016.1, %i.gj, !dbg !17219
  br i1 %.not109, label %bb.au, label %bb.av, !dbg !17219

bb.au:                                            ; preds = %bb.at
  %i.gk = icmp eq i64 %.sroa.016.1, 0, !dbg !17220
  br i1 %i.gk, label %bb.ba, label %bb.ax, !dbg !17220

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17221
  %i.gl = trunc nuw nsw i32 %i.dm to i8, !dbg !17222
  %i.gm = trunc i64 %i.fv to i8, !dbg !17223
  %i.gn = trunc i32 %i.gi to i8, !dbg !17224
  %i.go = trunc i64 %i.fx to i32, !dbg !17225
  store i32 %i.go, ptr %i.bx, align 4, !dbg !17221
  store i8 %i.gl, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17221
  store i8 %i.gm, ptr %.sroa.551.0..sroa_idx, align 1, !dbg !17221
  store i8 %i.gn, ptr %.sroa.652.0..sroa_idx, align 2, !dbg !17221
  store i8 0, ptr %.sroa.753.0..sroa_idx, align 1, !dbg !17221
  store i8 1, ptr %i.k, align 8, !dbg !17221
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k), !dbg !17226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17228
  %.not.i = icmp ugt i32 %i.gi, 38, !dbg !17229
  br i1 %.not.i, label %bb.aw, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17229, !prof !712

bb.aw:                                            ; preds = %bb.av
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #18, !dbg !17230, !noalias !17077
  unreachable, !dbg !17230

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.av
  store ptr %i.l, ptr %i.j, align 8, !dbg !17228
  store i64 %i.gj, ptr %.sroa.455.0..sroa_idx, align 8, !dbg !17228
  store i64 0, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !17228
  store ptr inttoptr (i64 1 to ptr), ptr %i.by, align 8, !dbg !17228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !17228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17231
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, i64 noundef %i.gj), !dbg !17232
  %i.gp = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i), !dbg !17233
  br i1 %i.gp, label %bb.bc, label %bb.bb, !dbg !17233, !prof !724

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17234
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, i64 noundef %.sroa.016.1), !dbg !17235
  call void @_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h), !dbg !17236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17238
  store ptr %i.l, ptr %i.g, align 8, !dbg !17238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.461.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !17238
  store ptr inttoptr (i64 1 to ptr), ptr %i.bz, align 8, !dbg !17238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !17238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17239
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, i64 noundef 0), !dbg !17240
  %i.gq = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f), !dbg !17241
  br i1 %i.gq, label %bb.az, label %bb.ay, !dbg !17241, !prof !724

bb.ay:                                            ; preds = %bb.ax
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #18, !dbg !17242
  unreachable, !dbg !17242

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17243
  br label %bb.ba, !dbg !17244

bb.ba:                                            ; preds = %bb.az, %bb.au, %bb.bc
  %.sroa.016.5 = phi i64 [ %i.gr, %bb.bc ], [ 0, %bb.au ], [ 0, %bb.az ], !dbg !17169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !17245
  br label %bb.an, !dbg !17246

bb.bb:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #18, !dbg !17247
  unreachable, !dbg !17247

bb.bc:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.gr = sub nuw i64 %.sroa.016.1, %i.gj, !dbg !17248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17249
  br label %bb.ba, !dbg !17250

bb.bd:                                            ; preds = %bb.an
  %i.gs = add i64 %.sroa.08.0168, 1, !dbg !17251  ; 7 uses
  %i.gt = icmp ugt i64 %i.cc, %i.gs, !dbg !17252
  br i1 %i.gt, label %bb.be, label %bb.bh, !dbg !17252

bb.be:                                            ; preds = %bb.bd
  %i.gu = icmp ult i64 %i.gs, %i.ce, !dbg !17253
  br i1 %i.gu, label %bb.bf, label %bb.bg, !dbg !17253

bb.bf:                                            ; preds = %bb.be
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gs, !dbg !17253
  %i.gw = load i32, ptr %i.gv, align 4, !dbg !17253, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17254
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.gs, !dbg !17255
  %i.gy = load i8, ptr %i.gx, align 1, !dbg !17255, !noundef !664
  store i8 %i.gy, ptr %i.ch, align 1, !dbg !17254
  store i8 3, ptr %i.c, align 8, !dbg !17254
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c), !dbg !17256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17257
  br label %bb.bh, !dbg !17258

bb.bg:                                            ; preds = %bb.be
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.gs, i64 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #18, !dbg !17253
  unreachable, !dbg !17253

bb.bh:                                            ; preds = %bb.bd, %bb.bf, %bb.an
  %.sroa.075.2 = phi i32 [ %i.gw, %bb.bf ], [ %i.fm, %bb.an ], [ -2147483648, %bb.bd ], !dbg !17197
  %.sroa.08.1 = phi i64 [ %i.gs, %bb.bf ], [ %.sroa.08.0168, %bb.an ], [ %i.gs, %bb.bd ], !dbg !17259
  %i.gz = icmp eq i32 %i.dm, 0, !dbg !17260
  br i1 %i.gz, label %bb.bi, label %bb.bj, !dbg !17260

bb.bi:                                            ; preds = %bb.bl, %bb.bk, %bb.bn, %bb.bj, %bb.bh
  %.sroa.077.2 = phi i32 [ %.sroa.077.1164, %bb.bh ], [ %i.ho, %bb.bn ], [ %.sroa.077.1164, %bb.bj ], [ %i.hi, %bb.bk ], [ -2147483648, %bb.bl ], !dbg !17098
  %.sroa.012.1 = phi i64 [ %.sroa.012.0167, %bb.bh ], [ %i.hk, %bb.bn ], [ %.sroa.012.0167, %bb.bj ], [ %.sroa.012.0167, %bb.bk ], [ %i.hk, %bb.bl ], !dbg !17261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17262
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, i64 noundef %.sroa.066.0), !dbg !17263
  %i.ha = load i64, ptr %i.cq, align 8, !dbg !17264, !noundef !664
  %i.hb = load i64, ptr %i.cr, align 8, !dbg !17264, !noundef !664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.cs, i64 48, i1 false), !dbg !17265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17266
  %i.hc = add i64 %i.ha, %i.dc, !dbg !17267
  %i.hd = add i64 %i.hc, %i.hb, !dbg !17268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !17269
  %i.he = icmp eq ptr %i.cw, %i.ar, !dbg !17101
  br i1 %i.he, label %._crit_edge173, label %bb.n, !dbg !17034

bb.bj:                                            ; preds = %bb.bh
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.028.0165, i64 12, !dbg !17270
  %i.hg = load i16, ptr %i.hf, align 4, !dbg !17270, !noundef !664
  %i.hh = icmp ugt i16 %i.hg, 127, !dbg !17270
  br i1 %i.hh, label %bb.bk, label %bb.bi, !dbg !17270

bb.bk:                                            ; preds = %bb.bj
  %i.hi = add i32 %.sroa.077.1164, -1, !dbg !17271 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0, !dbg !17272
  br i1 %i.hj, label %bb.bl, label %bb.bi, !dbg !17272

bb.bl:                                            ; preds = %bb.bk
  %i.hk = add i64 %.sroa.012.0167, 1, !dbg !17273 ; 7 uses
  %i.hl = icmp ugt i64 %i.ck, %i.hk, !dbg !17274
  br i1 %i.hl, label %bb.bm, label %bb.bi, !dbg !17274

bb.bm:                                            ; preds = %bb.bl
  %i.hm = icmp ult i64 %i.hk, %i.cm, !dbg !17275
  br i1 %i.hm, label %bb.bn, label %bb.bo, !dbg !17275

bb.bn:                                            ; preds = %bb.bm
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.hk, !dbg !17275
  %i.ho = load i32, ptr %i.hn, align 4, !dbg !17275, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17276
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.hk, !dbg !17277
  %i.hq = load i8, ptr %i.hp, align 1, !dbg !17277, !noundef !664
  store i8 %i.hq, ptr %i.cp, align 1, !dbg !17276
  store i8 5, ptr %i.b, align 8, !dbg !17276
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !dbg !17278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17279
  br label %bb.bi, !dbg !17280

bb.bo:                                            ; preds = %bb.bm
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.hk, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #18, !dbg !17275
  unreachable, !dbg !17275

bb.bp:                                            ; preds = %bb.bq, %.lr.ph.split
  %i.hr = sub i64 %.sroa.016.2152, %i.ez, !dbg !17156 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !dbg !17157
  %i.hs = add i64 %.sroa.04.2153, 1, !dbg !17158  ; 7 uses
  %i.ht = icmp ugt i64 %i.bp, %i.hs, !dbg !17159
  br i1 %i.ht, label %bb.br, label %bb.bs, !dbg !17159

bb.bq:                                            ; preds = %.lr.ph.split
  call void @_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o), !dbg !17281
  br label %bb.bp, !dbg !17281

bb.br:                                            ; preds = %bb.bp
  %i.hu = icmp ult i64 %i.hs, %i.br, !dbg !17160
  br i1 %i.hu, label %bb.bt, label %.split.us, !dbg !17160

bb.bs:                                            ; preds = %bb.bp, %bb.bt
  %.sroa.047.5 = phi i32 [ %i.ib, %bb.bt ], [ -2147483648, %bb.bp ], !dbg !17164 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !17165
  %i.hv = load i64, ptr %.sroa.5.0..sroa_idx32, align 8, !dbg !17166, !noundef !664
  %i.hw = load i64, ptr %.sroa.7.0..sroa_idx39, align 8, !dbg !17167, !noundef !664
  %i.hx = add i64 %i.hw, %i.hv, !dbg !17168       ; 2 uses
  %i.hy = zext i32 %.sroa.047.5 to i64, !dbg !17142 ; 2 uses
  %i.hz = icmp ugt i64 %i.hx, %i.hy, !dbg !17143
  br i1 %i.hz, label %.lr.ph.split, label %._crit_edge, !dbg !17143

.split.us:                                        ; preds = %bb.br, %bb.aa
  %.us-phi157 = phi i64 [ %i.ek, %bb.aa ], [ %i.hs, %bb.br ], !dbg !17160
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi157, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #18, !dbg !17160
  unreachable, !dbg !17160

bb.bt:                                            ; preds = %bb.br
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.hs, !dbg !17160
  %i.ib = load i32, ptr %i.ia, align 4, !dbg !17160, !noundef !664
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.hs, !dbg !17161
  %i.id = load i8, ptr %i.ic, align 1, !dbg !17161, !noundef !664
  call void @_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc10prior_eval9PriorEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor25push_block_switch_literalCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, i8 noundef %i.id), !dbg !17162
  br label %bb.bs, !dbg !17163
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 4 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(152) %6, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %7, i8 noundef range(i8 0, 5) %8) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17282 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [96 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 5 uses
  %i.s = alloca [56 x i8], align 8                ; 5 uses
  %i.t = alloca [12 x i8], align 4                ; 5 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [96 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [96 x i8], align 8                ; 7 uses
  %i.y = alloca [96 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 9 uses
  %i.aa = alloca [56 x i8], align 8               ; 9 uses
  %i.ab = alloca [38 x i8], align 1               ; 6 uses
  %i.ac = alloca [96 x i8], align 16              ; 15 uses
  %i.ad = alloca [48 x i8], align 8               ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 13 uses
  %i.af = alloca [96 x i8], align 8               ; 8 uses
  %i.ag = alloca [48 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 4               ; 8 uses
  %i.ai = alloca [48 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !17487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !17488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !17489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !dbg !17490
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.ah, i64 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141), !dbg !17491
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !17492
  %i.ak = load i32, ptr %i.aj, align 8, !dbg !17492, !noundef !664
  %i.al = icmp eq i32 %i.ak, 1, !dbg !17492
  br i1 %i.al, label %bb.c, label %bb.b, !dbg !17492

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24, !dbg !17493
  %i.an = load i64, ptr %i.am, align 8, !dbg !17493, !noundef !664
  %.not = icmp eq i64 %i.an, 0, !dbg !17493
  br i1 %.not, label %bb.e, label %bb.d, !dbg !17493

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.047.0 = phi i32 [ %i.au, %bb.d ], [ -2147483648, %bb.a ], !dbg !17494
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 56, !dbg !17495
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 88, !dbg !17495
  %i.aq = load i32, ptr %i.ap, align 8, !dbg !17495, !noundef !664
  %i.ar = icmp eq i32 %i.aq, 1, !dbg !17495
  br i1 %i.ar, label %bb.g, label %bb.f, !dbg !17495

bb.d:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !17493
  %i.at = load ptr, ptr %i.as, align 8, !dbg !17493, !nonnull !664, !align !741, !noundef !664
  %i.au = load i32, ptr %i.at, align 4, !dbg !17493, !noundef !664
  br label %bb.c, !dbg !17496

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #18, !dbg !17493
  unreachable, !dbg !17493

bb.f:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 80, !dbg !17497
  %i.aw = load i64, ptr %i.av, align 8, !dbg !17497, !noundef !664
end_hunk_1
begin_hunk_2_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet:bb.a
bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17630, !noalias !17457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.636.0..sroa_idx37, i64 24, i1 false), !dbg !17631, !noalias !17458
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118, align 8, !dbg !17630, !noalias !17457
  store i8 2, ptr %i.j, align 8, !dbg !17630, !noalias !17457
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j), !dbg !17632, !noalias !17459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17633, !noalias !17457
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17634

bb.av:                                            ; preds = %bb.u
  %.sroa.0.0.i119 = call noundef i64 @llvm.umin.i64(i64 %i.fd, i64 %.sroa.016.1), !dbg !17635 ; 5 uses
  %i.gq = icmp eq i64 %.sroa.0.0.i119, 0, !dbg !17636
  br i1 %i.gq, label %bb.ay, label %bb.ax, !dbg !17636

bb.aw:                                            ; preds = %bb.u
  %i.gr = icmp ugt i32 %i.eu, 3, !dbg !17637
  br i1 %i.gr, label %bb.bc, label %bb.bb, !dbg !17637, !prof !724

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !17638
  %i.gs = trunc i64 %.sroa.043.0 to i32, !dbg !17639
  %i.gt = trunc nuw i64 %.sroa.0.0.i119 to i32, !dbg !17640
  store i32 %i.gs, ptr %i.cx, align 4, !dbg !17638
  store i32 %i.gt, ptr %i.cy, align 8, !dbg !17638
  store i8 0, ptr %i.u, align 8, !dbg !17638
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.u), !dbg !17641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !17642
  br label %bb.ay, !dbg !17643

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %i.gu = sub nuw i64 %.sroa.016.1, %.sroa.0.0.i119, !dbg !17644 ; 2 uses
  %i.gv = icmp eq i64 %i.ey, 1, !dbg !17645
  %i.gw = icmp eq i64 %i.ez, 0
  %or.cond = select i1 %i.gv, i1 %i.gw, i1 false, !dbg !17645
  br i1 %or.cond, label %bb.ba, label %bb.az, !dbg !17645

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !17646
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, i8 0, i64 12, i1 false), !dbg !17647
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.t, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148), !dbg !17648
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.cz, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.t, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149), !dbg !17649
  %i.gx = trunc i64 %.sroa.043.0 to i32, !dbg !17650
  store i32 %i.gx, ptr %i.ah, align 4, !dbg !17650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !17651
  br label %bb.ba, !dbg !17652

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.bq
  %.sroa.066.0 = phi i64 [ %i.hv, %bb.bq ], [ %.sroa.0.0.i119, %bb.ay ], [ %.sroa.0.0.i119, %bb.az ], !dbg !17653
  %.sroa.016.4 = phi i64 [ %.sroa.016.5, %bb.bq ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.az ], !dbg !17653
  %i.gy = add i32 %.sroa.075.1219, -1, !dbg !17654 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0, !dbg !17655
  br i1 %i.gz, label %bb.bt, label %bb.bx, !dbg !17655

bb.bb:                                            ; preds = %bb.aw
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #18, !dbg !17656
  unreachable, !dbg !17656

bb.bc:                                            ; preds = %bb.aw
  %i.ha = icmp ult i32 %i.eu, 25, !dbg !17657
  br i1 %i.ha, label %bb.be, label %bb.bd, !dbg !17657, !prof !724

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #18, !dbg !17658
  unreachable, !dbg !17658

bb.be:                                            ; preds = %bb.bc
  %i.hb = xor i64 %.sroa.0.0.i113, -1, !dbg !17659
  %i.hc = add i64 %.sroa.043.0, %i.hb, !dbg !17659 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr @154, i64 %i.fd, !dbg !17660
  %i.he = load i8, ptr %i.hd, align 1, !dbg !17660, !noundef !664
  %i.hf = and i8 %i.he, 63, !dbg !17661
  %i.hg = zext nneg i8 %i.hf to i64, !dbg !17661  ; 2 uses
  %i.hh = lshr i64 %i.hc, %i.hg, !dbg !17661      ; 2 uses
  %notmask = shl nsw i64 -1, %i.hg, !dbg !17662
  %i.hi = xor i64 %notmask, -1, !dbg !17662
  %i.hj = and i64 %i.hc, %i.hi, !dbg !17663       ; 2 uses
  %i.hk = mul i64 %i.hj, %i.fd, !dbg !17664
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @155, i64 %i.fd, !dbg !17665
  %i.hm = load i32, ptr %i.hl, align 4, !dbg !17665, !noundef !664
  %i.hn = zext i32 %i.hm to i64, !dbg !17665
  %i.ho = add i64 %i.hk, %i.hn, !dbg !17664       ; 4 uses
  %i.hp = add i64 %i.ho, %i.fd, !dbg !17666       ; 3 uses
  %i.hq = icmp uge i64 %i.hp, %i.ho, !dbg !17667
  %i.hr = icmp ult i64 %i.hp, 122785
  %or.cond110 = and i1 %i.hq, %i.hr, !dbg !17667
  br i1 %or.cond110, label %bb.bg, label %bb.bf, !dbg !17667, !prof !794

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ho, i64 noundef %i.hp, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #18, !dbg !17668
  unreachable, !dbg !17668

bb.bg:                                            ; preds = %bb.be
  %i.hs = getelementptr inbounds nuw i8, ptr @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10dictionary17kBrotliDictionary, i64 %i.ho, !dbg !17669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !17670
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ab, i8 0, i64 38, i1 false), !dbg !17671
  %i.ht = trunc i64 %i.hh to i32, !dbg !17672
  %i.hu = call noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor9transform23TransformDictionaryWord(ptr noalias noundef nonnull %i.ab, i64 noundef 38, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.fd, i32 noundef %i.eu, i32 noundef %i.ht), !dbg !17673 ; 3 uses
  %i.hv = sext i32 %i.hu to i64, !dbg !17674      ; 5 uses
  %.not109 = icmp ult i64 %.sroa.016.1, %i.hv, !dbg !17675
  br i1 %.not109, label %bb.bh, label %bb.bi, !dbg !17675

bb.bh:                                            ; preds = %bb.bg
  %i.hw = icmp eq i64 %.sroa.016.1, 0, !dbg !17676
  br i1 %i.hw, label %bb.bq, label %bb.bk, !dbg !17676

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !17677
  %i.hx = trunc nuw nsw i32 %i.eu to i8, !dbg !17678
  %i.hy = trunc i64 %i.hh to i8, !dbg !17679
  %i.hz = trunc i32 %i.hu to i8, !dbg !17680
  %i.ia = trunc i64 %i.hj to i32, !dbg !17681
  store i32 %i.ia, ptr %i.da, align 4, !dbg !17677
  store i8 %i.hx, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17677
  store i8 %i.hy, ptr %.sroa.551.0..sroa_idx, align 1, !dbg !17677
  store i8 %i.hz, ptr %.sroa.652.0..sroa_idx, align 2, !dbg !17677
  store i8 0, ptr %.sroa.753.0..sroa_idx, align 1, !dbg !17677
  store i8 1, ptr %i.aa, align 8, !dbg !17677
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.aa), !dbg !17682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !17683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !17684
  %.not.i = icmp ugt i32 %i.hu, 38, !dbg !17685
  br i1 %.not.i, label %bb.bj, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17685, !prof !712

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #18, !dbg !17686, !noalias !17474
  unreachable, !dbg !17686

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.bi
  store ptr %i.ab, ptr %i.z, align 8, !dbg !17684
  store i64 %i.hv, ptr %.sroa.455.0..sroa_idx, align 8, !dbg !17684
  store i64 0, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !17684
  store ptr inttoptr (i64 1 to ptr), ptr %i.db, align 8, !dbg !17684
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !17684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !17687
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef %i.hv), !dbg !17688
  %i.ib = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y), !dbg !17689
  br i1 %i.ib, label %bb.bs, label %bb.br, !dbg !17689, !prof !724

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !17690
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef %.sroa.016.1), !dbg !17691
  call void @llvm.experimental.noalias.scope.decl(metadata !17476), !dbg !17692
  %i.ic = load i64, ptr %i.dc, align 8, !dbg !17693, !alias.scope !17476, !noundef !664
  %i.id = icmp eq i64 %i.ic, 0, !dbg !17694
  br i1 %i.id, label %bb.bm, label %bb.bl, !dbg !17694

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17695, !noalias !17477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.x, i64 24, i1 false), !dbg !17695, !noalias !17478
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120, align 8, !dbg !17695, !noalias !17477
  store i8 2, ptr %i.i, align 8, !dbg !17695, !noalias !17477
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.i), !dbg !17696, !noalias !17476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17697, !noalias !17477
  br label %bb.bm, !dbg !17698

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ie = load i64, ptr %i.de, align 8, !dbg !17699, !alias.scope !17476, !noundef !664
  %i.if = icmp eq i64 %i.ie, 0, !dbg !17700
  br i1 %i.if, label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122, label %bb.bn, !dbg !17700

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17701, !noalias !17477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.df, i64 24, i1 false), !dbg !17702, !noalias !17478
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121, align 8, !dbg !17701, !noalias !17477
  store i8 2, ptr %i.h, align 8, !dbg !17701, !noalias !17477
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !dbg !17703, !noalias !17476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17704, !noalias !17477
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122, !dbg !17705

_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !17706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !17707
  store ptr %i.ab, ptr %i.w, align 8, !dbg !17707
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.461.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !17707
  store ptr inttoptr (i64 1 to ptr), ptr %i.dh, align 8, !dbg !17707
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !17707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !17708
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef 0), !dbg !17709
  %i.ig = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v), !dbg !17710
  br i1 %i.ig, label %bb.bp, label %bb.bo, !dbg !17710, !prof !724

bb.bo:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #18, !dbg !17711
  unreachable, !dbg !17711

bb.bp:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !17712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !17712
  br label %bb.bq, !dbg !17713

bb.bq:                                            ; preds = %bb.bp, %bb.bh, %bb.bs
  %.sroa.016.5 = phi i64 [ %i.ih, %bb.bs ], [ 0, %bb.bh ], [ 0, %bb.bp ], !dbg !17594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !17714
  br label %bb.ba, !dbg !17715

bb.br:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #18, !dbg !17716
  unreachable, !dbg !17716

bb.bs:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.ih = sub nuw i64 %.sroa.016.1, %i.hv, !dbg !17717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !17718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !17718
  br label %bb.bq, !dbg !17719

bb.bt:                                            ; preds = %bb.ba
  %i.ii = add i64 %.sroa.08.0225, 1, !dbg !17720  ; 7 uses
  %i.ij = icmp ugt i64 %i.dk, %i.ii, !dbg !17721
  br i1 %i.ij, label %bb.bu, label %bb.bx, !dbg !17721

bb.bu:                                            ; preds = %bb.bt
  %i.ik = icmp ult i64 %i.ii, %i.dm, !dbg !17722
  br i1 %i.ik, label %bb.bv, label %bb.bw, !dbg !17722

bb.bv:                                            ; preds = %bb.bu
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ii, !dbg !17722
  %i.im = load i32, ptr %i.il, align 4, !dbg !17722, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !17723
  %i.in = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ii, !dbg !17724
  %i.io = load i8, ptr %i.in, align 1, !dbg !17724, !noundef !664
  store i8 %i.io, ptr %i.dp, align 1, !dbg !17723
  store i8 3, ptr %i.s, align 8, !dbg !17723
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.s), !dbg !17725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !17726
  br label %bb.bx, !dbg !17727

bb.bw:                                            ; preds = %bb.bu
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #18, !dbg !17722
  unreachable, !dbg !17722

bb.bx:                                            ; preds = %bb.bt, %bb.bv, %bb.ba
  %.sroa.075.2 = phi i32 [ %i.im, %bb.bv ], [ %i.gy, %bb.ba ], [ -2147483648, %bb.bt ], !dbg !17653
  %.sroa.08.1 = phi i64 [ %i.ii, %bb.bv ], [ %.sroa.08.0225, %bb.ba ], [ %i.ii, %bb.bt ], !dbg !17728
  %i.ip = icmp eq i32 %i.eu, 0, !dbg !17729
  br i1 %i.ip, label %bb.by, label %bb.bz, !dbg !17729

bb.by:                                            ; preds = %bb.cb, %bb.ca, %bb.cd, %bb.bz, %bb.bx
  %.sroa.077.2 = phi i32 [ %.sroa.077.1221, %bb.bx ], [ %i.je, %bb.cd ], [ %.sroa.077.1221, %bb.bz ], [ %i.iy, %bb.ca ], [ -2147483648, %bb.cb ], !dbg !17502
  %.sroa.012.1 = phi i64 [ %.sroa.012.0224, %bb.bx ], [ %i.ja, %bb.cd ], [ %.sroa.012.0224, %bb.bz ], [ %.sroa.012.0224, %bb.ca ], [ %i.ja, %bb.cb ], !dbg !17730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !17731
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef %.sroa.066.0), !dbg !17732
  %i.iq = load i64, ptr %i.dy, align 8, !dbg !17733, !noundef !664
  %i.ir = load i64, ptr %i.dz, align 8, !dbg !17733, !noundef !664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ea, i64 48, i1 false), !dbg !17734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !17735
  %i.is = add i64 %i.iq, %i.ek, !dbg !17736
  %i.it = add i64 %i.is, %i.ir, !dbg !17737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !17738
  %i.iu = icmp eq ptr %i.ee, %i.bi, !dbg !17507
  br i1 %i.iu, label %._crit_edge230, label %bb.n, !dbg !17423

bb.bz:                                            ; preds = %bb.bx
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.028.0222, i64 12, !dbg !17739
  %i.iw = load i16, ptr %i.iv, align 4, !dbg !17739, !noundef !664
  %i.ix = icmp ugt i16 %i.iw, 127, !dbg !17739
  br i1 %i.ix, label %bb.ca, label %bb.by, !dbg !17739

bb.ca:                                            ; preds = %bb.bz
  %i.iy = add i32 %.sroa.077.1221, -1, !dbg !17740 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0, !dbg !17741
  br i1 %i.iz, label %bb.cb, label %bb.by, !dbg !17741

bb.cb:                                            ; preds = %bb.ca
  %i.ja = add i64 %.sroa.012.0224, 1, !dbg !17742 ; 7 uses
  %i.jb = icmp ugt i64 %i.ds, %i.ja, !dbg !17743
  br i1 %i.jb, label %bb.cc, label %bb.by, !dbg !17743

bb.cc:                                            ; preds = %bb.cb
  %i.jc = icmp ult i64 %i.ja, %i.du, !dbg !17744
  br i1 %i.jc, label %bb.cd, label %bb.ce, !dbg !17744

bb.cd:                                            ; preds = %bb.cc
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ja, !dbg !17744
  %i.je = load i32, ptr %i.jd, align 4, !dbg !17744, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !17745
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ja, !dbg !17746
  %i.jg = load i8, ptr %i.jf, align 1, !dbg !17746, !noundef !664
  store i8 %i.jg, ptr %i.dx, align 1, !dbg !17745
  store i8 5, ptr %i.r, align 8, !dbg !17745
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r), !dbg !17747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !17748
  br label %bb.by, !dbg !17749

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ja, i64 noundef %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #18, !dbg !17744
  unreachable, !dbg !17744

_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128: ; preds = %bb.ci, %bb.ch, %.lr.ph.split
  %i.jh = sub i64 %.sroa.016.2205, %i.gi, !dbg !17581 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !dbg !17582
  %i.ji = add i64 %.sroa.04.2206, 1, !dbg !17583  ; 7 uses
  %i.jj = icmp ugt i64 %i.ck, %i.ji, !dbg !17584
  br i1 %i.jj, label %bb.cj, label %bb.ck, !dbg !17584

bb.cf:                                            ; preds = %.lr.ph.split
  %i.jk = icmp eq i64 %.sroa.6.0.copyload139, 0, !dbg !17750
  br i1 %i.jk, label %bb.ch, label %bb.cg, !dbg !17750

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17751, !noalias !17484
  store <2 x i64> %i.gg, ptr %i.bz, align 8, !dbg !17751, !noalias !17485
  store i64 %.sroa.10.sroa.0.0.copyload, ptr %.sroa.10.0..sroa_idx149, align 8, !dbg !17751, !noalias !17485
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126, align 8, !dbg !17751, !noalias !17484
  store i8 2, ptr %i.g, align 8, !dbg !17751, !noalias !17484
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !17752, !noalias !17486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17753, !noalias !17484
  br label %bb.ch, !dbg !17754

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jl = icmp eq i64 %.sroa.13.0.copyload, 0, !dbg !17755
  br i1 %i.jl, label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128, label %bb.ci, !dbg !17755

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17756, !noalias !17484
  store <2 x i64> %i.gh, ptr %i.ca, align 8, !dbg !17757, !noalias !17485
  store i64 %.sroa.17.0.copyload, ptr %.sroa.17.24..sroa_idx, align 8, !dbg !17757, !noalias !17485
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127, align 8, !dbg !17756, !noalias !17484
  store i8 2, ptr %i.f, align 8, !dbg !17756, !noalias !17484
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.f), !dbg !17758, !noalias !17486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17759, !noalias !17484
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128, !dbg !17760

bb.cj:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128
  %i.jm = icmp ult i64 %i.ji, %i.cm, !dbg !17585
  br i1 %i.jm, label %bb.cl, label %.split.us, !dbg !17585

bb.ck:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128, %bb.cl
  %.sroa.047.5 = phi i32 [ %i.js, %bb.cl ], [ -2147483648, %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128 ], !dbg !17557 ; 2 uses
  %.pr = load i64, ptr %.sroa.7.0..sroa_idx39, align 8, !dbg !17591 ; 2 uses
  %i.jn = load i64, ptr %.sroa.5.0..sroa_idx32, align 8, !dbg !17592, !noundef !664 ; 2 uses
  %i.jo = add i64 %i.jn, %.pr, !dbg !17593        ; 2 uses
  %i.jp = zext i32 %.sroa.047.5 to i64, !dbg !17548 ; 2 uses
  %i.jq = icmp ugt i64 %i.jo, %i.jp, !dbg !17549
  br i1 %i.jq, label %.lr.ph.split, label %._crit_edge, !dbg !17549

.split.us:                                        ; preds = %bb.cj, %bb.af
  %.us-phi212 = phi i64 [ %i.ft, %bb.af ], [ %i.ji, %bb.cj ], !dbg !17585
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi212, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #18, !dbg !17585
  unreachable, !dbg !17585

bb.cl:                                            ; preds = %bb.cj
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ji, !dbg !17585
  %i.js = load i32, ptr %i.jr, align 4, !dbg !17585, !noundef !664
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ji, !dbg !17586
  %i.ju = load i8, ptr %i.jt, align 1, !dbg !17586, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17587, !noalias !17442
  store i8 %i.ju, ptr %i.cp, align 1, !dbg !17587, !noalias !17442
  store i8 0, ptr %i.cq, align 2, !dbg !17587, !noalias !17442
  store i8 4, ptr %i.a, align 8, !dbg !17587, !noalias !17442
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_11stride_eval10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(240) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a), !dbg !17588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17589, !noalias !17442
  br label %bb.ck, !dbg !17590
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 4 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(152) %6, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %7, i8 noundef range(i8 0, 5) %8) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17761 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 6 uses
  %i.q = alloca [96 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 5 uses
  %i.s = alloca [56 x i8], align 8                ; 5 uses
  %i.t = alloca [12 x i8], align 4                ; 5 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [96 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [96 x i8], align 8                ; 7 uses
  %i.y = alloca [96 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 9 uses
  %i.aa = alloca [56 x i8], align 8               ; 9 uses
  %i.ab = alloca [38 x i8], align 1               ; 6 uses
  %i.ac = alloca [96 x i8], align 16              ; 15 uses
  %i.ad = alloca [48 x i8], align 8               ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 13 uses
  %i.af = alloca [96 x i8], align 8               ; 8 uses
  %i.ag = alloca [48 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 4               ; 8 uses
  %i.ai = alloca [48 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !17966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !17967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !17968
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !dbg !17969
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.ah, i64 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141), !dbg !17970
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !17971
  %i.ak = load i32, ptr %i.aj, align 8, !dbg !17971, !noundef !664
  %i.al = icmp eq i32 %i.ak, 1, !dbg !17971
  br i1 %i.al, label %bb.c, label %bb.b, !dbg !17971
end_hunk_2
begin_hunk_3_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream21process_command_queueINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet:bb.a
bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18109, !noalias !17936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.636.0..sroa_idx37, i64 24, i1 false), !dbg !18110, !noalias !17937
  store i8 1, ptr %.sroa.42.0..sroa_idx.i118, align 8, !dbg !18109, !noalias !17936
  store i8 2, ptr %i.j, align 8, !dbg !18109, !noalias !17936
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j), !dbg !18111, !noalias !17938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18112, !noalias !17936
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !18113

bb.av:                                            ; preds = %bb.u
  %.sroa.0.0.i119 = call noundef i64 @llvm.umin.i64(i64 %i.fd, i64 %.sroa.016.1), !dbg !18114 ; 5 uses
  %i.gq = icmp eq i64 %.sroa.0.0.i119, 0, !dbg !18115
  br i1 %i.gq, label %bb.ay, label %bb.ax, !dbg !18115

bb.aw:                                            ; preds = %bb.u
  %i.gr = icmp ugt i32 %i.eu, 3, !dbg !18116
  br i1 %i.gr, label %bb.bc, label %bb.bb, !dbg !18116, !prof !724

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !18117
  %i.gs = trunc i64 %.sroa.043.0 to i32, !dbg !18118
  %i.gt = trunc nuw i64 %.sroa.0.0.i119 to i32, !dbg !18119
  store i32 %i.gs, ptr %i.cx, align 4, !dbg !18117
  store i32 %i.gt, ptr %i.cy, align 8, !dbg !18117
  store i8 0, ptr %i.u, align 8, !dbg !18117
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.u), !dbg !18120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !18121
  br label %bb.ay, !dbg !18122

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %i.gu = sub nuw i64 %.sroa.016.1, %.sroa.0.0.i119, !dbg !18123 ; 2 uses
  %i.gv = icmp eq i64 %i.ey, 1, !dbg !18124
  %i.gw = icmp eq i64 %i.ez, 0
  %or.cond = select i1 %i.gv, i1 %i.gw, i1 false, !dbg !18124
  br i1 %or.cond, label %bb.ba, label %bb.az, !dbg !18124

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !18125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, i8 0, i64 12, i1 false), !dbg !18126
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.t, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ah, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148), !dbg !18127
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_impllECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.cz, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.t, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149), !dbg !18128
  %i.gx = trunc i64 %.sroa.043.0 to i32, !dbg !18129
  store i32 %i.gx, ptr %i.ah, align 4, !dbg !18129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !18130
  br label %bb.ba, !dbg !18131

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.bq
  %.sroa.066.0 = phi i64 [ %i.hv, %bb.bq ], [ %.sroa.0.0.i119, %bb.ay ], [ %.sroa.0.0.i119, %bb.az ], !dbg !18132
  %.sroa.016.4 = phi i64 [ %.sroa.016.5, %bb.bq ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.az ], !dbg !18132
  %i.gy = add i32 %.sroa.075.1219, -1, !dbg !18133 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0, !dbg !18134
  br i1 %i.gz, label %bb.bt, label %bb.bx, !dbg !18134

bb.bb:                                            ; preds = %bb.aw
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #18, !dbg !18135
  unreachable, !dbg !18135

bb.bc:                                            ; preds = %bb.aw
  %i.ha = icmp ult i32 %i.eu, 25, !dbg !18136
  br i1 %i.ha, label %bb.be, label %bb.bd, !dbg !18136, !prof !724

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #18, !dbg !18137
  unreachable, !dbg !18137

bb.be:                                            ; preds = %bb.bc
  %i.hb = xor i64 %.sroa.0.0.i113, -1, !dbg !18138
  %i.hc = add i64 %.sroa.043.0, %i.hb, !dbg !18138 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr @154, i64 %i.fd, !dbg !18139
  %i.he = load i8, ptr %i.hd, align 1, !dbg !18139, !noundef !664
  %i.hf = and i8 %i.he, 63, !dbg !18140
  %i.hg = zext nneg i8 %i.hf to i64, !dbg !18140  ; 2 uses
  %i.hh = lshr i64 %i.hc, %i.hg, !dbg !18140      ; 2 uses
  %notmask = shl nsw i64 -1, %i.hg, !dbg !18141
  %i.hi = xor i64 %notmask, -1, !dbg !18141
  %i.hj = and i64 %i.hc, %i.hi, !dbg !18142       ; 2 uses
  %i.hk = mul i64 %i.hj, %i.fd, !dbg !18143
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @155, i64 %i.fd, !dbg !18144
  %i.hm = load i32, ptr %i.hl, align 4, !dbg !18144, !noundef !664
  %i.hn = zext i32 %i.hm to i64, !dbg !18144
  %i.ho = add i64 %i.hk, %i.hn, !dbg !18143       ; 4 uses
  %i.hp = add i64 %i.ho, %i.fd, !dbg !18145       ; 3 uses
  %i.hq = icmp uge i64 %i.hp, %i.ho, !dbg !18146
  %i.hr = icmp ult i64 %i.hp, 122785
  %or.cond110 = and i1 %i.hq, %i.hr, !dbg !18146
  br i1 %or.cond110, label %bb.bg, label %bb.bf, !dbg !18146, !prof !794

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ho, i64 noundef %i.hp, i64 noundef 122784, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #18, !dbg !18147
  unreachable, !dbg !18147

bb.bg:                                            ; preds = %bb.be
  %i.hs = getelementptr inbounds nuw i8, ptr @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10dictionary17kBrotliDictionary, i64 %i.ho, !dbg !18148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !18149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.ab, i8 0, i64 38, i1 false), !dbg !18150
  %i.ht = trunc i64 %i.hh to i32, !dbg !18151
  %i.hu = call noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor9transform23TransformDictionaryWord(ptr noalias noundef nonnull %i.ab, i64 noundef 38, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.fd, i32 noundef %i.eu, i32 noundef %i.ht), !dbg !18152 ; 3 uses
  %i.hv = sext i32 %i.hu to i64, !dbg !18153      ; 5 uses
  %.not109 = icmp ult i64 %.sroa.016.1, %i.hv, !dbg !18154
  br i1 %.not109, label %bb.bh, label %bb.bi, !dbg !18154

bb.bh:                                            ; preds = %bb.bg
  %i.hw = icmp eq i64 %.sroa.016.1, 0, !dbg !18155
  br i1 %i.hw, label %bb.bq, label %bb.bk, !dbg !18155

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !18156
  %i.hx = trunc nuw nsw i32 %i.eu to i8, !dbg !18157
  %i.hy = trunc i64 %i.hh to i8, !dbg !18158
  %i.hz = trunc i32 %i.hu to i8, !dbg !18159
  %i.ia = trunc i64 %i.hj to i32, !dbg !18160
  store i32 %i.ia, ptr %i.da, align 4, !dbg !18156
  store i8 %i.hx, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !18156
  store i8 %i.hy, ptr %.sroa.551.0..sroa_idx, align 1, !dbg !18156
  store i8 %i.hz, ptr %.sroa.652.0..sroa_idx, align 2, !dbg !18156
  store i8 0, ptr %.sroa.753.0..sroa_idx, align 1, !dbg !18156
  store i8 1, ptr %i.aa, align 8, !dbg !18156
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.aa), !dbg !18161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !18162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !18163
  %.not.i = icmp ugt i32 %i.hu, 38, !dbg !18164
  br i1 %.not.i, label %bb.bj, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !18164, !prof !712

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #18, !dbg !18165, !noalias !17953
  unreachable, !dbg !18165

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.bi
  store ptr %i.ab, ptr %i.z, align 8, !dbg !18163
  store i64 %i.hv, ptr %.sroa.455.0..sroa_idx, align 8, !dbg !18163
  store i64 0, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !18163
  store ptr inttoptr (i64 1 to ptr), ptr %i.db, align 8, !dbg !18163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !18163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !18166
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef %i.hv), !dbg !18167
  %i.ib = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y), !dbg !18168
  br i1 %i.ib, label %bb.bs, label %bb.br, !dbg !18168, !prof !724

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !18169
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef %.sroa.016.1), !dbg !18170
  call void @llvm.experimental.noalias.scope.decl(metadata !17955), !dbg !18171
  %i.ic = load i64, ptr %i.dc, align 8, !dbg !18172, !alias.scope !17955, !noundef !664
  %i.id = icmp eq i64 %i.ic, 0, !dbg !18173
  br i1 %i.id, label %bb.bm, label %bb.bl, !dbg !18173

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18174, !noalias !17956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.x, i64 24, i1 false), !dbg !18174, !noalias !17957
  store i8 0, ptr %.sroa.4.0..sroa_idx.i120, align 8, !dbg !18174, !noalias !17956
  store i8 2, ptr %i.i, align 8, !dbg !18174, !noalias !17956
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.i), !dbg !18175, !noalias !17955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18176, !noalias !17956
  br label %bb.bm, !dbg !18177

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ie = load i64, ptr %i.de, align 8, !dbg !18178, !alias.scope !17955, !noundef !664
  %i.if = icmp eq i64 %i.ie, 0, !dbg !18179
  br i1 %i.if, label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122, label %bb.bn, !dbg !18179

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18180, !noalias !17956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.df, i64 24, i1 false), !dbg !18181, !noalias !17957
  store i8 0, ptr %.sroa.42.0..sroa_idx.i121, align 8, !dbg !18180, !noalias !17956
  store i8 2, ptr %i.h, align 8, !dbg !18180, !noalias !17956
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !dbg !18182, !noalias !17955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18183, !noalias !17956
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122, !dbg !18184

_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !18185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !18186
  store ptr %i.ab, ptr %i.w, align 8, !dbg !18186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.461.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !18186
  store ptr inttoptr (i64 1 to ptr), ptr %i.dh, align 8, !dbg !18186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !18186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !18187
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef 0), !dbg !18188
  %i.ig = call noundef zeroext i1 @_RNvXs4_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPairNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v), !dbg !18189
  br i1 %i.ig, label %bb.bp, label %bb.bo, !dbg !18189, !prof !724

bb.bo:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #18, !dbg !18190
  unreachable, !dbg !18190

bb.bp:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !18191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !18191
  br label %bb.bq, !dbg !18192

bb.bq:                                            ; preds = %bb.bp, %bb.bh, %bb.bs
  %.sroa.016.5 = phi i64 [ %i.ih, %bb.bs ], [ 0, %bb.bh ], [ 0, %bb.bp ], !dbg !18073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !18193
  br label %bb.ba, !dbg !18194

bb.br:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedNtNtNtCsk4ZPsEfLtLH_6brotli3enc10input_pair9InputPairBM_ECsfISxE4fmY1Y_14polars_parquet(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #18, !dbg !18195
  unreachable, !dbg !18195

bb.bs:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.ih = sub nuw i64 %.sroa.016.1, %i.hv, !dbg !18196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !18197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !18197
  br label %bb.bq, !dbg !18198

bb.bt:                                            ; preds = %bb.ba
  %i.ii = add i64 %.sroa.08.0225, 1, !dbg !18199  ; 7 uses
  %i.ij = icmp ugt i64 %i.dk, %i.ii, !dbg !18200
  br i1 %i.ij, label %bb.bu, label %bb.bx, !dbg !18200

bb.bu:                                            ; preds = %bb.bt
  %i.ik = icmp ult i64 %i.ii, %i.dm, !dbg !18201
  br i1 %i.ik, label %bb.bv, label %bb.bw, !dbg !18201

bb.bv:                                            ; preds = %bb.bu
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ii, !dbg !18201
  %i.im = load i32, ptr %i.il, align 4, !dbg !18201, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !18202
  %i.in = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ii, !dbg !18203
  %i.io = load i8, ptr %i.in, align 1, !dbg !18203, !noundef !664
  store i8 %i.io, ptr %i.dp, align 1, !dbg !18202
  store i8 3, ptr %i.s, align 8, !dbg !18202
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.s), !dbg !18204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !18205
  br label %bb.bx, !dbg !18206

bb.bw:                                            ; preds = %bb.bu
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #18, !dbg !18201
  unreachable, !dbg !18201

bb.bx:                                            ; preds = %bb.bt, %bb.bv, %bb.ba
  %.sroa.075.2 = phi i32 [ %i.im, %bb.bv ], [ %i.gy, %bb.ba ], [ -2147483648, %bb.bt ], !dbg !18132
  %.sroa.08.1 = phi i64 [ %i.ii, %bb.bv ], [ %.sroa.08.0225, %bb.ba ], [ %i.ii, %bb.bt ], !dbg !18207
  %i.ip = icmp eq i32 %i.eu, 0, !dbg !18208
  br i1 %i.ip, label %bb.by, label %bb.bz, !dbg !18208

bb.by:                                            ; preds = %bb.cb, %bb.ca, %bb.cd, %bb.bz, %bb.bx
  %.sroa.077.2 = phi i32 [ %.sroa.077.1221, %bb.bx ], [ %i.je, %bb.cd ], [ %.sroa.077.1221, %bb.bz ], [ %i.iy, %bb.ca ], [ -2147483648, %bb.cb ], !dbg !17981
  %.sroa.012.1 = phi i64 [ %.sroa.012.0224, %bb.bx ], [ %i.ja, %bb.cd ], [ %.sroa.012.0224, %bb.bz ], [ %.sroa.012.0224, %bb.ca ], [ %i.ja, %bb.cb ], !dbg !18209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !18210
  call void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc10input_pairNtB5_9InputPair8split_at(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, i64 noundef %.sroa.066.0), !dbg !18211
  %i.iq = load i64, ptr %i.dy, align 8, !dbg !18212, !noundef !664
  %i.ir = load i64, ptr %i.dz, align 8, !dbg !18212, !noundef !664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.ea, i64 48, i1 false), !dbg !18213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !18214
  %i.is = add i64 %i.iq, %i.ek, !dbg !18215
  %i.it = add i64 %i.is, %i.ir, !dbg !18216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !18217
  %i.iu = icmp eq ptr %i.ee, %i.bi, !dbg !17986
  br i1 %i.iu, label %._crit_edge230, label %bb.n, !dbg !17902

bb.bz:                                            ; preds = %bb.bx
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.028.0222, i64 12, !dbg !18218
  %i.iw = load i16, ptr %i.iv, align 4, !dbg !18218, !noundef !664
  %i.ix = icmp ugt i16 %i.iw, 127, !dbg !18218
  br i1 %i.ix, label %bb.ca, label %bb.by, !dbg !18218

bb.ca:                                            ; preds = %bb.bz
  %i.iy = add i32 %.sroa.077.1221, -1, !dbg !18219 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0, !dbg !18220
  br i1 %i.iz, label %bb.cb, label %bb.by, !dbg !18220

bb.cb:                                            ; preds = %bb.ca
  %i.ja = add i64 %.sroa.012.0224, 1, !dbg !18221 ; 7 uses
  %i.jb = icmp ugt i64 %i.ds, %i.ja, !dbg !18222
  br i1 %i.jb, label %bb.cc, label %bb.by, !dbg !18222

bb.cc:                                            ; preds = %bb.cb
  %i.jc = icmp ult i64 %i.ja, %i.du, !dbg !18223
  br i1 %i.jc, label %bb.cd, label %bb.ce, !dbg !18223

bb.cd:                                            ; preds = %bb.cc
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ja, !dbg !18223
  %i.je = load i32, ptr %i.jd, align 4, !dbg !18223, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !18224
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ja, !dbg !18225
  %i.jg = load i8, ptr %i.jf, align 1, !dbg !18225, !noundef !664
  store i8 %i.jg, ptr %i.dx, align 1, !dbg !18224
  store i8 5, ptr %i.r, align 8, !dbg !18224
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r), !dbg !18226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !18227
  br label %bb.by, !dbg !18228

bb.ce:                                            ; preds = %bb.cc
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ja, i64 noundef %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #18, !dbg !18223
  unreachable, !dbg !18223

_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128: ; preds = %bb.ci, %bb.ch, %.lr.ph.split
  %i.jh = sub i64 %.sroa.016.2205, %i.gi, !dbg !18060 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !dbg !18061
  %i.ji = add i64 %.sroa.04.2206, 1, !dbg !18062  ; 7 uses
  %i.jj = icmp ugt i64 %i.ck, %i.ji, !dbg !18063
  br i1 %i.jj, label %bb.cj, label %bb.ck, !dbg !18063

bb.cf:                                            ; preds = %.lr.ph.split
  %i.jk = icmp eq i64 %.sroa.6.0.copyload139, 0, !dbg !18229
  br i1 %i.jk, label %bb.ch, label %bb.cg, !dbg !18229

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18230, !noalias !17963
  store <2 x i64> %i.gg, ptr %i.bz, align 8, !dbg !18230, !noalias !17964
  store i64 %.sroa.10.sroa.0.0.copyload, ptr %.sroa.10.0..sroa_idx149, align 8, !dbg !18230, !noalias !17964
  store i8 0, ptr %.sroa.4.0..sroa_idx.i126, align 8, !dbg !18230, !noalias !17963
  store i8 2, ptr %i.g, align 8, !dbg !18230, !noalias !17963
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !18231, !noalias !17965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18232, !noalias !17963
  br label %bb.ch, !dbg !18233

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jl = icmp eq i64 %.sroa.13.0.copyload, 0, !dbg !18234
  br i1 %i.jl, label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128, label %bb.ci, !dbg !18234

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18235, !noalias !17963
  store <2 x i64> %i.gh, ptr %i.ca, align 8, !dbg !18236, !noalias !17964
  store i64 %.sroa.17.0.copyload, ptr %.sroa.17.24..sroa_idx, align 8, !dbg !18236, !noalias !17964
  store i8 0, ptr %.sroa.42.0..sroa_idx.i127, align 8, !dbg !18235, !noalias !17963
  store i8 2, ptr %i.f, align 8, !dbg !18235, !noalias !17963
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.f), !dbg !18237, !noalias !17965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18238, !noalias !17963
  br label %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128, !dbg !18239

bb.cj:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128
  %i.jm = icmp ult i64 %i.ji, %i.cm, !dbg !18064
  br i1 %i.jm, label %bb.cl, label %.split.us, !dbg !18064

bb.ck:                                            ; preds = %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128, %bb.cl
  %.sroa.047.5 = phi i32 [ %i.js, %bb.cl ], [ -2147483648, %_RNvYINtNtNtCsk4ZPsEfLtLH_6brotli3enc19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocENtNtB7_9interface16CommandProcessor13push_literalsCsfISxE4fmY1Y_14polars_parquet.exit128 ], !dbg !18036 ; 2 uses
  %.pr = load i64, ptr %.sroa.7.0..sroa_idx39, align 8, !dbg !18070 ; 2 uses
  %i.jn = load i64, ptr %.sroa.5.0..sroa_idx32, align 8, !dbg !18071, !noundef !664 ; 2 uses
  %i.jo = add i64 %i.jn, %.pr, !dbg !18072        ; 2 uses
  %i.jp = zext i32 %.sroa.047.5 to i64, !dbg !18027 ; 2 uses
  %i.jq = icmp ugt i64 %i.jo, %i.jp, !dbg !18028
  br i1 %i.jq, label %.lr.ph.split, label %._crit_edge, !dbg !18028

.split.us:                                        ; preds = %bb.cj, %bb.af
  %.us-phi212 = phi i64 [ %i.ft, %bb.af ], [ %i.ji, %bb.cj ], !dbg !18064
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi212, i64 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #18, !dbg !18064
  unreachable, !dbg !18064

bb.cl:                                            ; preds = %bb.cj
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ji, !dbg !18064
  %i.js = load i32, ptr %i.jr, align 4, !dbg !18064, !noundef !664
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ji, !dbg !18065
  %i.ju = load i8, ptr %i.jt, align 1, !dbg !18065, !noundef !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18066, !noalias !17921
  store i8 %i.ju, ptr %i.cp, align 1, !dbg !18066, !noalias !17921
  store i8 0, ptr %i.cq, align 2, !dbg !18066, !noalias !17921
  store i8 4, ptr %i.a, align 8, !dbg !18066, !noalias !17921
  call void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc12ir_interpret9push_baseINtNtB4_19context_map_entropy17ContextMapEntropyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(920) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a), !dbg !18067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18068, !noalias !17921
  br label %bb.ck, !dbg !18069
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream29store_uncompressed_meta_blockNCNvMs2_NtB4_6writerINtB1r_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhENtNtB4y_9std_alloc13StandardAllocE14flush_or_close0B5m_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %0, i1 noundef zeroext %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, i64 noundef range(i64 0, 4294967296) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, i64 noundef %7, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef range(i64 0, -9223372036854775808) %11, i1 noundef zeroext %12) unnamed_addr #0 !dbg !18240 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 22 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18290
  call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream24InputPairFromMaskedInput(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4, i64 noundef %7, i64 noundef %5), !dbg !18290
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18291, !nonnull !664, !noundef !664 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18291
  %i.f = load i64, ptr %i.e, align 8, !dbg !18291, !noundef !664 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18292
  %i.h = load ptr, ptr %i.g, align 8, !dbg !18292, !nonnull !664, !noundef !664 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !18292
  %i.j = load i64, ptr %i.i, align 8, !dbg !18292, !noundef !664 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18293
  tail call void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream38BrotliStoreUncompressedMetaBlockHeader(i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull %10, i64 noundef %11), !dbg !18294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18267), !dbg !18295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18268), !dbg !18295
  %i.k = load i64, ptr %9, align 8, !dbg !18296, !alias.scope !18267, !noundef !664
  %i.l = add i64 %i.k, 7, !dbg !18297
  %i.m = and i64 %i.l, 4294967288, !dbg !18298    ; 2 uses
  store i64 %i.m, ptr %9, align 8, !dbg !18298, !alias.scope !18267
  %i.n = lshr exact i64 %i.m, 3, !dbg !18299      ; 6 uses
  %i.o = icmp samesign ult i64 %i.n, %11, !dbg !18300
  br i1 %i.o, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit, label %bb.b, !dbg !18300

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef range(i64 0, -9223372036854775808) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #18, !dbg !18300, !noalias !18269
  unreachable, !dbg !18300

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 %i.n, !dbg !18300 ; 2 uses
  store i8 0, ptr %i.p, align 1, !dbg !18300, !alias.scope !18268
  %i.q = add i64 %i.n, %i.f, !dbg !18301          ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.n, !dbg !18302
  %.not5 = icmp ugt i64 %i.q, %11
  %or.cond = or i1 %i.r, %.not5, !dbg !18302
  br i1 %or.cond, label %bb.c, label %bb.d, !dbg !18302, !prof !727

bb.c:                                             ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.q, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #18, !dbg !18303
  unreachable, !dbg !18303

bb.d:                                             ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit
  tail call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.p, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167), !dbg !18304
  %i.s = load i64, ptr %9, align 8, !dbg !18305, !noundef !664
end_hunk_3
