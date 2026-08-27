Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expr-c49a31e1b3bb1312.uu_expr.1dfcadec2fff7288-cgu.0?download=true
inline.NumInlined: 1053
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvMs7_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_7AstNode4eval:bb.a
bb.v:                                             ; preds = %bb.s
  %i.ew = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.ew, label %_RNvMNtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB2_5BinOp4eval.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1252
  br label %_RNvMNtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB2_5BinOp4eval.exit

bb.x:                                             ; preds = %bb.r
  %.sroa.07.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !1237, !noalias !1248 ; 7 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa.54.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !1237, !noalias !1248 ; 6 uses
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa.54.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !1237, !noalias !1248 ; 4 uses
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa.54.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !1237, !noalias !1248 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1255
  call fastcc void @_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr9to_bigint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bt) #24, !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1255
  call fastcc void @_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr9to_bigint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.58.0..sroa_idx.i.i) #24, !noalias !1248
  %i.ex = load i64, ptr %i.ab, align 8, !range !370, !noalias !1255, !noundef !4 ; 7 uses
  %.not.i.i = icmp eq i64 %i.ex, -2
  %i.ey = load i64, ptr %i.aa, align 8, !range !370, !noalias !1255 ; 7 uses
  %.not44.i.i = icmp eq i64 %i.ey, -2
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not44.i.i
  br i1 %or.cond.i.i, label %bb.y, label %bb.am

bb.y:                                             ; preds = %bb.x
  %i.ez = icmp sgt i64 %i.ey, 0
  br i1 %i.ez, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit.i.i

bb.z:                                             ; preds = %bb.y
  %.val55.i.i = load ptr, ptr %i.ck, align 8, !noalias !1255, !nonnull !4, !noundef !4
  %i.fa = shl nuw i64 %i.ey, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1255
  %i.fb = icmp sgt i64 %i.ex, 0
  br i1 %i.fb, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i

bb.aa:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit.i.i
  %.val53.i.i = load ptr, ptr %i.ci, align 8, !noalias !1255, !nonnull !4, !noundef !4
  %i.fc = shl nuw i64 %i.ex, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i: ; preds = %bb.aa, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1255
  %i.fd = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.fd, label %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1256
  store i64 %.sroa.0.0.copyload.i, ptr %i.z, align 8, !noalias !1260
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.5105.0..sroa_idx106.i.i, align 8, !noalias !1260
  store ptr %.sroa.13.0.copyload.i, ptr %.sroa.6.0..sroa_idx108.i.i, align 8, !noalias !1260
  store i64 %.sroa.16.0.copyload.i, ptr %.sroa.7110.0..sroa_idx111.i.i, align 8, !noalias !1260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1261
  store i64 0, ptr %i.y, align 8, !noalias !1261
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1261
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1261
  store i64 1610612768, ptr %i.cm, align 8, !noalias !1261
  store ptr %i.y, ptr %i.x, align 8, !noalias !1261
  store ptr @94, ptr %i.cn, align 8, !noalias !1261
  %i.fe = call noundef zeroext i1 @_RNvXs7_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #24, !noalias !1265
  %i.ff = inttoptr i64 %.sroa.8.0.copyload.i to ptr
  br i1 %i.fe, label %bb.ac, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i.i.i, !prof !126

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #25, !noalias !1265
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i.i.i: ; preds = %bb.ab
  %.sroa.096.0.copyload.i.i = load i64, ptr %i.y, align 8, !noalias !1266
  %.sroa.598.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1266
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1261
  %i.fg = icmp sgt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.fg, label %bb.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i.i.i

bb.ad:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i.i.i
  %i.fh = shl nuw i64 %.sroa.0.0.copyload.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1256
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i.i.i: ; preds = %bb.ad, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1256
  br label %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i

_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i.i.i ], [ %.sroa.16.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i ]
  %.sroa.598.0.i.i = phi ptr [ %.sroa.598.0.copyload.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i.i.i ], [ %.sroa.13.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i ] ; 3 uses
  %.sroa.096.0.i.i = phi i64 [ %.sroa.096.0.copyload.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i.i.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit60.i.i ] ; 2 uses
  %i.fi = icmp eq i64 %.sroa.07.0.copyload.i, -2
  br i1 %i.fi, label %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit69.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1267
  store i64 %.sroa.07.0.copyload.i, ptr %i.w, align 8, !noalias !1271
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.5123.0..sroa_idx124.i.i, align 8, !noalias !1271
  store ptr %.sroa.10.0.copyload.i, ptr %.sroa.6126.0..sroa_idx127.i.i, align 8, !noalias !1271
  store i64 %.sroa.12.0.copyload.i, ptr %.sroa.7129.0..sroa_idx130.i.i, align 8, !noalias !1271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1272
  store i64 0, ptr %i.v, align 8, !noalias !1272
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i63.i.i, align 8, !noalias !1272
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i64.i.i, align 8, !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1272
  store i64 1610612768, ptr %i.co, align 8, !noalias !1272
  store ptr %i.v, ptr %i.u, align 8, !noalias !1272
  store ptr @94, ptr %i.cp, align 8, !noalias !1272
  %i.fj = call noundef zeroext i1 @_RNvXs7_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #24, !noalias !1276
  %i.fk = inttoptr i64 %.sroa.7.0.copyload.i to ptr
  br i1 %i.fj, label %bb.af, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i65.i.i, !prof !126

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #25, !noalias !1276
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i65.i.i: ; preds = %bb.ae
  %.sroa.0113.0.copyload.i.i = load i64, ptr %i.v, align 8, !noalias !1277
  %.sroa.5115.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i63.i.i, align 8, !noalias !1277
  %.sroa.7118.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i64.i.i, align 8, !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1272
  %i.fl = icmp sgt i64 %.sroa.07.0.copyload.i, 0
  br i1 %i.fl, label %bb.ag, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i67.i.i

bb.ag:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i65.i.i
  %i.fm = shl nuw i64 %.sroa.07.0.copyload.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1267
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i67.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i67.i.i: ; preds = %bb.ag, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntNtB5_12SpecToString14spec_to_stringCs2zCsf9UsIrc_7uu_expr.exit.i65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1267
  br label %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit69.i.i

_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit69.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i67.i.i, %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i
  %.sroa.7118.0.i.i = phi i64 [ %.sroa.7118.0.copyload.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i67.i.i ], [ %.sroa.12.0.copyload.i, %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i ]
  %.sroa.5115.0.i.i = phi ptr [ %.sroa.5115.0.copyload.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i67.i.i ], [ %.sroa.10.0.copyload.i, %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i ] ; 3 uses
  %.sroa.0113.0.i.i = phi i64 [ %.sroa.0113.0.copyload.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntECs2zCsf9UsIrc_7uu_expr.exit.i67.i.i ], [ %.sroa.7.0.copyload.i, %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.598.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5115.0.i.i) ]
  %i.fn = call noundef zeroext i1 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8collator17try_init_collator(i32 noundef -65023) #24, !noalias !1278 ; 0 uses
  %i.fo = call noundef range(i8 -1, 2) i8 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8collator10locale_cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.598.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5115.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7118.0.i.i) #24, !noalias !1255
  switch i8 %i.fo, label %default.unreachable458 [
    i8 -1, label %bb.ah
    i8 0, label %bb.ai
    i8 1, label %bb.aj
  ]

bb.ah:                                            ; preds = %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit69.i.i
  %i.fp = icmp ult i8 %i.ep, 4
  br i1 %i.fp, label %switch.lookup, label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i

bb.ai:                                            ; preds = %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit69.i.i
  %i.fq = icmp ult i8 %i.ep, 6
  br i1 %i.fq, label %switch.lookup620, label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i

bb.aj:                                            ; preds = %_RNvMs6_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8NumOrStr14eval_as_string.exit69.i.i
  %i.fr = icmp samesign ugt i8 %i.ep, 2
  br label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i

switch.lookup:                                    ; preds = %bb.ah
  %switch.cast = trunc nuw i8 %i.ep to i4
  %switch.downshift = lshr i4 -5, %switch.cast
  %switch.masked = trunc i4 %switch.downshift to i1
  br label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i

switch.lookup620:                                 ; preds = %bb.ai
  %switch.cast621 = trunc nuw i8 %i.ep to i6
  %switch.downshift623 = lshr i6 -26, %switch.cast621
  %switch.masked624 = trunc i6 %switch.downshift623 to i1
  br label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i

_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i: ; preds = %bb.aj, %switch.lookup620, %bb.ai, %switch.lookup, %bb.ah
  %.sroa.0.0.i.i.i = phi i1 [ %switch.masked624, %switch.lookup620 ], [ %i.fr, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ %switch.masked, %switch.lookup ]
  %i.fs = icmp eq i64 %.sroa.0113.0.i.i, 0
  br i1 %i.fs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5115.0.i.i, i64 noundef %.sroa.0113.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit.i.i: ; preds = %bb.ak, %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit.i.i
  %i.ft = icmp eq i64 %.sroa.096.0.i.i, 0
  br i1 %i.ft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit70.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.598.0.i.i, i64 noundef %.sroa.096.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit70.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit70.i.i: ; preds = %bb.al, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2zCsf9UsIrc_7uu_expr.exit.i.i
  br i1 %.sroa.0.0.i.i.i, label %bb.bk, label %bb.bj

bb.am:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %i.fu = load i8, ptr %i.cg, align 8, !range !1202, !alias.scope !1282, !noalias !1287, !noundef !4 ; 3 uses
  %i.fv = load i8, ptr %i.ch, align 8, !range !1202, !alias.scope !1285, !noalias !1288, !noundef !4 ; 2 uses
  %i.fw = call i8 @llvm.ucmp.i8.i8(i8 %i.fu, i8 %i.fv)
  %.not.i71.i.i = icmp eq i8 %i.fu, %i.fv
  br i1 %.not.i71.i.i, label %bb.an, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i

bb.an:                                            ; preds = %bb.am
  switch i8 %i.fu, label %default.unreachable458 [
    i8 0, label %bb.ao
    i8 1, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i
    i8 2, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i = icmp eq i64 %i.ey, -1           ; 2 uses
  %i.fx = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.fy = load i64, ptr %i.cl, align 8
  %.cast540 = ptrtoint ptr %i.fx to i64           ; 2 uses
  %i.fz = trunc nuw i64 %.cast540 to i1
  %spec.select382 = select i1 %i.fz, ptr %i.cl, ptr inttoptr (i64 8 to ptr)
  %.sroa.4.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.cast540, i64 %i.fy ; 5 uses
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %spec.select382, ptr %i.fx ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.ex, -1          ; 2 uses
  %i.ga = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.gb = load i64, ptr %i.cj, align 8
  %.cast541 = ptrtoint ptr %i.ga to i64           ; 2 uses
  %.sroa.42.0.i.i.i.i = select i1 %.not3.i.i.i.i, i64 %.cast541, i64 %i.gb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.gc = call i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sroa.4.0.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sroa.42.0.i.i.i.i)
  %i.gd = icmp eq i64 %.sroa.4.0.i.i.i.i, %.sroa.42.0.i.i.i.i
  br i1 %i.gd, label %bb.ap, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ge = icmp eq i64 %.sroa.4.0.i.i.i.i, 0
  br i1 %i.ge, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i, label %.lr.ph614

.lr.ph614:                                        ; preds = %bb.ap
  %.idx619 = shl nuw nsw i64 %.sroa.4.0.i.i.i.i, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.idx619
  %i.gg = trunc nuw i64 %.cast541 to i1
  %spec.select384 = select i1 %i.gg, ptr %i.cj, ptr inttoptr (i64 8 to ptr)
  %.sroa.01.0.i.i.i.i = select i1 %.not3.i.i.i.i, ptr %spec.select384, ptr %i.ga
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i.i.i, i64 %.sroa.4.0.i.i.i.i
  br label %bb.aq

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.gi = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.gk
  br i1 %i.gi, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph614, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i.i.i.i
  %i.gj = phi ptr [ %i.gf, %.lr.ph614 ], [ %i.gk, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.3.08.i.i.i.i.i.i.i613 = phi ptr [ %i.gh, %.lr.ph614 ], [ %i.gl, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !1289, !noalias !1294 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i.i.i613, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gl, align 8, !alias.scope !1306, !noalias !1309, !noundef !4 ; 2 uses
  %i.gm = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.gm, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i.i.i.i, label %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i

.split.loop.exit17.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.aq
  %i.gn = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val8.i.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i

bb.ar:                                            ; preds = %bb.an
  %.not.i2.i.i.i = icmp eq i64 %i.ex, -1          ; 2 uses
  %i.go = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.gp = load i64, ptr %i.cj, align 8
  %.cast = ptrtoint ptr %i.go to i64              ; 2 uses
  %i.gq = trunc nuw i64 %.cast to i1
  %spec.select386 = select i1 %i.gq, ptr %i.cj, ptr inttoptr (i64 8 to ptr)
  %.sroa.4.0.i3.i.i.i = select i1 %.not.i2.i.i.i, i64 %.cast, i64 %i.gp ; 5 uses
  %.sroa.0.0.i4.i.i.i = select i1 %.not.i2.i.i.i, ptr %spec.select386, ptr %i.go ; 2 uses
  %.not3.i5.i.i.i = icmp eq i64 %i.ey, -1         ; 2 uses
  %i.gr = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.gs = load i64, ptr %i.cl, align 8
  %.cast539 = ptrtoint ptr %i.gr to i64           ; 2 uses
  %.sroa.42.0.i6.i.i.i = select i1 %.not3.i5.i.i.i, i64 %.cast539, i64 %i.gs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.gt = call i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sroa.4.0.i3.i.i.i, i64 range(i64 0, 1152921504606846976) %.sroa.42.0.i6.i.i.i)
  %i.gu = icmp eq i64 %.sroa.4.0.i3.i.i.i, %.sroa.42.0.i6.i.i.i
  br i1 %i.gu, label %bb.as, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.gv = icmp eq i64 %.sroa.4.0.i3.i.i.i, 0
  br i1 %i.gv, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.as
  %.idx = shl nuw nsw i64 %.sroa.4.0.i3.i.i.i, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i4.i.i.i, i64 %.idx
  %i.gx = trunc nuw i64 %.cast539 to i1
  %spec.select388 = select i1 %i.gx, ptr %i.cl, ptr inttoptr (i64 8 to ptr)
  %.sroa.01.0.i7.i.i.i = select i1 %.not3.i5.i.i.i, ptr %spec.select388, ptr %i.gr
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i7.i.i.i, i64 %.sroa.4.0.i3.i.i.i
  br label %bb.at

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i9.i.i.i: ; preds = %bb.at
  %i.gz = icmp eq ptr %.sroa.0.0.i4.i.i.i, %i.hb
  br i1 %i.gz, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i9.i.i.i
  %i.ha = phi ptr [ %i.gw, %.lr.ph ], [ %i.hb, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i9.i.i.i ]
  %.sroa.3.08.i.i.i.i10.i.i.i612 = phi ptr [ %i.gy, %.lr.ph ], [ %i.hc, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i9.i.i.i ]
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i11.i.i.i = load i64, ptr %i.hb, align 8, !alias.scope !1312, !noalias !1317 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i10.i.i.i612, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i12.i.i.i = load i64, ptr %i.hc, align 8, !alias.scope !1329, !noalias !1332, !noundef !4 ; 2 uses
  %i.hd = icmp eq i64 %.val8.i.i.i.i.i.i.i11.i.i.i, %.val7.i.i.i.i.i.i.i.i.i12.i.i.i
  br i1 %i.hd, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i9.i.i.i, label %.split.loop.exit17.i.i.i.i.i.i.i13.i.i.i

.split.loop.exit17.i.i.i.i.i.i.i13.i.i.i:         ; preds = %bb.at
  %i.he = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val8.i.i.i.i.i.i.i11.i.i.i, i64 %.val7.i.i.i.i.i.i.i.i.i12.i.i.i)
  br label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i

_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i: ; preds = %.split.loop.exit17.i.i.i.i.i.i.i13.i.i.i, %bb.ar, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i, %bb.ao, %bb.am
  %.sroa.0.0.i72.i.i = phi i8 [ %i.fw, %bb.am ], [ %i.gt, %bb.ar ], [ %i.he, %.split.loop.exit17.i.i.i.i.i.i.i13.i.i.i ], [ %i.gc, %bb.ao ], [ %i.gn, %.split.loop.exit17.i.i.i.i.i.i.i.i.i.i ]
  switch i8 %.sroa.0.0.i72.i.i, label %default.unreachable1.i74.i.i [
    i8 -1, label %bb.au
    i8 0, label %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i
    i8 1, label %bb.av
  ]

default.unreachable1.i74.i.i:                     ; preds = %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i
  unreachable

bb.au:                                            ; preds = %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i
  %i.hf = icmp ult i8 %i.ep, 4
  br i1 %i.hf, label %switch.lookup625, label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i

_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i9.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0Cs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i.i.i.i.i.i.i, %bb.as, %bb.ap, %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i, %bb.an
  %i.hg = icmp ult i8 %i.ep, 6
  br i1 %i.hg, label %switch.lookup630, label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i

bb.av:                                            ; preds = %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i
  %i.hh = icmp samesign ugt i8 %i.ep, 2
  br label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i

switch.lookup625:                                 ; preds = %bb.au
  %switch.cast626 = trunc nuw i8 %i.ep to i4
  %switch.downshift628 = lshr i4 -5, %switch.cast626
  %switch.masked629 = trunc i4 %switch.downshift628 to i1
  br label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i

switch.lookup630:                                 ; preds = %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i
  %switch.cast631 = trunc nuw i8 %i.ep to i6
  %switch.downshift633 = lshr i6 -26, %switch.cast631
  %switch.masked634 = trunc i6 %switch.downshift633 to i1
  br label %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i

_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i: ; preds = %bb.av, %switch.lookup630, %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i, %switch.lookup625, %bb.au
  %.sroa.0.0.i73.i.i = phi i1 [ %switch.masked634, %switch.lookup630 ], [ %i.hh, %bb.av ], [ false, %_RNvXs4_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i.i ], [ false, %bb.au ], [ %switch.masked629, %switch.lookup625 ]
  %i.hi = icmp sgt i64 %i.ey, 0
  br i1 %i.hi, label %bb.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit79.i.i

bb.aw:                                            ; preds = %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i
  %.val51.i.i = load ptr, ptr %i.ck, align 8, !noalias !1255, !nonnull !4, !noundef !4
  %i.hj = shl nuw i64 %i.ey, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51.i.i, i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit79.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit79.i.i: ; preds = %bb.aw, %_RNCNvMs_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB6_10RelationOp4eval0B8_.exit75.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1255
  %i.hk = icmp sgt i64 %i.ex, 0
  br i1 %i.hk, label %bb.ax, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit83.i.i

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit79.i.i
  %.val49.i.i = load ptr, ptr %i.ci, align 8, !noalias !1255, !nonnull !4, !noundef !4
  %i.hl = shl nuw i64 %i.ex, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49.i.i, i64 noundef %i.hl, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1255
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit83.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit83.i.i: ; preds = %bb.ax, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit79.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1255
  br i1 %.sroa.0.0.i73.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit83.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false), !noalias !1251
  br label %.critedge.i.i

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsioiJd4mgmsb_10num_bigint6bigint6BigIntEECs2zCsf9UsIrc_7uu_expr.exit83.i.i
  store i64 -1, ptr %i.cd, align 8, !alias.scope !1250, !noalias !1251
  store i64 1, ptr %.sroa.012.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !1250, !noalias !1251
  store i64 1, ptr %.sroa.012.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !1250, !noalias !1251
  store i8 2, ptr %.sroa.813.0..sroa_idx.i.i, align 8, !alias.scope !1250, !noalias !1251
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.az, %bb.ay
  store i64 0, ptr %i.aq, align 8, !alias.scope !1250, !noalias !1251
  %.not.i84.i.i = icmp eq i64 %.sroa.07.0.copyload.i, -2
  br i1 %.not.i84.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.critedge.i.i
  %i.hm = icmp sgt i64 %.sroa.07.0.copyload.i, 0
  br i1 %i.hm, label %bb.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrEBF_.exit89.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.hn = inttoptr i64 %.sroa.7.0.copyload.i to ptr
  %i.ho = shl nuw i64 %.sroa.07.0.copyload.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %i.ho, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1335
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrEBF_.exit89.i.i

bb.bc:                                            ; preds = %.critedge.i.i
end_hunk_0
begin_hunk_1_@_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvNtCs4LC5StY13t7_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8, ptr noundef, ptr) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs0_NtCslwwPJGKhBTm_4onig7buffersNtB5_12EncodedBytesNtB5_12EncodedChars9limit_ptr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs4_CslwwPJGKhBTm_4onigNtB5_5Regex8encoding(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @onig_search_with_param(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs0_CslwwPJGKhBTm_4onigNtB5_5Error9from_code(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @onig_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs0_CslwwPJGKhBTm_4onigNtB5_5Error18from_code_and_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXs_NtCslwwPJGKhBTm_4onig11match_paramNtB4_10MatchParamNtNtCs6JMX4GRUq9U_4core7default7Default7default() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs4_CslwwPJGKhBTm_4onigNtB5_5Regex3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCslwwPJGKhBTm_4onig4findNtB4_5Regex8captures(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtCslwwPJGKhBTm_4onig4findNtB4_8Captures2at(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs5_CslwwPJGKhBTm_4onigNtB5_5RegexNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCslwwPJGKhBTm_4onig11match_paramNtB5_10MatchParamNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_NtCslwwPJGKhBTm_4onig6regionNtB5_6RegionNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nounwind nonlazybind uwtable
declare i64 @_RNvXs8_Csh036I4OHgIr_6uucoreNtB5_16CharByteIteratorNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsP_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringINtNtCs6JMX4GRUq9U_4core7convert4FromINtNtB7_6borrow3CoweEE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_CslwwPJGKhBTm_4onigNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.smul.with.overflow.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.ssub.with.overflow.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features4i18n19get_locale_encoding() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvMs4_CslwwPJGKhBTm_4onigNtB5_5Regex12captures_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs9_Csh036I4OHgIr_6uucoreRShNtB5_20IntoCharByteIterator15iter_char_bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8collator17try_init_collator(i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8collator10locale_cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #18

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs6JMX4GRUq9U_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint11subtractionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubRBR_E3sub(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplication10scalar_mul(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplication4mul3(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB6_7BigUintNtCs2PbPfIYQJQA_10num_traits3Num14from_str_radix(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division11div_rem_ref(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { noinline nounwind }
attributes #24 = { nounwind }
attributes #25 = { noinline noreturn nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { inlinehint nounwind }
attributes #28 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs2zCsf9UsIrc_7uu_expr: argument 0"}
!7 = distinct !{!7, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs2zCsf9UsIrc_7uu_expr"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs2zCsf9UsIrc_7uu_expr: argument 0"}
!10 = distinct !{!10, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs2zCsf9UsIrc_7uu_expr"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2zCsf9UsIrc_7uu_expr: argument 0"}
!13 = distinct !{!13, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2zCsf9UsIrc_7uu_expr"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 0"}
!16 = distinct !{!16, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr"}
!17 = !{!15, !12, !9, !6}
!18 = !{!19, !20}
!19 = distinct !{!19, !16, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 1"}
!20 = distinct !{!20, !10, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs2zCsf9UsIrc_7uu_expr: argument 1"}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!23 = distinct !{!23, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!24 = distinct !{!24, !23, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!25 = !{!15, !19, !12, !9, !20, !6}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2zCsf9UsIrc_7uu_expr: argument 0"}
!28 = distinct !{!28, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2zCsf9UsIrc_7uu_expr"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 0"}
!31 = distinct !{!31, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr"}
!32 = !{!30, !27, !9, !6}
!33 = !{!34, !20}
!34 = distinct !{!34, !31, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 1"}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!37 = distinct !{!37, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!38 = distinct !{!38, !37, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!39 = !{!30, !34, !27, !9, !20, !6}
!40 = !{i64 0, i64 -9223372036854775808}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr: argument 0"}
!43 = distinct !{!43, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr: argument 1"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs2zCsf9UsIrc_7uu_expr: argument 0"}
!48 = distinct !{!48, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs2zCsf9UsIrc_7uu_expr"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs2zCsf9UsIrc_7uu_expr: argument 0"}
!51 = distinct !{!51, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs2zCsf9UsIrc_7uu_expr"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2zCsf9UsIrc_7uu_expr: argument 0"}
!54 = distinct !{!54, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2zCsf9UsIrc_7uu_expr"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 0"}
!57 = distinct !{!57, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr"}
!58 = !{!56, !53, !50, !47}
!59 = !{!60, !61}
!60 = distinct !{!60, !57, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 1"}
!61 = distinct !{!61, !51, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs2zCsf9UsIrc_7uu_expr: argument 1"}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!64 = distinct !{!64, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!65 = distinct !{!65, !64, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!66 = !{!56, !60, !53, !50, !61, !47}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2zCsf9UsIrc_7uu_expr: argument 0"}
!69 = distinct !{!69, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2zCsf9UsIrc_7uu_expr"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 0"}
!72 = distinct !{!72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr"}
!73 = !{!71, !68, !50, !47}
!74 = !{!75, !61}
!75 = distinct !{!75, !72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 1"}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!78 = distinct !{!78, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!79 = distinct !{!79, !78, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!80 = !{!71, !75, !68, !50, !61, !47}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr: argument 0"}
!83 = distinct !{!83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr: argument 1"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs2zCsf9UsIrc_7uu_expr: argument 0"}
!88 = distinct !{!88, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs2zCsf9UsIrc_7uu_expr"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs2zCsf9UsIrc_7uu_expr: argument 0"}
!91 = distinct !{!91, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs2zCsf9UsIrc_7uu_expr"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2zCsf9UsIrc_7uu_expr: argument 0"}
!94 = distinct !{!94, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2zCsf9UsIrc_7uu_expr"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 0"}
!97 = distinct !{!97, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr"}
!98 = !{!96, !93, !90, !87}
!99 = !{!100, !101}
!100 = distinct !{!100, !97, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 1"}
!101 = distinct !{!101, !91, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs2zCsf9UsIrc_7uu_expr: argument 1"}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!104 = distinct !{!104, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!105 = distinct !{!105, !104, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!106 = !{!96, !100, !93, !90, !101, !87}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2zCsf9UsIrc_7uu_expr: argument 0"}
!109 = distinct !{!109, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2zCsf9UsIrc_7uu_expr"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 0"}
!112 = distinct !{!112, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr"}
!113 = !{!111, !108, !90, !87}
!114 = !{!115, !101}
!115 = distinct !{!115, !112, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2zCsf9UsIrc_7uu_expr: argument 1"}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!118 = distinct !{!118, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!119 = distinct !{!119, !118, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!120 = !{!111, !115, !108, !90, !101, !87}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr: argument 0"}
!123 = distinct !{!123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2zCsf9UsIrc_7uu_expr: argument 1"}
!126 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB7_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB20_9ExprErrorEE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutmB1k_NtB4f_14LeafOrInternalEB3D_EB20_: argument 0"}
!129 = distinct !{!129, !"_RINvMs10_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB7_16BalancingContextmINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB20_9ExprErrorEE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutmB1k_NtB4f_14LeafOrInternalEB3D_EB20_"}
!130 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_removemECs2zCsf9UsIrc_7uu_expr: argument 0"}
!133 = distinct !{!133, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_removemECs2zCsf9UsIrc_7uu_expr"}
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_slicemECs2zCsf9UsIrc_7uu_expr: argument 0"}
!136 = distinct !{!136, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_slicemECs2zCsf9UsIrc_7uu_expr"}
!137 = distinct !{!137, !136, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_slicemECs2zCsf9UsIrc_7uu_expr: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_removeINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1K_9ExprErrorEEB1K_: argument 1"}
!140 = distinct !{!140, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_removeINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1K_9ExprErrorEEB1K_"}
!141 = !{!142, !128}
!142 = distinct !{!142, !140, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_removeINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1K_9ExprErrorEEB1K_: argument 0"}
!143 = !{!144, !146}
!144 = distinct !{!144, !145, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1L_9ExprErrorEEB1L_: argument 0"}
!145 = distinct !{!145, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1L_9ExprErrorEEB1L_"}
!146 = distinct !{!146, !145, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB1L_9ExprErrorEEB1L_: argument 1"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_removeINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_: argument 0"}
!149 = distinct !{!149, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_removeINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1b_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2w_9ExprErrorEEEEB2w_"}
!150 = distinct !{!150, !151}
!151 = !{!"llvm.loop.unroll.disable"}
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_: argument 0"}
!154 = distinct !{!154, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_"}
!155 = distinct !{!155, !154, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodemINtNtB1c_6result6ResultNtNtCs2zCsf9UsIrc_7uu_expr11syntax_tree8NumOrStrNtB2x_9ExprErrorEEEEB2x_: argument 1"}
!156 = distinct !{!156, !151}
!157 = !{!158}
end_hunk_1
