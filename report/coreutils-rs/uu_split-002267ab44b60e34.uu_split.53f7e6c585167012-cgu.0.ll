Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_split-002267ab44b60e34.uu_split.53f7e6c585167012-cgu.0?download=true
inline.NumInlined: 1204
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCs7cXCwYFNYaI_8uu_split11filter_args:bb.a
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28, !noalias !1417
  br label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.ew = load ptr, ptr %i.w, align 8, !alias.scope !1420, !noalias !1417, !nonnull !10, !noundef !10
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.pre13.i.i.i.i.i.i.i
  store i32 %spec.select.i.ph.i.i.i.i.i.i.i, ptr %i.ex, align 4, !noalias !1417
  %i.ey = add i64 %.pre13.i.i.i.i.i.i.i, 1
  store i64 %i.ey, ptr %i.x, align 8, !alias.scope !1420, !noalias !1417
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.em, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.split.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i.i: ; preds = %split.i.i.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bt, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 4) #26, !noalias !1419
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1418, !noalias !1419
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i.i, %split.i.i.i.i.i.i.i
  %i.ez = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i.i ], [ %i.bs, %split.i.i.i.i.i.i.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.bt
  store i32 %spec.select.i.ph.i.i.i.i.i.i34.i, ptr %i.fa, align 4, !noalias !1423
  %i.fb = add nuw nsw i64 %i.bt, 1                ; 3 uses
  store i64 %i.fb, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1418, !noalias !1419
  %.not.i11.i.i.i.i.i.i.i = icmp eq ptr %i.eo, %i.y
  br i1 %.not.i11.i.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i: ; preds = %bb.q, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit.i.i
  %.sroa.8.0.copyload.i = phi i64 [ %i.bt, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit.i.i ], [ %i.fb, %bb.q ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !1424
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1424
  %.pr.pre.i = load i64, ptr %i.x, align 8, !noalias !1373
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i
  %i.fc = phi i64 [ %.pr.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ %i.bq, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ inttoptr (i64 4 to ptr), %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1374
  %i.fd = icmp ult i64 %i.fc, 2305843009213693952
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.fc, 0
  br i1 %i.fe, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i
  %i.ff = load ptr, ptr %i.w, align 8, !noalias !1373, !nonnull !10, !noundef !10 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1373
  call fastcc void @_RINvXs6_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorRcE9from_iterINtNtNtBU_5slice4iter4ItercEECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.ff, ptr noundef %i.fg) #26, !noalias !1373
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.fh = load i64, ptr %2, align 8, !range !150, !alias.scope !1428, !noalias !1429, !noundef !10 ; 3 uses
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.fj = icmp eq i64 %i.fh, 0
  br i1 %i.fj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i9.i = load ptr, ptr %i.fk, align 8, !alias.scope !1433, !noalias !1429, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9.i, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1434
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1373
  %i.fl = icmp ugt i64 %.sroa.8.0.i, 1
  br i1 %i.fl, label %bb.x, label %bb.w

bb.u:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i
  %.not.i.i12 = icmp slt i64 %i.n, 0
  br i1 %.not.i.i12, label %bb.ab, label %bb.v, !prof !1435

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1436
  %i.fm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, 9) 1) #26, !noalias !1436 ; 3 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.ab, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24.i

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i
  store i64 -1, ptr %0, align 8, !alias.scope !1366, !noalias !1439
  br label %bb.y

bb.x:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i, i64 %.sroa.8.0.i
  call fastcc void @_RINvXs6_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorRcE9from_iterINtNtNtBU_5slice4iter4ItercEECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.sroa.5.0.i, ptr noundef %i.fo) #26, !noalias !1439
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24.i
  %i.fp = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.fp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = shl nuw i64 %.sroa.0.0.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1373
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.z, %bb.y
  %.val.i = load i64, ptr %i.c, align 8, !range !38, !noalias !1373, !noundef !10 ; 2 uses
  %i.fr = icmp eq i64 %.val.i, 0
  br i1 %i.fr, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i
  %.val6.i = load ptr, ptr %i.w, align 8, !noalias !1373, !nonnull !10, !noundef !10
  %i.fs = shl nuw i64 %.val.i, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1373
  br label %_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit

bb.ab:                                            ; preds = %bb.v, %bb.u
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.v ], [ 0, %bb.u ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.n) #29, !noalias !1373
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24.i: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %i.l, i64 %i.n, i1 false), !noalias !1440
  store i64 %i.n, ptr %0, align 8, !alias.scope !1366, !noalias !1439
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fm, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1366, !noalias !1439
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1366, !noalias !1439
  br label %bb.y

_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1373
  br label %bb.ae

bb.ac:                                            ; preds = %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread, %bb.f
  %.sroa.4.0.ph = phi i64 [ 1, %bb.f ], [ 0, %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.n) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24: ; preds = %bb.e, %bb.ad
  %i.ft = phi ptr [ %i.u, %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.e ]
  store i64 %i.n, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ft, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24

bb.ae:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24, %_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  store i8 0, ptr %3, align 1, !alias.scope !1441, !noalias !1446
  %.not.i.i13 = icmp samesign ult i64 %i.n, 2
  br i1 %.not.i.i13, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14: ; preds = %bb.ae
  %i.fu = load i16, ptr %i.l, align 1
  %i.fv = icmp ne i16 11565, %i.fu
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 16 uses
  switch i64 %i.n, label %bb.ap [
    i64 7, label %bb.ah
    i64 12, label %bb.ai
    i64 19, label %bb.ak
    i64 8, label %bb.al
    i64 15, label %bb.an
    i64 11, label %bb.ao
  ]

bb.ag:                                            ; preds = %bb.ap, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14
  %cond.i = icmp eq i64 %i.n, 2
  br i1 %cond.i, label %bb.aq, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit

bb.ah:                                            ; preds = %bb.af
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = xor i32 %i.fz, 1702132066
  %i.gb = getelementptr i8, ptr %i.fy, i64 4
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i32
  %i.ge = xor i32 %i.gd, 115
  %i.gf = or i32 %i.ga, %i.ge
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ap, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.gj = load i64, ptr %i.fy, align 1
  %i.gk = xor i64 %i.gj, 8392847327696415084
  %i.gl = getelementptr i8, ptr %i.fy, i64 8
  %i.gm = load i16, ptr %i.gl, align 1
  %i.gn = zext i16 %i.gm to i64
  %i.go = xor i64 %i.gn, 29541
  %i.gp = or i64 %i.gk, %i.go
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.gt = load i32, ptr %i.fy, align 1
  %i.gu = xor i32 %i.gt, 1701734764
  %i.gv = getelementptr i8, ptr %i.fy, i64 4
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i32
  %i.gy = xor i32 %i.gx, 115
  %i.gz = or i32 %i.gu, %i.gy
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br label %bb.ap

bb.ak:                                            ; preds = %bb.af
  %i.hd = load i128, ptr %i.fy, align 1
  %i.he = xor i128 %i.hd, 140100631948106995316529954322303444065
  %i.hf = getelementptr i8, ptr %i.fy, i64 16
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i128
  %i.hi = xor i128 %i.hh, 120
  %i.hj = or i128 %i.he, %i.hi
  %i.hk = icmp ne i128 %i.hj, 0
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  br label %bb.ap

bb.al:                                            ; preds = %bb.af
  %i.hn = load i32, ptr %i.fy, align 1
  %i.ho = xor i32 %i.hn, 1953261926
  %i.hp = getelementptr i8, ptr %i.fy, i64 4
  %i.hq = load i16, ptr %i.hp, align 1
  %i.hr = zext i16 %i.hq to i32
  %i.hs = xor i32 %i.hr, 29285
  %i.ht = or i32 %i.ho, %i.hs
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hx = load i32, ptr %i.fy, align 1
  %i.hy = xor i32 %i.hx, 1651340654
  %i.hz = getelementptr i8, ptr %i.fy, i64 4
  %i.ia = load i16, ptr %i.hz, align 1
  %i.ib = zext i16 %i.ia to i32
  %i.ic = xor i32 %i.ib, 29285
  %i.id = or i32 %i.hy, %i.ic
  %i.ie = icmp ne i32 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br label %bb.ap

bb.an:                                            ; preds = %bb.af
  %i.ih = load i64, ptr %i.fy, align 1
  %i.ii = xor i64 %i.ih, 7795018924133086579
  %i.ij = getelementptr i8, ptr %i.fy, i64 5
  %i.ik = load i64, ptr %i.ij, align 1
  %i.il = xor i64 %i.ik, 7526754601088593272
  %i.im = or i64 %i.ii, %i.il
  %i.in = icmp ne i64 %i.im, 0
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br label %bb.ap

bb.ao:                                            ; preds = %bb.af
  %i.iq = load i64, ptr %i.fy, align 1
  %i.ir = xor i64 %i.iq, 8031151179397358963
  %i.is = getelementptr i8, ptr %i.fy, i64 8
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = zext i8 %i.it to i64
  %i.iv = xor i64 %i.iu, 114
  %i.iw = or i64 %i.ir, %i.iv
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = zext i1 %i.ix to i32
  %i.iz = icmp eq i32 %i.iy, 0
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.sroa.05.0.shrunk.i = phi i1 [ true, %bb.ah ], [ %i.hm, %bb.ak ], [ %i.ig, %bb.am ], [ true, %bb.al ], [ false, %bb.af ], [ %i.gs, %bb.ai ], [ %i.ip, %bb.an ], [ %i.iz, %bb.ao ], [ %i.hc, %bb.aj ]
  %.sroa.05.0.i = zext i1 %.sroa.05.0.shrunk.i to i8
  store i8 %.sroa.05.0.i, ptr %3, align 1, !alias.scope !1441, !noalias !1446
  br label %bb.ag

bb.aq:                                            ; preds = %bb.ag
  %i.ja = load i16, ptr %i.l, align 1
  %i.jb = icmp ne i16 %i.ja, 25133
  %i.jc = zext i1 %i.jb to i32
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.je = load i16, ptr %i.l, align 1
  %i.jf = icmp ne i16 %i.je, 17197
  %i.jg = zext i1 %i.jf to i32
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ji = load i16, ptr %i.l, align 1
  %i.jj = icmp ne i16 %i.ji, 27693
  %i.jk = zext i1 %i.jj to i32
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jm = load i16, ptr %i.l, align 1
  %i.jn = icmp ne i16 %i.jm, 28205
  %i.jo = zext i1 %i.jn to i32
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jq = load i16, ptr %i.l, align 1
  %i.jr = icmp ne i16 %i.jq, 24877
  %i.js = zext i1 %i.jr to i32
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ju = load i16, ptr %i.l, align 1
  %i.jv = icmp ne i16 %i.ju, 29741
  %i.jw = zext i1 %i.jv to i32
  %i.jx = icmp eq i32 %i.jw, 0
  %i.jy = zext i1 %i.jx to i8
  br label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit

_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit: ; preds = %bb.ae, %bb.ag, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.sroa.07.0.i = phi i8 [ 1, %bb.aq ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.as ], [ 1, %bb.ar ], [ %i.jy, %bb.av ], [ 0, %bb.ag ], [ 0, %bb.ae ]
  store i8 %.sroa.07.0.i, ptr %4, align 1, !alias.scope !1444, !noalias !1448
  %.val = load i64, ptr %1, align 8, !range !38, !noundef !10 ; 2 uses
  %i.jz = icmp eq i64 %.val, 0
  br i1 %i.jz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7cXCwYFNYaI_8uu_split.exit, label %bb.aw

bb.aw:                                            ; preds = %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7cXCwYFNYaI_8uu_split.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.aw, %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvCs7cXCwYFNYaI_8uu_split19print_creating_file(ptr %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #26
  store ptr %i.l, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store i64 1, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.8.val, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.16.val, ptr %.sroa.53.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 1, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1449
  store i64 0, ptr %i.c, align 8, !noalias !1449
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1449
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1449
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.n, align 8, !noalias !1449
  store ptr %i.c, ptr %i.b, align 8, !noalias !1449
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @165, ptr %i.o, align 8, !noalias !1449
  %i.p = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26, !noalias !1453
  br i1 %i.p, label %bb.b, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #25, !noalias !1453
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.a
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !1454 ; 3 uses
  %.sroa.5.0.copyload4 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1454, !nonnull !10, !noundef !10 ; 8 uses
  %.sroa.8.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1454 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  switch i64 %.sroa.8.0.copyload7, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split.exit
  %i.q = load i8, ptr %.sroa.5.0.copyload4, align 1, !alias.scope !1455, !noalias !1458, !noundef !10 ; 2 uses
  switch i8 %i.q, label %bb.d [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split.exit
  %.pr.i = load i8, ptr %.sroa.5.0.copyload4, align 1, !alias.scope !1455, !noalias !1458
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.r = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.q, %bb.c ]
  switch i8 %i.r, label %bb.k [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4, i64 1
  %i.t = add nsw i64 %.sroa.8.0.copyload7, -1
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload4, i64 1 ; 2 uses
  %i.v = add nsw i64 %.sroa.8.0.copyload7, -1     ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.8.0.copyload7, 17
  br i1 %i.w, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.f
  %.not103137.i = icmp eq i64 %i.v, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %.sroa.0.1136.i = phi ptr [ %i.x, %bb.i ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.y, %bb.i ], [ %i.v, %bb.f ]
  %.sroa.084.0134.i = phi i64 [ %i.aj, %bb.i ], [ 0, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.y = add nsw i64 %.sroa.26.1135.i, -1         ; 2 uses
  %i.z = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 0
  %i.ab = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.ab, label %.loopexit, label %bb.g, !prof !17

bb.g:                                             ; preds = %.lr.ph.i
  %i.ac = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1455, !noalias !1458, !noundef !10
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aa, i64 %i.ag) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.y, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.j
  %.sroa.0.2140.i = phi ptr [ %i.aq, %bb.j ], [ %i.u, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ap, %bb.j ], [ %i.v, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.as, %bb.j ], [ 0, %.preheader114.i ]
  %i.ak = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1455, !noalias !1458, !noundef !10
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph141.i
  %i.ao = mul i64 %.sroa.084.2138.i, 10
  %i.ap = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
end_hunk_0
