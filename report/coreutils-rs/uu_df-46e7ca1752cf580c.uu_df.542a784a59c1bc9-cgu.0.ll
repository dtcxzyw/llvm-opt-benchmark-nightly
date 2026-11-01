Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_df-46e7ca1752cf580c.uu_df.542a784a59c1bc9-cgu.0?download=true
inline.NumInlined: 1449
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMs5_NtCss03989lGqH_5uu_df5tableNtB5_12RowFormatter9get_cells:bb.a
bb.u:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  %.val.i.i21 = load ptr, ptr %i.ao, align 8, !alias.scope !2348, !nonnull !6, !noundef !6 ; 3 uses
  %.val1.i.i22 = load i64, ptr %i.ap, align 16, !alias.scope !2348, !noundef !6 ; 8 uses
  %.not.i.i23 = icmp slt i64 %.val1.i.i22, 0
  br i1 %.not.i.i23, label %bb.w, label %bb.v, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.bm = icmp eq i64 %.val1.i.i22, 0
  br i1 %i.bm, label %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringRNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit28, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i24

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i24: ; preds = %bb.v
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2349
  %i.bn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.val1.i.i22, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2349 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i24, %bb.u
  %.sroa.4.0.ph.i27 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i24 ], [ 0, %bb.u ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i27, i64 %.val1.i.i22) #31, !noalias !2350
  unreachable

bb.x:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %.val.i.i21, i64 %.val1.i.i22, i1 false), !noalias !2350
  br label %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringRNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit28

_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringRNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit28: ; preds = %bb.v, %bb.x
  %i.bp = phi ptr [ %i.bn, %bb.x ], [ inttoptr (i64 1 to ptr), %bb.v ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i21, i64 %.val1.i.i22
  %i.br = call fastcc i64 @_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs7Zx3WTHCDWk_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECss03989lGqH_5uu_df(ptr noundef nonnull %.val.i.i21, ptr noundef %i.bq) #30
  store i64 %.val1.i.i22, ptr %i.c, align 8, !alias.scope !2347
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx.i19, align 8, !alias.scope !2347
  store i64 %.val1.i.i22, ptr %.sroa.6.0..sroa_idx.i20, align 8, !alias.scope !2347
  store i64 %i.br, ptr %i.r, align 8, !alias.scope !2347
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit

bb.y:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  %.val.i29 = load ptr, ptr %i.aq, align 8, !alias.scope !2352, !nonnull !6, !noundef !6 ; 4 uses
  %.val1.i = load i64, ptr %i.ar, align 8, !alias.scope !2352, !noundef !6 ; 8 uses
  %.not.i.i30 = icmp slt i64 %.val1.i, 0
  br i1 %.not.i.i30, label %bb.aa, label %bb.z, !prof !12

bb.z:                                             ; preds = %bb.y
  %i.bs = icmp eq i64 %.val1.i, 0
  br i1 %i.bs, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i31

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i31: ; preds = %bb.z
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2353
  %i.bt = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.val1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2353 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i31, %bb.y
  %.sroa.4.0.ph.i35 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i31 ], [ 0, %bb.y ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i35, i64 %.val1.i) #31, !noalias !2354
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i: ; preds = %bb.ac, %bb.z
  %i.bv = phi ptr [ %i.bt, %bb.ac ], [ inttoptr (i64 1 to ptr), %bb.z ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i29, i64 %.val1.i
  %i.bx = call fastcc i64 @_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs7Zx3WTHCDWk_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECss03989lGqH_5uu_df(ptr noundef nonnull %.val.i29, ptr noundef %i.bw) #30
  store i64 %.val1.i, ptr %i.c, align 8, !alias.scope !2351
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx.i19, align 8, !alias.scope !2351
  store i64 %.val1.i, ptr %.sroa.6.0..sroa_idx.i20, align 8, !alias.scope !2351
  store i64 %i.bx, ptr %i.r, align 8, !alias.scope !2351
  call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  %.val.i.i34 = load i64, ptr %i.b, align 8, !range !7, !alias.scope !2356, !noundef !6 ; 2 uses
  %i.by = icmp eq i64 %.val.i.i34, 0
  br i1 %i.by, label %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i29, i64 noundef %.val.i.i34, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2357
  br label %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit

bb.ac:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %.val.i29, i64 %.val1.i, i1 false), !noalias !2354
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i

_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit: ; preds = %bb.p, %bb.o, %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit.thread, %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit45, %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringRNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit28, %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit, %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringRNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  %i.bz = load i64, ptr %i.d, align 8, !range !7, !alias.scope !2358, !noundef !6
  %i.ca = icmp eq i64 %i.at, %i.bz
  br i1 %i.ca, label %bb.ad, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df5table4CellE8push_mutBJ_.exit

bb.ad:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCss03989lGqH_5uu_df5table4CellE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27, !noalias !2359
  %.pre = load ptr, ptr %i.e, align 8, !alias.scope !2358
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df5table4CellE8push_mutBJ_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df5table4CellE8push_mutBJ_.exit: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit, %bb.ad
  %i.cb = phi ptr [ %i.as, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit ], [ %.pre, %bb.ad ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !2358
  %i.cd = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.cd, ptr %i.f, align 8, !alias.scope !2358
  %i.ce = icmp eq ptr %i.au, %i.m
  br i1 %i.ce, label %._crit_edge, label %bb.b

_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit.thread: ; preds = %.lr.ph59, %bb.h
  %.val17 = load ptr, ptr %i.ad, align 8, !nonnull !6, !noundef !6
  %.val18 = load i64, ptr %i.ae, align 16, !noundef !6
  call fastcc void @_RNvMs4_NtCss03989lGqH_5uu_df5tableNtB5_4Cell14from_os_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.c, ptr nonnull %.val17, i64 %.val18) #28
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit

bb.ae:                                            ; preds = %bb.h
  %i.cf = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cg = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  %.not.not.not.i.not.not.not.i.not57 = icmp samesign eq i64 %i.cg, 0
  br i1 %.not.not.not.i.not.not.not.i.not57, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit, label %.lr.ph59

bb.af:                                            ; preds = %.lr.ph59
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.ci, %i.ch
  br i1 %.not.not.not.i.not.not.not.i.not, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.ae, %bb.af
  %i.cj = phi ptr [ %i.ci, %bb.af ], [ %i.cf, %bb.ae ] ; 2 uses
  %.val2.i.i = load i8, ptr %i.cj, align 1, !range !24, !alias.scope !2360, !noalias !2361, !noundef !6
  %i.ck = icmp eq i8 %.val2.i.i, 0
  br i1 %i.ck, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit.thread, label %bb.af

_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  %.val.i36 = load ptr, ptr %i.af, align 8, !alias.scope !2363, !nonnull !6, !noundef !6 ; 4 uses
  %.val1.i37 = load i64, ptr %i.ag, align 8, !alias.scope !2363, !noundef !6 ; 8 uses
  %.not.i.i38 = icmp slt i64 %.val1.i37, 0
  br i1 %.not.i.i38, label %bb.ah, label %bb.ag, !prof !12

bb.ag:                                            ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit
  %i.cl = icmp eq i64 %.val1.i37, 0
  br i1 %i.cl, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i40, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i39

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i39: ; preds = %bb.ag
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2364
  %i.cm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.val1.i37, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2364 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i39, %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit
  %.sroa.4.0.ph.i44 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i39 ], [ 0, %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCss03989lGqH_5uu_df7columns6ColumnNtB5_13SliceContains14slice_containsBG_.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i44, i64 %.val1.i37) #31, !noalias !2365
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i40: ; preds = %bb.aj, %bb.ag
  %i.co = phi ptr [ %i.cm, %bb.aj ], [ inttoptr (i64 1 to ptr), %bb.ag ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i36, i64 %.val1.i37
  %i.cq = call fastcc i64 @_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs7Zx3WTHCDWk_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECss03989lGqH_5uu_df(ptr noundef nonnull %.val.i36, ptr noundef %i.cp) #30
  store i64 %.val1.i37, ptr %i.c, align 8, !alias.scope !2362
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i19, align 8, !alias.scope !2362
  store i64 %.val1.i37, ptr %.sroa.6.0..sroa_idx.i20, align 8, !alias.scope !2362
  store i64 %i.cq, ptr %i.r, align 8, !alias.scope !2362
  call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  %.val.i.i43 = load i64, ptr %i.a, align 8, !range !7, !alias.scope !2367, !noundef !6 ; 2 uses
  %i.cr = icmp eq i64 %.val.i.i43, 0
  br i1 %i.cr, label %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit45, label %bb.ai

bb.ai:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i40
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i36, i64 noundef %.val.i.i43, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2368
  br label %_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit45

bb.aj:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 1 %.val.i36, i64 %.val1.i37, i1 false), !noalias !2365
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i40

_RINvMs4_NtCss03989lGqH_5uu_df5tableNtB6_4Cell11from_stringNtNtCs7tKScEop1B6_5alloc6string6StringEB8_.exit45: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread8.i40, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE6map_orNtNtCss03989lGqH_5uu_df5table4CellNvMs4_B1B_B1z_14from_os_stringEB1D_.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 19 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [224 x i8], align 16              ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [232 x i8], align 8               ; 18 uses
  %i.q = alloca [224 x i8], align 16              ; 25 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [224 x i8], align 16              ; 18 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2502
  store i64 0, ptr %i.i, align 8, !noalias !2502
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !noalias !2502
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8, !noalias !2502
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2501, !nonnull !6, !noundef !6 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2501, !noundef !6 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 2 uses
  %i.ab = icmp samesign eq i64 %i.z, 0            ; 3 uses
  br i1 %i.ab, label %_RNvMs6_NtCss03989lGqH_5uu_df5tableNtB5_6Header11get_headers.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 85
  %i.ad = load i8, ptr %i.ac, align 1, !range !25, !alias.scope !2501 ; 3 uses
  %i.ae = icmp eq i8 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2501 ; 4 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = and i64 %i.ag, 1023
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = urem i64 %i.ag, 1000
  %i.am = icmp eq i64 %i.al, 0
  %or.cond.i.i = or i1 %i.ak, %i.am
  %i.an = zext i64 %i.ag to i128
  %..i.i = select i1 %or.cond.i.i, i8 3, i8 2
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCss03989lGqH_5uu_df.exit.i, %.lr.ph.i
  %.sroa.0.038.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.ar, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCss03989lGqH_5uu_df.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i, i64 1 ; 2 uses
  %i.as = load i8, ptr %.sroa.0.038.i, align 1, !range !24, !noalias !2502, !noundef !6
  switch i8 %i.as, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 20) #28, !noalias !2502
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  switch i8 %i.ad, label %.split23.i [
    i8 1, label %bb.s
    i8 2, label %.split.i
  ]

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 14) #28, !noalias !2502
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  switch i8 %i.ad, label %bb.u [
    i8 1, label %bb.v
    i8 3, label %bb.v
  ]

bb.g:                                             ; preds = %bb.b
  br i1 %i.ae, label %bb.w, label %bb.x

bb.h:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 20) #28, !noalias !2502
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 16) #28, !noalias !2502
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 15) #28, !noalias !2502
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 16) #28, !noalias !2502
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 22) #28, !noalias !2502
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 14) #28, !noalias !2502
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 14) #28, !noalias !2502
  br label %bb.o

bb.o:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit35.i, %bb.s, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit32.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %bb.c
  %i.at = load i64, ptr %i.v, align 8, !alias.scope !2503, !noalias !2502, !noundef !6 ; 3 uses
  %i.au = load i64, ptr %i.i, align 8, !range !7, !alias.scope !2503, !noalias !2502, !noundef !6
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.p, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCss03989lGqH_5uu_df.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #27, !noalias !2504
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCss03989lGqH_5uu_df.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCss03989lGqH_5uu_df.exit.i: ; preds = %bb.p, %bb.o
  %i.aw = load ptr, ptr %i.u, align 8, !alias.scope !2503, !noalias !2502, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2502
  %i.ay = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.ay, ptr %i.v, align 8, !alias.scope !2503, !noalias !2502
  %i.az = icmp eq ptr %i.ar, %i.aa
  br i1 %i.az, label %_RNvMs6_NtCss03989lGqH_5uu_df5tableNtB5_6Header11get_headers.exit.loopexit, label %bb.b

.split23.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2502
  call fastcc void @_RNvNtCss03989lGqH_5uu_df6blocks23to_magnitude_and_suffix(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i128 noundef %i.an, i8 noundef %..i.i, i1 noundef zeroext false) #28, !noalias !2502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2502
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 16) #28, !noalias !2502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2502
  store ptr %i.d, ptr %i.b, align 8, !noalias !2502
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !2502
  store ptr %i.c, ptr %i.ao, align 8, !noalias !2502
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !2502
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @120, ptr noundef nonnull %i.b) #28, !noalias !2502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2502
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !7, !alias.scope !2505, !noalias !2502, !noundef !6 ; 2 uses
  %i.ba = icmp eq i64 %.val.i.i, 0
  br i1 %i.ba, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i, label %bb.q

bb.q:                                             ; preds = %.split23.i
  %.val1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !2505, !noalias !2502, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2506
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i: ; preds = %bb.q, %.split23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2502
  call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %.val.i30.i = load i64, ptr %i.d, align 8, !range !7, !alias.scope !2507, !noalias !2502, !noundef !6 ; 2 uses
  %i.bb = icmp eq i64 %.val.i30.i, 0
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit32.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i
  %.val1.i31.i = load ptr, ptr %i.aq, align 8, !alias.scope !2507, !noalias !2502, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i31.i, i64 noundef %.val.i30.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2508
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit32.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit32.i: ; preds = %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2502
  br label %bb.o

bb.s:                                             ; preds = %bb.d
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 14) #28, !noalias !2502
  br label %bb.o

.split.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2502
  store i64 %i.ag, ptr %i.h, align 8, !noalias !2502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2502
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 16) #28, !noalias !2502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2502
  store ptr %i.h, ptr %i.f, align 8, !noalias !2502
  store ptr @_RNvXsd_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !2502
  store ptr %i.g, ptr %i.ah, align 8, !noalias !2502
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !2502
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @120, ptr noundef nonnull %i.f) #28, !noalias !2502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2502
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  %.val.i33.i = load i64, ptr %i.g, align 8, !range !7, !alias.scope !2509, !noalias !2502, !noundef !6 ; 2 uses
  %i.bc = icmp eq i64 %.val.i33.i, 0
  br i1 %i.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit35.i, label %bb.t

bb.t:                                             ; preds = %.split.i
  %.val1.i34.i = load ptr, ptr %i.ai, align 8, !alias.scope !2509, !noalias !2502, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i34.i, i64 noundef %.val.i33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2510
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit35.i

end_hunk_0
begin_hunk_1_@_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table3new:bb.a
  %i.bu = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #28 ; 6 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ac, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.ac:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1B_9enumerate9EnumerateINtNtNtB1F_5slice4iter4IterNtNtCss03989lGqH_5uu_df7columns6ColumnEENCNvMs7_NtB3i_5tableNtB40_5Table3new0EE9from_iterB3i_.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #31
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1B_9enumerate9EnumerateINtNtNtB1F_5slice4iter4IterNtNtCss03989lGqH_5uu_df7columns6ColumnEENCNvMs7_NtB3i_5tableNtB40_5Table3new0EE9from_iterB3i_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.bw = shl i64 %.sroa.7100.0.copyload, 5       ; 4 uses
  %.not.i.i.i24 = icmp ugt i64 %i.bw, 9223372036854775800
  br i1 %.not.i.i.i24, label %bb.ae, label %bb.ad, !prof !12

bb.ad:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCss03989lGqH_5uu_df5table4CellE7reserveBI_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i26

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i26: ; preds = %bb.ad
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2516
  %i.by = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bw, i64 noundef range(i64 1, 9) 8) #28, !noalias !2516 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.ae, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCss03989lGqH_5uu_df5table4CellE7reserveBI_.exit.i.i.i

bb.ae:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i26, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.4.0.ph.i.i30 = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i26 ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i30, i64 %i.bw) #31, !noalias !2517
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCss03989lGqH_5uu_df5table4CellE7reserveBI_.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i26, %bb.ad
  %.sroa.10.0.i.i27 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ad ], [ %i.by, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i26 ] ; 2 uses
  %.sroa.4.0.i.i28 = phi i64 [ 0, %bb.ad ], [ %.sroa.7100.0.copyload, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i26 ] ; 2 uses
  %i.ca = icmp samesign ule i64 %.sroa.7100.0.copyload, %.sroa.4.0.i.i28
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %.sroa.7100.0.copyload, 0   ; 2 uses
  br i1 %i.cb, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCss03989lGqH_5uu_df5table4CellEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtB8_6string6StringEINvMs4_B15_B13_11from_stringRB3l_EEE9from_iterB17_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCss03989lGqH_5uu_df5table4CellE7reserveBI_.exit.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCss03989lGqH_5uu_df5table4CelluINvMs4_B1z_B1x_11from_stringBU_ENCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3I_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B1B_.exit.i.i.i.i.i.i
  %i.cc = phi i64 [ %i.cn, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCss03989lGqH_5uu_df5table4CelluINvMs4_B1z_B1x_11from_stringBU_ENCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3I_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B1B_.exit.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCss03989lGqH_5uu_df5table4CellE7reserveBI_.exit.i.i.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !2518, !noalias !2519, !nonnull !6, !noundef !6 ; 3 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !2518, !noalias !2519, !noundef !6 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val12.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af, !prof !12

bb.af:                                            ; preds = %.preheader.i.i.i
  %i.cg = icmp eq i64 %.val12.i.i.i.i.i.i, 0
  br i1 %i.cg, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCss03989lGqH_5uu_df5table4CelluINvMs4_B1z_B1x_11from_stringBU_ENCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3I_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B1B_.exit.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2520
  %i.ch = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.val12.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2520 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i) #31, !noalias !2521
  unreachable

bb.ah:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i, i1 false), !noalias !2521
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCss03989lGqH_5uu_df5table4CelluINvMs4_B1z_B1x_11from_stringBU_ENCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3I_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B1B_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCss03989lGqH_5uu_df5table4CelluINvMs4_B1z_B1x_11from_stringBU_ENCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3I_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B1B_.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af
  %i.cj = phi ptr [ %i.ch, %bb.ah ], [ inttoptr (i64 1 to ptr), %bb.af ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i
  %i.cl = call fastcc i64 @_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCs7Zx3WTHCDWk_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECss03989lGqH_5uu_df(ptr noundef nonnull readonly %.val11.i.i.i.i.i.i, ptr noundef readonly %i.ck) #30
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.10.0.i.i27, i64 %i.cc ; 4 uses
  store i64 %.val12.i.i.i.i.i.i, ptr %i.cm, align 8, !noalias !2522
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cj, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2522
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2522
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 %i.cl, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2522
  %i.cn = add nuw i64 %i.cc, 1                    ; 2 uses
  %i.co = icmp eq i64 %i.cn, %.sroa.7100.0.copyload
  br i1 %i.co, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCss03989lGqH_5uu_df5table4CellEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtB8_6string6StringEINvMs4_B15_B13_11from_stringRB3l_EEE9from_iterB17_.exit, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCss03989lGqH_5uu_df5table4CellEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtB8_6string6StringEINvMs4_B15_B13_11from_stringRB3l_EEE9from_iterB17_.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCss03989lGqH_5uu_df5table4CelluINvMs4_B1z_B1x_11from_stringBU_ENCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_NtBZ_3vecINtB3I_3VecB1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB26_EE0E0E0B1B_.exit.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCss03989lGqH_5uu_df5table4CellE7reserveBI_.exit.i.i.i
  store i64 %.sroa.4.0.i.i28, ptr %i.bu, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.sroa.10.0.i.i27, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.sroa.7100.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %i.t, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr %i.bu, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  store i64 1, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 8) #28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !6 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %.not.i.i = icmp slt i64 %i.cu, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ai, !prof !12

bb.ai:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCss03989lGqH_5uu_df5table4CellEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtB8_6string6StringEINvMs4_B15_B13_11from_stringRB3l_EEE9from_iterB17_.exit
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread39.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ai
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2524
  %i.cw = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2524 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCss03989lGqH_5uu_df5table4CellEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtB8_6string6StringEINvMs4_B15_B13_11from_stringRB3l_EEE9from_iterB17_.exit
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCss03989lGqH_5uu_df5table4CellEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterNtNtB8_6string6StringEINvMs4_B15_B13_11from_stringRB3l_EEE9from_iterB17_.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.cu) #31, !noalias !2525
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread39.i: ; preds = %bb.ak, %bb.ai
  %i.cy = phi ptr [ %i.cw, %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.ai ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2526
  %i.cz = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2526 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull readonly align 1 %i.cs, i64 %i.cu, i1 false), !noalias !2523
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread39.i

bb.al:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread39.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !2525
  unreachable

bb.am:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCss03989lGqH_5uu_df.exit.thread39.i
  store i8 45, ptr %i.cz, align 1, !noalias !2525
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2527
  %i.db = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2527 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.an, label %_RNvMNtCss03989lGqH_5uu_df5tableNtB2_3Row3new.exit

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !2525
  unreachable

_RNvMNtCss03989lGqH_5uu_df5tableNtB2_3Row3new.exit: ; preds = %bb.am
  store i8 45, ptr %i.db, align 1, !noalias !2525
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 200 ; 2 uses
  store i64 -1, ptr %i.dd, align 8, !alias.scope !2523
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 2 uses
  store i64 %i.cu, ptr %i.de, align 16, !alias.scope !2523
  %.sroa.44.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 2 uses
  store ptr %i.cy, ptr %.sroa.44.0..sroa_idx.i31, align 8, !alias.scope !2523
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  store i64 %i.cu, ptr %.sroa.5.0..sroa_idx.i32, align 16, !alias.scope !2523
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 152 ; 2 uses
  store i64 1, ptr %i.df, align 8, !alias.scope !2523
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 160 ; 2 uses
  store ptr %i.cz, ptr %.sroa.49.0..sroa_idx.i, align 16, !alias.scope !2523
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  store i64 1, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !2523
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 176 ; 2 uses
  store i64 1, ptr %i.dg, align 16, !alias.scope !2523
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 184 ; 2 uses
  store ptr %i.db, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !2523
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  store i64 1, ptr %.sroa.519.0..sroa_idx.i, align 16, !alias.scope !2523
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 0, ptr %i.s, align 16, !alias.scope !2523
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.di, align 16, !alias.scope !2523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.dh, i8 0, i64 96, i1 false), !alias.scope !2523
  call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %.val.i33 = load i64, ptr %i.r, align 8, !range !7, !alias.scope !2528, !noundef !6 ; 2 uses
  %i.dj = icmp eq i64 %.val.i33, 0
  br i1 %i.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit, label %bb.ao

bb.ao:                                            ; preds = %_RNvMNtCss03989lGqH_5uu_df5tableNtB2_3Row3new.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef %.val.i33, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2528
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit: ; preds = %_RNvMNtCss03989lGqH_5uu_df5tableNtB2_3Row3new.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.dm = load i64, ptr %2, align 8, !range !7, !noundef !6 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !6 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 39755913951960241
  call void @llvm.assume(i1 %i.dp)
  %.idx = mul nuw nsw i64 %i.do, 232
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx ; 3 uses
  %i.dr = icmp eq i64 %i.do, 0
  br i1 %i.dr, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.dt = load i8, ptr %i.ds, align 1, !range !14
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 184 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.1095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 208 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val23 = load i64, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 152 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.q, i64 200 ; 2 uses
  %i.ed = uitofp i64 %.val23 to double            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ek = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.et = load i8, ptr %i.es, align 1, !range !14
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.ew = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.fc = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %bb.bm
  %i.fe = phi ptr [ %i.bu, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.jf, %bb.bm ] ; 2 uses
  %i.ff = phi i64 [ 1, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.jg, %bb.bm ] ; 8 uses
  %.sroa.485.0116 = phi ptr [ %i.dl, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.fg, %bb.bm ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.485.0116, i64 232 ; 3 uses
  %.sroa.087.0.copyload88 = load i64, ptr %.sroa.485.0116, align 8, !noalias !2529 ; 4 uses
  %.not = icmp eq i64 %.sroa.087.0.copyload88, -1
  br i1 %.not, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.7.0..sroa.485.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.485.0116, i64 8
  store i64 %.sroa.087.0.copyload88, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.7.0..sroa.485.8..sroa_idx, i64 224, i1 false)
  %i.fh = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.fi = icmp ne i64 %i.fh, 0                    ; 2 uses
  %or.cond = select i1 %i.du, i1 true, i1 %i.fi
  br i1 %or.cond, label %bb.bg, label %bb.bk

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit
  %i.fj = phi i64 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit ], [ %i.ff, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit ] ; 2 uses
  %.sroa.485.1106 = phi ptr [ %i.dl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit ], [ %i.fg, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit ] ; 3 uses
  %i.fk = ptrtoint ptr %i.dq to i64
  %i.fl = ptrtoint ptr %.sroa.485.1106 to i64
  %i.fm = sub nuw i64 %i.fk, %i.fl
  %i.fn = udiv exact i64 %i.fm, 232
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.fo = icmp eq ptr %i.dq, %.sroa.485.1106
  br i1 %i.fo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBG_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.fq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [232 x i8], ptr %.sroa.485.1106, i64 %.sroa.0.03.i.i.i ; 3 uses
  %i.fq = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 152
  %.val.i.i.i.i = load i64, ptr %i.fr, align 8, !range !16, !alias.scope !2532, !noalias !2533, !noundef !6 ; 2 uses
  %i.fs = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.fs, label %bb.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 160
  %.val1.i.i.i.i = load ptr, ptr %i.ft, align 8, !alias.scope !2532, !noalias !2533, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2534
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i.i.i: ; preds = %bb.aq, %.lr.ph.i.i.i
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features5fsext9MountInfoECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(232) %i.fp) #28, !noalias !2533
  %i.fu = icmp eq i64 %i.fq, %i.fn
  br i1 %i.fu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBG_.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBG_.exit.i.i: ; preds = %bb.bm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  %i.fv = phi i64 [ %i.fj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit.i.i.i ], [ %i.fj, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread ], [ %i.jg, %bb.bm ] ; 4 uses
  %i.fw = icmp eq i64 %i.dm, 0
  br i1 %i.fw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBG_.exit.i.i
  %i.fx = mul nuw i64 %i.dm, 232
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !2533
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBG_.exit.i.i, %bb.ar
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.fz = load i8, ptr %i.fy, align 1, !range !14, !noundef !6
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.at, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit._crit_edge

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit._crit_edge: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit
  %.pre132 = load ptr, ptr %i.cp, align 8
  br label %bb.as

bb.as:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit._crit_edge, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit
  %i.gb = phi i64 [ %i.fv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit._crit_edge ], [ %i.gl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit ] ; 2 uses
  %i.gc = phi ptr [ %.pre132, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit._crit_edge ], [ %i.gj, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit ] ; 2 uses
  %.idx122 = mul nuw nsw i64 %i.gb, 24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx122
  %i.ge = icmp eq i64 %i.gb, 0
  br i1 %i.ge, label %._crit_edge, label %.lr.ph121

bb.at:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEEB1t_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.s, ptr %i.l, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 1, ptr %i.gg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RNvMs5_NtCss03989lGqH_5uu_df5tableNtB5_12RowFormatter9get_cells(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %i.gh = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2535, !noundef !6
  %i.gi = icmp eq i64 %i.fv, %i.gh
  br i1 %i.gi, label %bb.au, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCss03989lGqH_5uu_df5table4CellEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27, !noalias !2536
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit: ; preds = %bb.at, %bb.au
  %i.gj = load ptr, ptr %i.cp, align 8, !alias.scope !2535, !nonnull !6, !noundef !6 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2535
  %i.gl = add i64 %i.fv, 1                        ; 2 uses
  store i64 %i.gl, ptr %i.cq, align 8, !alias.scope !2535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as

.loopexit:                                        ; preds = %bb.be, %.lr.ph121
  %i.gm = icmp eq ptr %i.gn, %i.gd
  br i1 %i.gm, label %._crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.as, %.loopexit
  %.sroa.09.0120 = phi ptr [ %i.gn, %.loopexit ], [ %i.gc, %bb.as ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.09.0120, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.09.0120, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.09.0120, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !6 ; 2 uses
  %.idx123 = shl nuw nsw i64 %i.gr, 5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx123
  %i.gt = icmp eq i64 %i.gr, 0
  br i1 %i.gt, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i64 0, ptr %i.a, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.gv, align 8
  br i1 %i.ab, label %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %._crit_edge, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i
  %i.gw = phi ptr [ %i.hd, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i ], [ inttoptr (i64 1 to ptr), %._crit_edge ]
  %i.gx = phi i64 [ %i.hf, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i ], [ 0, %._crit_edge ] ; 3 uses
  %.sroa.0.01.i = phi ptr [ %i.gy, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i ], [ %i.x, %._crit_edge ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 1 ; 2 uses
  %i.gz = load i8, ptr %.sroa.0.01.i, align 1, !range !24, !noalias !2537, !noundef !6
  %i.ha = zext nneg i8 %i.gz to i64
  %switch.gep171 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table3new.385, i64 %i.ha
  %switch.load172 = load i8, ptr %switch.gep171, align 1
  %i.hb = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.hc = icmp eq i64 %i.gx, %i.hb
  br i1 %i.hc, label %bb.av, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i

bb.av:                                            ; preds = %.lr.ph.i37
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #27
  %.pre.i = load ptr, ptr %i.gu, align 8
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i: ; preds = %bb.av, %.lr.ph.i37
  %i.hd = phi ptr [ %i.gw, %.lr.ph.i37 ], [ %.pre.i, %bb.av ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gx
  store i8 %switch.load172, ptr %i.he, align 1, !noalias !2538
  %i.hf = add nuw i64 %i.gx, 1                    ; 2 uses
  store i64 %i.hf, ptr %i.gv, align 8
  %i.hg = icmp eq ptr %i.gy, %i.aa
  br i1 %i.hg, label %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit, label %.lr.ph.i37

_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.4.0.i.i, ptr %i.hi, align 8
  %.sroa.4.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx77, align 8
  %.sroa.6.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx78, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  %.val2.i = load i64, ptr %i.dd, align 8, !range !16, !alias.scope !2539, !noundef !6 ; 2 uses
  %i.hj = icmp sgt i64 %.val2.i, 0
  br i1 %i.hj, label %bb.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i

bb.aw:                                            ; preds = %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %.val3.i = load ptr, ptr %i.hk, align 16, !alias.scope !2539, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2539
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i: ; preds = %bb.aw, %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  %.val.i.i38 = load i64, ptr %i.de, align 16, !range !7, !alias.scope !2541, !noundef !6 ; 2 uses
  %i.hl = icmp eq i64 %.val.i.i38, 0
  br i1 %i.hl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i
  %.val1.i.i39 = load ptr, ptr %.sroa.44.0..sroa_idx.i31, align 8, !alias.scope !2541, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i39, i64 noundef %.val.i.i38, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2541
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40: ; preds = %bb.ax, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  %.val.i4.i = load i64, ptr %i.df, align 8, !range !7, !alias.scope !2543, !noundef !6 ; 2 uses
  %i.hm = icmp eq i64 %.val.i4.i, 0
  br i1 %i.hm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40
  %.val1.i5.i = load ptr, ptr %.sroa.49.0..sroa_idx.i, align 16, !alias.scope !2543, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2543
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i: ; preds = %bb.ay, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40
  %.val.i41 = load i64, ptr %i.dg, align 16, !range !7, !alias.scope !2539, !noundef !6 ; 2 uses
  %i.hn = icmp eq i64 %.val.i41, 0
  br i1 %i.hn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i
  %.val1.i42 = load ptr, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !2539, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i42, i64 noundef %.val.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2539
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  br i1 %i.cb, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i
  %.sroa.0.03.i.i.i46 = phi i64 [ %i.hp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.03.i.i.i46 ; 2 uses
  %i.hp = add nuw nsw i64 %.sroa.0.03.i.i.i46, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  %.val.i.i.i.i47 = load i64, ptr %i.ho, align 8, !range !7, !alias.scope !2546, !noalias !2547, !noundef !6 ; 2 uses
  %i.hq = icmp eq i64 %.val.i.i.i.i47, 0
  br i1 %i.hq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i45
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.val1.i.i.i.i48 = load ptr, ptr %i.hr, align 8, !alias.scope !2546, !noalias !2547, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i48, i64 noundef %.val.i.i.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2548
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i45
  %i.hs = icmp eq i64 %i.hp, %.sroa.7100.0.copyload
  br i1 %i.hs, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i, label %.lr.ph.i.i.i45

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit
  %i.ht = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ht, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit, label %bb.bb

bb.bb:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i
  %i.hu = mul nuw i64 %.sroa.0.0.copyload, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !2547
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i, %bb.bb
  ret void

.lr.ph:                                           ; preds = %.lr.ph121, %bb.be
  %.sroa.096.0119 = phi ptr [ %i.hv, %bb.be ], [ %i.gp, %.lr.ph121 ] ; 2 uses
  %.sroa.798.0118 = phi i64 [ %i.hw, %bb.be ], [ 0, %.lr.ph121 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.096.0119, i64 32 ; 2 uses
  %i.hw = add nuw nsw i64 %.sroa.798.0118, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.096.0119, i64 24
  %i.hy = load i64, ptr %i.hx, align 8, !noundef !6 ; 2 uses
  %exitcond129.not = icmp eq i64 %.sroa.798.0118, %i.z
  br i1 %exitcond129.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i, i64 %.sroa.798.0118 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !noundef !6
  %i.ib = icmp ugt i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %.lr.ph
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #29
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.bf
  %i.ic = icmp eq ptr %i.hv, %i.gs
  br i1 %i.ic, label %.loopexit, label %.lr.ph

bb.bf:                                            ; preds = %bb.bc
  store i64 %i.hy, ptr %i.hz, align 8
  br label %bb.be

bb.bg:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.490.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.692.0..sroa_idx, i64 24, i1 false)
  %.sroa.793.0.copyload = load i64, ptr %.sroa.793.0..sroa_idx, align 8 ; 2 uses
  %.sroa.894.0.copyload = load ptr, ptr %.sroa.894.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1095.0.copyload = load i64, ptr %.sroa.1095.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 24, i1 false)
  %.sroa.0.0.i50 = zext i1 %i.fi to i64
  %3 = load <2 x i64>, ptr %i.dv, align 8         ; 2 uses
  %4 = load <2 x i64>, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 2 uses
  %5 = shufflevector <2 x i64> %3, <2 x i64> %4, <2 x i32> <i32 0, i32 2> ; 2 uses
  %6 = shufflevector <2 x i64> %3, <2 x i64> %4, <2 x i32> <i32 1, i32 3>
  %7 = call <2 x i64> @llvm.usub.sat.v2i64(<2 x i64> %5, <2 x i64> %6) ; 3 uses
  %8 = extractelement <2 x i64> %7, i64 0         ; 2 uses
  %9 = add i64 %8, %.sroa.16.0.copyload
  %10 = icmp ne i64 %.sroa.17.0.copyload, 0
  %i.id = uitofp <2 x i64> %7 to <2 x double>
  %11 = insertelement <2 x i64> %5, i64 %9, i64 0
  %12 = uitofp <2 x i64> %11 to <2 x double>
  %i.ie = fdiv <2 x double> %i.id, %12            ; 2 uses
  %.sroa.01.0.i = zext i1 %10 to i64
  %i.if = zext i64 %.sroa.18.0.copyload to i128
  %13 = extractelement <2 x i64> %7, i64 1
  %i.ig = zext i64 %13 to i128
  %i.ih = zext i64 %.sroa.17.0.copyload to i128
  %i.ii = mul i64 %.sroa.16.0.copyload, %.sroa.13.0.copyload ; 2 uses
  %i.ij = mul i64 %8, %.sroa.13.0.copyload        ; 2 uses
  %i.ik = insertelement <2 x i64> poison, i64 %i.ii, i64 0
  %i.il = insertelement <2 x i64> %i.ik, i64 %i.ij, i64 1
  %i.im = uitofp <2 x i64> %i.il to <2 x double>
  %i.in = fdiv <2 x double> %i.im, %i.fd          ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 0
  %i.ip = call double @llvm.ceil.f64(double %i.io)
  %i.iq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ip)
  %i.ir = extractelement <2 x double> %i.in, i64 1
  %i.is = call double @llvm.ceil.f64(double %i.ir)
  %i.it = call i64 @llvm.fptoui.sat.i64.f64(double %i.is)
  %i.iu = mul i64 %.sroa.13.0.copyload, %i.fh     ; 2 uses
  %i.iv = uitofp i64 %i.iu to double
  %i.iw = fdiv double %i.iv, %i.ed
  %i.ix = call double @llvm.ceil.f64(double %i.iw)
  %i.iy = call i64 @llvm.fptoui.sat.i64.f64(double %i.ix)
  store i64 %i.iu, ptr %i.ee, align 16, !alias.scope !2549
  store i64 %i.iy, ptr %i.ef, align 8, !alias.scope !2549
  store i64 %i.ij, ptr %i.eg, align 16, !alias.scope !2549
  store i64 %i.it, ptr %i.eh, align 8, !alias.scope !2549
  store i64 %i.ii, ptr %i.ei, align 16, !alias.scope !2549
  store i64 %i.iq, ptr %i.ej, align 8, !alias.scope !2549
  store i64 %.sroa.0.0.i50, ptr %i.q, align 16, !alias.scope !2549
  %i.iz = extractelement <2 x double> %i.ie, i64 0
  store double %i.iz, ptr %i.ek, align 8, !alias.scope !2549
  store i128 %i.ih, ptr %i.el, align 16, !alias.scope !2549
  store i128 %i.ig, ptr %i.em, align 16, !alias.scope !2549
  store i128 %i.if, ptr %i.en, align 16, !alias.scope !2549
  store i64 %.sroa.01.0.i, ptr %i.eo, align 16, !alias.scope !2549
  %i.ja = extractelement <2 x double> %i.ie, i64 1
  store double %i.ja, ptr %i.ep, align 8, !alias.scope !2549
  %i.jb = icmp eq i64 %.sroa.087.0.copyload88, 0
  br i1 %i.jb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.490.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.490.0.copyload, i64 noundef %.sroa.087.0.copyload88, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2550
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53: ; preds = %bb.bh, %bb.bg
  %i.jc = icmp eq i64 %.sroa.793.0.copyload, 0
  br i1 %i.jc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.894.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.894.0.copyload, i64 noundef %.sroa.793.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2551
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i: ; preds = %bb.bi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53
  %i.jd = icmp eq i64 %.sroa.1095.0.copyload, 0
  br i1 %i.jd, label %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit, label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.copyload, i64 noundef %.sroa.1095.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2552
  br label %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit

_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.q, ptr %i.o, align 8
  store ptr %1, ptr %i.eq, align 8
  store i8 0, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call fastcc void @_RNvMs5_NtCss03989lGqH_5uu_df5tableNtB5_12RowFormatter9get_cells(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o) #28
  br i1 %i.eu, label %bb.bt, label %bb.bn

bb.bk:                                            ; preds = %bb.ap
  %.val.i59 = load i64, ptr %i.dw, align 8, !range !16, !noundef !6 ; 2 uses
  %i.je = icmp sgt i64 %.val.i59, 0
  br i1 %i.je, label %bb.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit

bb.bl:                                            ; preds = %bb.bk
  %.val1.i61 = load ptr, ptr %i.dx, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i61, i64 noundef %.val.i59, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2553
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit: ; preds = %bb.bk, %bb.bl
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features5fsext9MountInfoECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(232) %i.p) #28
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit
  %i.jf = phi ptr [ %i.jw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75 ], [ %i.fe, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit ]
  %i.jg = phi i64 [ %i.jx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75 ], [ %i.ff, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit ] ; 2 uses
  %i.jh = icmp eq ptr %i.fg, %i.dq
  br i1 %i.jh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBG_.exit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.bn:                                            ; preds = %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.ji = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2554, !noundef !6
  %i.jj = icmp eq i64 %i.ff, %i.ji
  br i1 %i.jj, label %bb.bo, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCss03989lGqH_5uu_df5table4CellEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27, !noalias !2555
  %.pre = load ptr, ptr %i.cp, align 8, !alias.scope !2554
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62: ; preds = %bb.bn, %bb.bo
  %i.jk = phi ptr [ %i.fe, %bb.bn ], [ %.pre, %bb.bo ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.jk, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2554
  %i.jm = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.jm, ptr %i.cq, align 8, !alias.scope !2554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  %.val2.i63 = load i64, ptr %i.ec, align 8, !range !16, !alias.scope !2556, !noundef !6 ; 2 uses
  %i.jn = icmp sgt i64 %.val2.i63, 0
  br i1 %i.jn, label %bb.bp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64

bb.bp:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62
  %.val3.i74 = load ptr, ptr %i.ev, align 16, !alias.scope !2556, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i74, i64 noundef %.val2.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2556
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64: ; preds = %bb.bp, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  %.val.i.i65 = load i64, ptr %i.dz, align 16, !range !7, !alias.scope !2558, !noundef !6 ; 2 uses
  %i.jo = icmp eq i64 %.val.i.i65, 0
  br i1 %i.jo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64
  %.val1.i.i66 = load ptr, ptr %i.ew, align 8, !alias.scope !2558, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i66, i64 noundef %.val.i.i65, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2558
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67: ; preds = %bb.bq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  %.val.i4.i68 = load i64, ptr %i.ea, align 8, !range !7, !alias.scope !2560, !noundef !6 ; 2 uses
  %i.jp = icmp eq i64 %.val.i4.i68, 0
  br i1 %i.jp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70, label %bb.br

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67
  %.val1.i5.i69 = load ptr, ptr %i.ex, align 16, !alias.scope !2560, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i69, i64 noundef %.val.i4.i68, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2560
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70: ; preds = %bb.br, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67
  %.val.i71 = load i64, ptr %i.eb, align 16, !range !7, !alias.scope !2556, !noundef !6 ; 2 uses
  %i.jq = icmp eq i64 %.val.i71, 0
  br i1 %i.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70
  %.val1.i72 = load ptr, ptr %i.ey, align 8, !alias.scope !2556, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i72, i64 noundef %.val.i71, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2556
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75

bb.bt:                                            ; preds = %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.m, ptr noundef nonnull align 16 dereferenceable(224) %i.q, i64 224, i1 false)
  call void @_RNvXs_NtCss03989lGqH_5uu_df5tableNtB4_3RowNtNtNtCs6JMX4GRUq9U_4core3ops5arith9AddAssign10add_assign(ptr noalias nofree noundef nonnull align 16 dereferenceable(224) %i.s, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(224) %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  %i.jr = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2561, !noundef !6
  %i.js = icmp eq i64 %i.ff, %i.jr
  br i1 %i.js, label %bb.bu, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCss03989lGqH_5uu_df5table4CellEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27, !noalias !2562
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76: ; preds = %bb.bt, %bb.bu
  %i.jt = load ptr, ptr %i.cp, align 8, !alias.scope !2561, !nonnull !6, !noundef !6 ; 2 uses
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jt, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2561
  %i.jv = add i64 %i.ff, 1                        ; 2 uses
  store i64 %i.jv, ptr %i.cq, align 8, !alias.scope !2561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75: ; preds = %bb.bs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76
  %i.jw = phi ptr [ %i.jk, %bb.bs ], [ %i.jk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70 ], [ %i.jt, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76 ]
  %i.jx = phi i64 [ %i.jm, %bb.bs ], [ %i.jm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70 ], [ %i.jv, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bm
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table8write_to(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6 ; 14 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout
declare noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB4_3Arg19use_value_delimiter(ptr dead_on_unwind noalias nofree noundef writable sret([640 x i8]) align 8 captures(none) dereferenceable(640), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(640), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #20

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMs0_NtNtCs6JMX4GRUq9U_4core3fmt3numo4__fmt(i128 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #20

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables25is_transparent_zero_width(i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_block_size19block_size_from_env(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14parse_size_u64(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core3fmt3numoNtB4_7Display3fmt(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_block_size18default_block_size() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsi_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser15possible_values(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsr_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_20PossibleValuesParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.usub.sat.v2i64(<2 x i64>, <2 x i64>) #20

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noinline nounwind }
attributes #28 = { nounwind }
attributes #29 = { noinline noreturn nounwind }
attributes #30 = { inlinehint nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind memory(read, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!6 = !{}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 8}
!9 = !{i64 1, i64 536870913}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2002, i32 2000}
!13 = !{i64 0, i64 5}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!16 = !{i64 -1, i64 -9223372036854775808}
!17 = !{i64 36856729283260665}
!18 = !{i64 0, i64 2}
!19 = !{i64 0, i64 -9223372036854775807}
!20 = !{i64 0, i64 3}
!21 = !{i8 0, i8 3}
!22 = !{i8 -1, i8 10}
!23 = !{!"branch_weights", i32 1611148885, i32 536334763}
!24 = !{i8 0, i8 12}
!25 = !{i8 0, i8 4}
!26 = !{!"address", !"read_provenance"}
!27 = !{i8 0, i8 44}
!28 = distinct !{!28, i1 true, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECss03989lGqH_5uu_df"}
!29 = distinct !{!29, !28, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECss03989lGqH_5uu_df: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECss03989lGqH_5uu_df"}
!31 = distinct !{!31, !30, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECss03989lGqH_5uu_df: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Css03989lGqH_5uu_df"}
!33 = distinct !{!33, !32, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Css03989lGqH_5uu_df: argument 0"}
!34 = distinct !{!34, i1 true, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df"}
!35 = distinct !{!35, !34, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!37 = distinct !{!37, !36, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!38 = distinct !{!38, !36, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!39 = distinct !{!39, !30, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECss03989lGqH_5uu_df: argument 1"}
!40 = distinct !{!40, !34, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 1"}
!41 = distinct !{!41, i1 true, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Css03989lGqH_5uu_df"}
!42 = distinct !{!42, !41, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Css03989lGqH_5uu_df: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df"}
!44 = distinct !{!44, !43, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 0"}
!45 = distinct !{!45, i1 true, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!46 = distinct !{!46, !45, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!47 = distinct !{!47, !45, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!48 = distinct !{!48, !43, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 1"}
!49 = distinct !{!49, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df"}
!50 = distinct !{!50, !49, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df: argument 0"}
!51 = distinct !{!51, !49, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df: argument 1"}
!52 = !{!29}
!53 = !{!31}
!54 = !{!33}
!55 = !{!35}
!56 = !{!35, !33, !31, !29}
!57 = !{!38, !37}
!58 = !{!35, !40, !33, !31, !39, !29}
!59 = !{!42}
!60 = !{!44}
!61 = !{!44, !42, !31, !29}
!62 = !{!47, !46}
!63 = !{!44, !48, !42, !31, !39, !29}
!64 = !{!50}
!65 = !{!51}
!66 = distinct !{!66, i1 true, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECss03989lGqH_5uu_df"}
!67 = distinct !{!67, !66, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECss03989lGqH_5uu_df: argument 0"}
!68 = distinct !{!68, i1 true, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECss03989lGqH_5uu_df"}
!69 = distinct !{!69, !68, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECss03989lGqH_5uu_df: argument 0"}
!70 = distinct !{!70, i1 true, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Css03989lGqH_5uu_df"}
!71 = distinct !{!71, !70, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Css03989lGqH_5uu_df: argument 0"}
!72 = distinct !{!72, i1 true, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df"}
!73 = distinct !{!73, !72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 0"}
!74 = distinct !{!74, i1 true, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!75 = distinct !{!75, !74, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!76 = distinct !{!76, !74, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!77 = distinct !{!77, !68, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECss03989lGqH_5uu_df: argument 1"}
!78 = distinct !{!78, !72, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 1"}
!79 = distinct !{!79, i1 true, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Css03989lGqH_5uu_df"}
!80 = distinct !{!80, !79, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Css03989lGqH_5uu_df: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df"}
!82 = distinct !{!82, !81, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 0"}
!83 = distinct !{!83, i1 true, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!84 = distinct !{!84, !83, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!85 = distinct !{!85, !83, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!86 = distinct !{!86, !81, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 1"}
!87 = distinct !{!87, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df"}
!88 = distinct !{!88, !87, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df: argument 0"}
!89 = distinct !{!89, !87, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df: argument 1"}
!90 = !{!67}
!91 = !{!69}
!92 = !{!71}
!93 = !{!73}
!94 = !{!73, !71, !69, !67}
!95 = !{!76, !75}
!96 = !{!73, !78, !71, !69, !77, !67}
!97 = !{!80}
!98 = !{!82}
!99 = !{!82, !80, !69, !67}
!100 = !{!85, !84}
!101 = !{!82, !86, !80, !69, !77, !67}
!102 = !{!88}
!103 = !{!89}
!104 = distinct !{!104, i1 true, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECss03989lGqH_5uu_df"}
!105 = distinct !{!105, !104, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECss03989lGqH_5uu_df: argument 0"}
!106 = distinct !{!106, i1 true, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECss03989lGqH_5uu_df"}
!107 = distinct !{!107, !106, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECss03989lGqH_5uu_df: argument 0"}
!108 = distinct !{!108, i1 true, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Css03989lGqH_5uu_df"}
!109 = distinct !{!109, !108, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Css03989lGqH_5uu_df: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df"}
!111 = distinct !{!111, !110, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 0"}
!112 = distinct !{!112, i1 true, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!113 = distinct !{!113, !112, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!114 = distinct !{!114, !112, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!115 = distinct !{!115, !106, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECss03989lGqH_5uu_df: argument 1"}
!116 = distinct !{!116, !110, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 1"}
!117 = distinct !{!117, i1 true, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Css03989lGqH_5uu_df"}
!118 = distinct !{!118, !117, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Css03989lGqH_5uu_df: argument 0"}
!119 = distinct !{!119, i1 true, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df"}
!120 = distinct !{!120, !119, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 0"}
!121 = distinct !{!121, i1 true, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!122 = distinct !{!122, !121, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!123 = distinct !{!123, !121, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!124 = distinct !{!124, !119, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCss03989lGqH_5uu_df: argument 1"}
!125 = distinct !{!125, i1 true, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df"}
!126 = distinct !{!126, !125, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df: argument 0"}
!127 = distinct !{!127, !125, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCss03989lGqH_5uu_df: argument 1"}
!128 = !{!105}
!129 = !{!107}
!130 = !{!109}
!131 = !{!111}
!132 = !{!111, !109, !107, !105}
!133 = !{!114, !113}
!134 = !{!111, !116, !109, !107, !115, !105}
!135 = !{!118}
!136 = !{!120}
!137 = !{!120, !118, !107, !105}
!138 = !{!123, !122}
!139 = !{!120, !124, !118, !107, !115, !105}
!140 = !{!126}
!141 = !{!127}
!142 = distinct !{!142, i1 true, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df"}
!143 = distinct !{!143, !142, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df: argument 1"}
!144 = distinct !{!144, i1 true, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECss03989lGqH_5uu_df"}
!145 = distinct !{!145, !144, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECss03989lGqH_5uu_df: argument 0"}
!146 = distinct !{!146, !142, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df: argument 2"}
!147 = distinct !{!147, !142, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df: argument 0"}
!148 = distinct !{!148, !144, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECss03989lGqH_5uu_df: argument 1"}
!149 = distinct !{null}
!150 = !{!143}
!151 = !{!145}
!152 = !{!145, !143}
!153 = !{!145, !148, !147, !143, !146}
!154 = !{!147, !143, !146}
!155 = distinct !{!155, i1 true, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df"}
!156 = distinct !{!156, !155, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df: argument 1"}
!157 = distinct !{!157, i1 true, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECss03989lGqH_5uu_df"}
!158 = distinct !{!158, !157, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECss03989lGqH_5uu_df: argument 0"}
!159 = distinct !{!159, !155, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df: argument 2"}
!160 = distinct !{!160, !155, !"_RINvMs1_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches13try_get_arg_tNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df: argument 0"}
!161 = distinct !{!161, !157, !"_RINvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE3geteECss03989lGqH_5uu_df: argument 1"}
!162 = distinct !{!162, i1 true, !"_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
end_hunk_2
