Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13format_string:bb.a
  store ptr %i.p, ptr %i.o, align 8, !noalias !2061
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsbyqtxyC5WYI_9uu_numfmt, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !2061
  %i.kz = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.kz, align 8, !noalias !2061
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsbyqtxyC5WYI_9uu_numfmt, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !2061
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @141, ptr noundef nonnull %i.o) #26, !noalias !2059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2061
  br label %bb.ar

bb.ar:                                            ; preds = %.split38.i.i.i, %.split34.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2061
  %i.la = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.la, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format21format_gnu_scientific.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2071
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format21format_gnu_scientific.exit.i.i

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format21format_gnu_scientific.exit.i.i: ; preds = %bb.as, %bb.ar, %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECsbyqtxyC5WYI_9uu_numfmt.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2058
  store ptr %i.z, ptr %i.y, align 8, !noalias !2058
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2058
  %i.lb = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ab, ptr %i.lb, align 8, !noalias !2058
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !2058
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.47.0..sroa_idx.i.i, ptr noundef nonnull @154, ptr noundef nonnull %i.y) #26, !noalias !2072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2058
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %.val.i.i.i = load i64, ptr %i.z, align 8, !range !5, !alias.scope !2073, !noalias !2058, !noundef !4 ; 2 uses
  %i.lc = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.lc, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format43try_format_exact_int_without_suffix_scaling.exit.i

bb.at:                                            ; preds = %bb.aa
  call fastcc void @_RNvXs1Q_NtCs7tKScEop1B6_5alloc6stringnNtB6_12SpecToString14spec_to_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, i128 %i.gi) #28, !noalias !2059
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread352

bb.au:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2058
  %i.ld = tail call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #26, !noalias !2059 ; 2 uses
  %i.le = extractvalue { ptr, i64 } %i.ld, 0
  %i.lf = extractvalue { ptr, i64 } %i.ld, 1
  store ptr %i.le, ptr %i.w, align 8, !noalias !2058
  %i.lg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.lf, ptr %i.lg, align 8, !noalias !2058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2058
  %.not.i.i.i43.i.i = icmp slt i64 %.sroa.021.0, 0
  br i1 %.not.i.i.i43.i.i, label %bb.av, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, !prof !10

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.au
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2074
  %i.lh = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.021.0, i64 noundef range(i64 1, 9) 1) #26, !noalias !2074 ; 7 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.av, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i

bb.av:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.au
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %bb.au ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.021.0) #29, !noalias !2075
  unreachable

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  store i8 48, ptr %i.lh, align 1, !noalias !2076
  %.sroa.01.01.i.i.i = lshr i64 %.sroa.021.0, 1   ; 2 uses
  %.not2.i.i.i = icmp eq i64 %.sroa.01.01.i.i.i, 0
  br i1 %.not2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i
  %storemerge.lcssa.i.i.i = phi i64 [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i ], [ %i.ll, %.lr.ph.i.i.i ] ; 4 uses
  %i.lj = icmp sgt i64 %storemerge.lcssa.i.i.i, -1
  tail call void @llvm.assume(i1 %i.lj)
  %.not5.i.i.i = icmp eq i64 %.sroa.021.0, %storemerge.lcssa.i.i.i
  br i1 %.not5.i.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsbyqtxyC5WYI_9uu_numfmt.exit.i.i, label %bb.aw

.lr.ph.i.i.i:                                     ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.04.i.i.i = phi i64 [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.01.01.i.i.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i ]
  %storemerge3.i.i.i = phi i64 [ %i.ll, %.lr.ph.i.i.i ], [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %storemerge3.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lk, ptr noundef nonnull align 1 dereferenceable(1) %i.lh, i64 %storemerge3.i.i.i, i1 false), !noalias !2075
  %i.ll = shl nuw i64 %storemerge3.i.i.i, 1       ; 2 uses
  %.sroa.01.0.i.i.i = lshr i64 %.sroa.01.04.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %._crit_edge.i.i.i
  %i.lm = sub nsw i64 %.sroa.021.0, %storemerge.lcssa.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 %storemerge.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ln, ptr nonnull align 1 %i.lh, i64 %i.lm, i1 false), !noalias !2075
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsbyqtxyC5WYI_9uu_numfmt.exit.i.i

_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsbyqtxyC5WYI_9uu_numfmt.exit.i.i: ; preds = %bb.aw, %._crit_edge.i.i.i
  store i64 %.sroa.021.0, ptr %i.v, align 8, !noalias !2058
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.lh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2058
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.021.0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2058
  store ptr %i.aa, ptr %i.u, align 8, !noalias !2058
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs_NtNtCs6JMX4GRUq9U_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !2058
  %i.lo = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.lo, align 8, !noalias !2058
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsbyqtxyC5WYI_9uu_numfmt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !2058
  %i.lp = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.lp, align 8, !noalias !2058
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !2058
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @123, ptr noundef nonnull %i.u) #26, !noalias !2059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2058
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %.val.i44.i.i = load i64, ptr %i.v, align 8, !range !5, !alias.scope !2077, !noalias !2058, !noundef !4 ; 2 uses
  %i.lq = icmp eq i64 %.val.i44.i.i, 0
  br i1 %i.lq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit46.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsbyqtxyC5WYI_9uu_numfmt.exit.i.i
  %.val1.i45.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2077, !noalias !2058, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i45.i.i, i64 noundef %.val.i44.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2078
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit46.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit46.i.i: ; preds = %bb.ax, %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsbyqtxyC5WYI_9uu_numfmt.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2058
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread352

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread352: ; preds = %bb.at, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit46.i.i
  store i64 0, ptr %i.ay, align 8, !alias.scope !2057, !noalias !2056
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2056
  %.sroa.8160.0..sroa_idx353 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.8160.0.copyload354369 = load i64, ptr %.sroa.8160.0..sroa_idx353, align 8, !noalias !2079
  %.sroa.12.0..sroa_idx355 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.12.0.copyload356 = load i64, ptr %.sroa.12.0..sroa_idx355, align 8, !noalias !2079
  %.sroa.13.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.13.0.copyload358 = load i8, ptr %.sroa.13.0..sroa_idx357, align 8, !noalias !2079
  %.sroa.14.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.ay, i64 25
  %.sroa.14.sroa.0.0.copyload360 = load i56, ptr %.sroa.14.0..sroa_idx359, align 1, !noalias !2079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2056
  br label %.sink.split

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format43try_format_exact_int_without_suffix_scaling.exit.i: ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format21format_gnu_scientific.exit.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i = load ptr, ptr %i.lr, align 8, !alias.scope !2073, !noalias !2058, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2080
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit

bb.ay:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2056
  %i.ls = sitofp i128 %.sroa.4225.0.copyload to double
  br i1 %i.gf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %.thread67.i, %.thread.i
  %i.lt = phi double [ %i.gw, %.thread67.i ], [ %i.ls, %bb.ay ], [ %.sroa.0224.0.copyload, %.thread.i ], [ %.sroa.0224.0.copyload, %bb.az ]
  %i.lu = uitofp i64 %.val125 to double
  %i.lv = fdiv double %i.lt, %i.lu                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.32.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47.i.i)
  %i.lw = tail call double @llvm.fabs.f64(double %i.lv) ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2081
  store i64 0, ptr %i.m, align 8, !noalias !2081
  %i.lx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i64 1, ptr %i.lx, align 8, !noalias !2081
  %i.ly = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 2, ptr %i.ly, align 8, !noalias !2081
  %i.lz = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store i64 3, ptr %i.lz, align 8, !noalias !2081
  %i.ma = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store i64 4, ptr %i.ma, align 8, !noalias !2081
  %i.mb = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store i64 5, ptr %i.mb, align 8, !noalias !2081
  %i.mc = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  store i64 6, ptr %i.mc, align 8, !noalias !2081
  %i.md = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  store i64 7, ptr %i.md, align 8, !noalias !2081
  %i.me = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  store i64 8, ptr %i.me, align 8, !noalias !2081
  %i.mf = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  store i64 9, ptr %i.mf, align 8, !noalias !2081
  %i.mg = add nsw i8 %.val126, -2
  %.inv.i.i = icmp samesign ult i8 %.val126, 2
  %narrow.i.i = select i1 %.inv.i.i, i8 2, i8 %i.mg ; 2 uses
  %.sroa.05.0.sroa.gep84.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  switch i8 %narrow.i.i, label %bb.bb [
    i8 0, label %bb.bc
    i8 1, label %bb.bp
    i8 2, label %bb.bd
    i8 3, label %bb.be
  ]

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2081
  store i64 0, ptr %i.k, align 8, !noalias !2081
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !2081
  %.sroa.530.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.530.0..sroa_idx.i.i, align 8, !noalias !2081
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2082
  %i.mh = tail call noundef dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #26, !noalias !2082 ; 5 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.bf, label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  br label %bb.bp

bb.be:                                            ; preds = %bb.ba
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %i.lv, ptr %i.mj, align 8, !noalias !2056
  %.sroa.4.0..sroa_idx.i191.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i191.i, align 8, !noalias !2056
  br label %bb.dq

bb.bf:                                            ; preds = %bb.bc
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #29, !noalias !2083
  unreachable

bb.bg:                                            ; preds = %bb.bc
  store i32 1869903201, ptr %i.mh, align 1, !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2081
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mh, i64 noundef 4) #25, !noalias !2083
  %i.mk = load i8, ptr %i.j, align 8, !range !19, !noalias !2081, !noundef !4
  %i.ml = trunc nuw i8 %i.mk to i1                ; 2 uses
  br i1 %i.ml, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %bb.bj, %bb.bi
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2084
  %i.mm = call noundef dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #26, !noalias !2084 ; 5 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.bk, label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2081
  store i64 4, ptr %i.i, align 8, !noalias !2081
  %.sroa.5.0..sroa_idx.i194.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.mh, ptr %.sroa.5.0..sroa_idx.i194.i, align 8, !noalias !2081
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 4, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2081
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #26, !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2081
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bg
  %i.mo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.mp = load double, ptr %i.mo, align 8, !noalias !2081, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3, double noundef %i.mp) #26, !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2081
  br label %bb.bh

bb.bk:                                            ; preds = %bb.bh
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #29, !noalias !2083
  unreachable

bb.bl:                                            ; preds = %bb.bh
  store i32 1869884717, ptr %i.mm, align 1, !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2081
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mm, i64 noundef 4) #25, !noalias !2083
  %i.mq = load i8, ptr %i.h, align 8, !range !19, !noalias !2081, !noundef !4
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.bm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit.i193.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit.i193.i: ; preds = %bb.bl
  %i.ms = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mt = load double, ptr %i.ms, align 8, !noalias !2081, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 3, double noundef %i.mt) #26, !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2081
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #26, !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2081
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mm, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2085
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2081
  store i64 4, ptr %i.g, align 8, !noalias !2081
  %.sroa.5124.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.mm, ptr %.sroa.5124.0..sroa_idx.i.i, align 8, !noalias !2081
  %.sroa.8125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 4, ptr %.sroa.8125.0..sroa_idx.i.i, align 8, !noalias !2081
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g) #26, !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2081
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f) #26, !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2081
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit.i193.i
  br i1 %i.ml, label %bb.bo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit72.i.i

bb.bo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit72.i.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2081
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2081
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit72.i.i: ; preds = %bb.bn
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mh, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2086
  br label %bb.bo

bb.bp:                                            ; preds = %bb.bd, %bb.ba
  %storemerge159.i.i = phi double [ 1.024000e+03, %bb.bd ], [ 1.000000e+03, %bb.ba ] ; 4 uses
  %.sroa.7.0..sroa.7.0..sroa.7.16..i.i = phi double [ f0x4130000000000000, %bb.bd ], [ 1.000000e+06, %bb.ba ] ; 2 uses
  %.sroa.12.0..sroa.12.0..sroa.12.24..i.i = phi double [ f0x41D0000000000000, %bb.bd ], [ 1.000000e+09, %bb.ba ] ; 2 uses
  %.sroa.17.0..sroa.17.0..sroa.17.32..i.i = phi double [ f0x4270000000000000, %bb.bd ], [ 1.000000e+12, %bb.ba ] ; 2 uses
  %.sroa.22.0..sroa.22.0..sroa.22.40..i.i = phi double [ f0x4310000000000000, %bb.bd ], [ 1.000000e+15, %bb.ba ] ; 2 uses
  %.sroa.27.0..sroa.27.0..sroa.27.48..i.i = phi double [ f0x43B0000000000000, %bb.bd ], [ 1.000000e+18, %bb.ba ] ; 2 uses
  %.sroa.32.0..sroa.32.0..sroa.32.56..i.i = phi double [ f0x4450000000000000, %bb.bd ], [ 1.000000e+21, %bb.ba ] ; 2 uses
  %.sroa.37.0..sroa.37.0..sroa.37.64..i.i = phi double [ f0x44F0000000000000, %bb.bd ], [ f0x44EA784379D99DB4, %bb.ba ] ; 2 uses
  %.sroa.42.0..sroa.42.0..sroa.42.72..i.i = phi double [ f0x4590000000000000, %bb.bd ], [ 1.000000e+27, %bb.ba ] ; 2 uses
  %.sroa.47.0..sroa.47.0..sroa.47.80..i.i = phi double [ f0x4630000000000000, %bb.bd ], [ 1.000000e+30, %bb.ba ] ; 3 uses
  %.sroa.02.0.i.i = phi i8 [ %.val126, %bb.bd ], [ 0, %bb.ba ]
  store double %storemerge159.i.i, ptr %.sroa.2.i.i, align 8, !noalias !2081
  store double %.sroa.7.0..sroa.7.0..sroa.7.16..i.i, ptr %.sroa.7.i.i, align 8, !noalias !2081
  store double %.sroa.12.0..sroa.12.0..sroa.12.24..i.i, ptr %.sroa.12.i.i, align 8, !noalias !2081
  store double %.sroa.17.0..sroa.17.0..sroa.17.32..i.i, ptr %.sroa.17.i.i, align 8, !noalias !2081
  store double %.sroa.22.0..sroa.22.0..sroa.22.40..i.i, ptr %.sroa.22.i.i, align 8, !noalias !2081
  store double %.sroa.27.0..sroa.27.0..sroa.27.48..i.i, ptr %.sroa.27.i.i, align 8, !noalias !2081
  store double %.sroa.32.0..sroa.32.0..sroa.32.56..i.i, ptr %.sroa.32.i.i, align 8, !noalias !2081
  store double %.sroa.37.0..sroa.37.0..sroa.37.64..i.i, ptr %.sroa.37.i.i, align 8, !noalias !2081
  store double %.sroa.42.0..sroa.42.0..sroa.42.72..i.i, ptr %.sroa.42.i.i, align 8, !noalias !2081
  store double %.sroa.47.0..sroa.47.0..sroa.47.80..i.i, ptr %.sroa.47.i.i, align 8, !noalias !2081
  %i.mv = fadd double %storemerge159.i.i, -1.000000e+00
  %i.mw = fcmp ugt double %i.lw, %i.mv
  br i1 %i.mw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mx = fcmp olt double %i.lw, %.sroa.7.0..sroa.7.0..sroa.7.16..i.i
  br i1 %i.mx, label %bb.cc, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.my = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %i.lv, ptr %i.my, align 8, !noalias !2056
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 -1, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !2056
  br label %bb.dq

bb.bs:                                            ; preds = %bb.bq
  %i.mz = fcmp olt double %i.lw, %.sroa.12.0..sroa.12.0..sroa.12.24..i.i
  br i1 %i.mz, label %bb.cc, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.na = fcmp olt double %i.lw, %.sroa.17.0..sroa.17.0..sroa.17.32..i.i
  br i1 %i.na, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nb = fcmp olt double %i.lw, %.sroa.22.0..sroa.22.0..sroa.22.40..i.i
  br i1 %i.nb, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nc = fcmp olt double %i.lw, %.sroa.27.0..sroa.27.0..sroa.27.48..i.i
  br i1 %i.nc, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nd = fcmp olt double %i.lw, %.sroa.32.0..sroa.32.0..sroa.32.56..i.i
  br i1 %i.nd, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ne = fcmp olt double %i.lw, %.sroa.37.0..sroa.37.0..sroa.37.64..i.i
  br i1 %i.ne, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nf = fcmp olt double %i.lw, %.sroa.42.0..sroa.42.0..sroa.42.72..i.i
  br i1 %i.nf, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ng = fcmp olt double %i.lw, %.sroa.47.0..sroa.47.0..sroa.47.80..i.i
  br i1 %i.ng, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nh = fmul nnan double %.sroa.47.0..sroa.47.0..sroa.47.80..i.i, 1.000000e+03
  %i.ni = fcmp olt double %i.lw, %i.nh
  br i1 %i.ni, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 27) #26, !noalias !2072
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %i.nk = phi i1 [ true, %bb.bz ], [ true, %bb.bq ], [ true, %bb.bs ], [ true, %bb.bt ], [ true, %bb.bu ], [ true, %bb.bv ], [ true, %bb.bw ], [ true, %bb.bx ], [ true, %bb.by ], [ false, %bb.ca ]
  %.sroa.05.0.sroa.phi.i.i = phi ptr [ %i.mf, %bb.bz ], [ %i.lx, %bb.bq ], [ %i.ly, %bb.bs ], [ %i.lz, %bb.bt ], [ %i.ma, %bb.bu ], [ %i.mb, %bb.bv ], [ %i.mc, %bb.bw ], [ %i.md, %bb.bx ], [ %i.me, %bb.by ], [ %.sroa.05.0.sroa.gep84.i.i, %bb.ca ] ; 2 uses
  %.sroa.05.0.sroa.phi96.i.i = phi ptr [ %.sroa.42.i.i, %bb.bz ], [ %.sroa.2.i.i, %bb.bq ], [ %.sroa.7.i.i, %bb.bs ], [ %.sroa.12.i.i, %bb.bt ], [ %.sroa.17.i.i, %bb.bu ], [ %.sroa.22.i.i, %bb.bv ], [ %.sroa.27.i.i, %bb.bw ], [ %.sroa.32.i.i, %bb.bx ], [ %.sroa.37.i.i, %bb.by ], [ %.sroa.47.i.i, %bb.ca ] ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.021.0, 0
  br i1 %.not.i.i, label %bb.cd, label %bb.cz

bb.cd:                                            ; preds = %bb.cc
  %i.nl = load double, ptr %.sroa.05.0.sroa.phi96.i.i, align 8, !noalias !2081, !noundef !4
  %i.nm = fdiv double %i.lv, %i.nl                ; 11 uses
  %i.nn = tail call double @llvm.fabs.f64(double %i.nm)
  %i.no = fcmp olt double %i.nn, 1.000000e+01
  br i1 %i.no, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.cg
    i8 1, label %bb.ch
    i8 2, label %bb.ci
    i8 3, label %bb.cj
    i8 4, label %bb.ck
  ]

bb.cf:                                            ; preds = %bb.cd
  %i.np = fmul nnan double %i.nm, 1.000000e+01    ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.cp
    i8 1, label %bb.cq
    i8 2, label %bb.cr
    i8 3, label %bb.cs
    i8 4, label %bb.ct
  ]

default.unreachable:                              ; preds = %.split149.i, %bb.dt, %bb.da, %bb.cf, %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.nq = tail call double @llvm.ceil.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.ch:                                            ; preds = %bb.ce
  %i.nr = tail call double @llvm.floor.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.ci:                                            ; preds = %bb.ce
  %i.ns = fcmp olt double %i.nm, 0.000000e+00
  br i1 %i.ns, label %bb.cm, label %bb.cl

bb.cj:                                            ; preds = %bb.ce
  %i.nt = fcmp olt double %i.nm, 0.000000e+00
  br i1 %i.nt, label %bb.co, label %bb.cn

bb.ck:                                            ; preds = %bb.ce
  %i.nu = tail call double @llvm.round.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cl:                                            ; preds = %bb.ci
  %i.nv = tail call double @llvm.ceil.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cm:                                            ; preds = %bb.ci
  %i.nw = tail call double @llvm.floor.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cn:                                            ; preds = %bb.cj
  %i.nx = tail call double @llvm.floor.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.co:                                            ; preds = %bb.cj
  %i.ny = tail call double @llvm.ceil.f64(double %i.nm)
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cp:                                            ; preds = %bb.cf
  %i.nz = tail call double @llvm.ceil.f64(double %i.np)
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cf
  %i.oa = tail call double @llvm.floor.f64(double %i.np)
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cf
  %i.ob = fcmp olt double %i.np, 0.000000e+00
  br i1 %i.ob, label %bb.cw, label %bb.cv

bb.cs:                                            ; preds = %bb.cf
  %i.oc = fcmp olt double %i.np, 0.000000e+00
  br i1 %i.oc, label %bb.cy, label %bb.cx

bb.ct:                                            ; preds = %bb.cf
  %i.od = tail call double @llvm.round.f64(double %i.np)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.ct, %bb.cq, %bb.cp
  %.sroa.01.0.i.i192.i = phi double [ %i.nz, %bb.cp ], [ %i.oa, %bb.cq ], [ %i.og, %bb.cw ], [ %i.of, %bb.cv ], [ %i.oi, %bb.cy ], [ %i.oh, %bb.cx ], [ %i.od, %bb.ct ]
  %i.oe = fdiv double %.sroa.01.0.i.i192.i, 1.000000e+01
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.cv:                                            ; preds = %bb.cr
  %i.of = tail call double @llvm.ceil.f64(double %i.np)
  br label %bb.cu

bb.cw:                                            ; preds = %bb.cr
  %i.og = tail call double @llvm.floor.f64(double %i.np)
  br label %bb.cu

bb.cx:                                            ; preds = %bb.cs
  %i.oh = tail call double @llvm.floor.f64(double %i.np)
  br label %bb.cu

bb.cy:                                            ; preds = %bb.cs
  %i.oi = tail call double @llvm.ceil.f64(double %i.np)
  br label %bb.cu

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i: ; preds = %bb.dg, %bb.cz, %bb.cu, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.cg
  %.sroa.016.0.i.i = phi double [ %i.nu, %bb.ck ], [ %i.oe, %bb.cu ], [ %i.nq, %bb.cg ], [ %i.nr, %bb.ch ], [ %i.nw, %bb.cm ], [ %i.nv, %bb.cl ], [ %i.ny, %bb.co ], [ %i.nx, %bb.cn ], [ %i.ow, %bb.dg ], [ %i.om, %bb.cz ] ; 3 uses
  %i.oj = tail call double @llvm.fabs.f64(double %.sroa.016.0.i.i)
  %i.ok = fcmp ult double %i.oj, %storemerge159.i.i
  br i1 %i.ok, label %bb.dm, label %bb.dl

bb.cz:                                            ; preds = %bb.cc
  %6 = icmp eq i8 %narrow.i.i, 2
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.021.0, i64 3)
  %.sroa.015.0.i.i = select i1 %6, i64 %..i.i.i, i64 %.sroa.021.0
  %i.ol = load double, ptr %.sroa.05.0.sroa.phi96.i.i, align 8, !noalias !2081, !noundef !4
  %i.om = fdiv double %i.lv, %i.ol                ; 2 uses
  %i.on = uitofp i64 %.sroa.015.0.i.i to double
  %i.oo = tail call double @llvm.pow.f64(double 1.000000e+01, double %i.on) ; 3 uses
  %i.op = fcmp ueq double %i.oo, +inf
  br i1 %i.op, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oq = fmul double %i.oo, %i.om                ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.db
    i8 1, label %bb.dc
    i8 2, label %bb.dd
    i8 3, label %bb.de
    i8 4, label %bb.df
  ]

bb.db:                                            ; preds = %bb.da
  %i.or = tail call double @llvm.ceil.f64(double %i.oq)
  br label %bb.dg

bb.dc:                                            ; preds = %bb.da
  %i.os = tail call double @llvm.floor.f64(double %i.oq)
  br label %bb.dg

bb.dd:                                            ; preds = %bb.da
  %i.ot = fcmp olt double %i.oq, 0.000000e+00
  br i1 %i.ot, label %bb.di, label %bb.dh

bb.de:                                            ; preds = %bb.da
  %i.ou = fcmp olt double %i.oq, 0.000000e+00
  br i1 %i.ou, label %bb.dk, label %bb.dj

bb.df:                                            ; preds = %bb.da
  %i.ov = tail call double @llvm.round.f64(double %i.oq)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.dc, %bb.db
  %.sroa.01.0.i74.i.i = phi double [ %i.or, %bb.db ], [ %i.os, %bb.dc ], [ %i.oy, %bb.di ], [ %i.ox, %bb.dh ], [ %i.pa, %bb.dk ], [ %i.oz, %bb.dj ], [ %i.ov, %bb.df ]
  %i.ow = fdiv double %.sroa.01.0.i74.i.i, %i.oo
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i

bb.dh:                                            ; preds = %bb.dd
  %i.ox = tail call double @llvm.ceil.f64(double %i.oq)
  br label %bb.dg

bb.di:                                            ; preds = %bb.dd
  %i.oy = tail call double @llvm.floor.f64(double %i.oq)
  br label %bb.dg

bb.dj:                                            ; preds = %bb.de
  %i.oz = tail call double @llvm.floor.f64(double %i.oq)
  br label %bb.dg

bb.dk:                                            ; preds = %bb.de
  %i.pa = tail call double @llvm.ceil.f64(double %i.oq)
  br label %bb.dg

bb.dl:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i
  br i1 %i.nk, label %bb.do, label %bb.dp

bb.dm:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format9div_round.exit.i.i
  %i.pb = getelementptr i8, ptr %.sroa.05.0.sroa.phi.i.i, i64 -8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.do, %bb.dm
  %.sink180.i.i = phi double [ %i.pd, %bb.do ], [ %.sroa.016.0.i.i, %bb.dm ] ; 2 uses
  %.sink.in.i.i = phi ptr [ %.sroa.05.0.sroa.phi.i.i, %bb.do ], [ %i.pb, %bb.dm ]
  %.sink.i.i = load i64, ptr %.sink.in.i.i, align 8, !range !24, !noalias !2081, !noundef !4 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %.sink180.i.i, ptr %i.pc, align 8, !noalias !2056
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sink.i.i, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !2056
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 %.sroa.02.0.i.i, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !2056
  br label %bb.dq

bb.do:                                            ; preds = %bb.dl
  %i.pd = fdiv double %.sroa.016.0.i.i, %storemerge159.i.i
  br label %bb.dn

bb.dp:                                            ; preds = %bb.dl
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 10, i64 noundef 10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #27, !noalias !2083
  unreachable

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format12transform_to.exit.thread: ; preds = %bb.bo, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2081
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.i.i)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.032.0.copyload.i = load double, ptr %i.pe, align 8, !noalias !2056
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.433.0.copyload.i = load i64, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !2056
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.534.0.copyload.i = load i8, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !2056
  %.sroa.14.sroa.0.0.copyload233 = load i56, ptr %i.gb, align 1, !noalias !2079
  br label %bb.eq

bb.dq:                                            ; preds = %bb.dn, %bb.br, %bb.be
  %.sroa.425.0.copyload.i = phi i64 [ %.sink.i.i, %bb.dn ], [ -1, %bb.br ], [ -1, %bb.be ] ; 5 uses
  %.sroa.024.0.copyload.i = phi double [ %.sink180.i.i, %bb.dn ], [ %i.lv, %bb.br ], [ %i.lv, %bb.be ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2081
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47.i.i)
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.526.0.copyload.i = load i8, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !2056 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2056
  store double %.sroa.024.0.copyload.i, ptr %i.ax, align 8, !noalias !2056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2056
  %i.pf = tail call { ptr, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7decimal24locale_decimal_separator() #26, !noalias !2072 ; 2 uses
  %i.pg = extractvalue { ptr, i64 } %i.pf, 0
  %i.ph = extractvalue { ptr, i64 } %i.pf, 1
  store ptr %i.pg, ptr %i.aw, align 8, !noalias !2056
  %i.pi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.ph, ptr %i.pi, align 8, !noalias !2056
  %.not168.i = icmp eq i64 %.sroa.425.0.copyload.i, -1
  br i1 %.not168.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pj = add i64 %.sroa.021.0, -1
  %or.cond2.i = icmp ult i64 %i.pj, 65535
  br i1 %or.cond2.i, label %.split165.i, label %bb.eo

bb.ds:                                            ; preds = %bb.dq
  %i.pk = icmp ult i64 %.sroa.021.0, 65536        ; 2 uses
  %or.cond.i = and i1 %i.pk, %i.ge
  br i1 %or.cond.i, label %.split.i, label %bb.ee

.split.i:                                         ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2056
  %i.pl = uitofp nneg i64 %.sroa.021.0 to double
  %i.pm = tail call double @llvm.pow.f64(double 1.000000e+01, double %i.pl) ; 3 uses
  %i.pn = fcmp ueq double %i.pm, +inf
  br i1 %i.pn, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.split.i
  %i.po = fmul double %i.pm, %.sroa.024.0.copyload.i ; 9 uses
  switch i8 %i.fu, label %default.unreachable [
    i8 0, label %bb.du
    i8 1, label %bb.dv
    i8 2, label %bb.dw
    i8 3, label %bb.dx
    i8 4, label %bb.dy
  ]

bb.du:                                            ; preds = %bb.dt
  %i.pp = tail call double @llvm.ceil.f64(double %i.po)
  br label %bb.dz

bb.dv:                                            ; preds = %bb.dt
  %i.pq = tail call double @llvm.floor.f64(double %i.po)
  br label %bb.dz

bb.dw:                                            ; preds = %bb.dt
  %i.pr = fcmp olt double %i.po, 0.000000e+00
  br i1 %i.pr, label %bb.eb, label %bb.ea

bb.dx:                                            ; preds = %bb.dt
  %i.ps = fcmp olt double %i.po, 0.000000e+00
  br i1 %i.ps, label %bb.ed, label %bb.ec

bb.dy:                                            ; preds = %bb.dt
  %i.pt = tail call double @llvm.round.f64(double %i.po)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.dv, %bb.du
  %.sroa.01.0.i.i = phi double [ %i.pp, %bb.du ], [ %i.pq, %bb.dv ], [ %i.pw, %bb.eb ], [ %i.pv, %bb.ea ], [ %i.py, %bb.ed ], [ %i.px, %bb.ec ], [ %i.pt, %bb.dy ]
  %i.pu = fdiv double %.sroa.01.0.i.i, %i.pm
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format20round_with_precision.exit.i

bb.ea:                                            ; preds = %bb.dw
  %i.pv = tail call double @llvm.ceil.f64(double %i.po)
  br label %bb.dz

bb.eb:                                            ; preds = %bb.dw
  %i.pw = tail call double @llvm.floor.f64(double %i.po)
  br label %bb.dz

bb.ec:                                            ; preds = %bb.dx
  %i.px = tail call double @llvm.floor.f64(double %i.po)
  br label %bb.dz

bb.ed:                                            ; preds = %bb.dx
end_hunk_0
begin_hunk_1_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13format_string:bb.a
  %i.zl = sub i64 0, %spec.select118
  call fastcc void @_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format10pad_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zi, i64 noundef %i.zk, i64 noundef %i.zl, i32 noundef 32, i1 noundef zeroext false) #26
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  call fastcc void @_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format10pad_string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zi, i64 noundef %i.zk, i64 noundef %spec.select118, i32 noundef 32, i1 noundef zeroext true) #26
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %.val.i139 = load i64, ptr %i.bf, align 8, !range !5, !noundef !4 ; 2 uses
  %i.zm = icmp eq i64 %.val.i139, 0
  br i1 %i.zm, label %.split110, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zi, i64 noundef %.val.i139, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2121
  br label %.split110

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit144: ; preds = %bb.gn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit
  br i1 %.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit147, label %bb.go

bb.gn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0197.0, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2122
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit144

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit147: ; preds = %bb.gp, %bb.go, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.zn = icmp ne i64 %i.ri, 0
  %or.cond274.not = select i1 %i.rr, i1 %i.zn, i1 false
  br i1 %or.cond274.not, label %bb.gq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit150

bb.go:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit144
  call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  %.val.i145 = load i64, ptr %i.bl, align 8, !range !5, !alias.scope !2123, !noundef !4 ; 2 uses
  %i.zo = icmp eq i64 %.val.i145, 0
  br i1 %i.zo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit147, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.zp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val1.i146 = load ptr, ptr %i.zp, align 8, !alias.scope !2123, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i146, i64 noundef %.val.i145, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2123
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit147

bb.gq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit147
  %i.zq = icmp ne i64 %.sroa.12.0266.ph, 0
  call void @llvm.assume(i1 %i.zq)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ro, i64 noundef %i.ri, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2124
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit150

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit150: ; preds = %bb.q, %bb.eq, %bb.gq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit147
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format14transform_from(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [88 x i8], align 8               ; 8 uses
  %i.ab = alloca [88 x i8], align 8               ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [8 x i8], align 4                ; 10 uses
  %i.aw = alloca [24 x i8], align 8               ; 14 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 4 uses
  %i.bg = alloca [24 x i8], align 8               ; 13 uses
  %i.bh = alloca [24 x i8], align 8               ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [24 x i8], align 8               ; 8 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [32 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 10 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 8 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [16 x i8], align 8               ; 6 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [16 x i8], align 8               ; 6 uses
  %i.bu = alloca [16 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 13 uses
  %i.bw = alloca [24 x i8], align 8               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 8 uses
  %i.bz = alloca [24 x i8], align 8               ; 8 uses
  %i.ca = alloca [16 x i8], align 8               ; 6 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 4 uses
  %i.cd = alloca [24 x i8], align 8               ; 10 uses
  %i.ce = alloca [24 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [4 x i8], align 4                ; 5 uses
  %i.ch = alloca [16 x i8], align 8               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 8 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [32 x i8], align 8               ; 4 uses
  %i.cm = alloca [24 x i8], align 8               ; 10 uses
  %i.cn = alloca [24 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 6 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [32 x i8], align 8               ; 4 uses
  %i.cs = alloca [24 x i8], align 8               ; 10 uses
  %i.ct = alloca [24 x i8], align 8               ; 5 uses
  %i.cu = alloca [24 x i8], align 8               ; 8 uses
  %i.cv = alloca [24 x i8], align 8               ; 6 uses
  %i.cw = alloca [16 x i8], align 8               ; 6 uses
  %i.cx = alloca [32 x i8], align 8               ; 13 uses
  %i.cy = alloca [24 x i8], align 8               ; 10 uses
  %i.cz = alloca [24 x i8], align 8               ; 10 uses
  %i.da = alloca [24 x i8], align 8               ; 12 uses
  %i.db = alloca [24 x i8], align 8               ; 6 uses
  %i.dc = alloca [24 x i8], align 8               ; 7 uses
  %i.dd = alloca [24 x i8], align 8               ; 6 uses
  %i.de = alloca [24 x i8], align 8               ; 7 uses
  %i.df = alloca [24 x i8], align 8               ; 6 uses
  %i.dg = alloca [24 x i8], align 8               ; 7 uses
  %i.dh = alloca [24 x i8], align 8               ; 7 uses
  %i.di = alloca [4 x i8], align 4                ; 5 uses
  %i.dj = alloca [32 x i8], align 16              ; 5 uses
  %.sroa.629.i = alloca [24 x i8], align 8        ; 5 uses
  %i.dk = alloca [32 x i8], align 16              ; 5 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 5 uses
  %i.dl = alloca [24 x i8], align 8               ; 8 uses
  %i.dm = alloca [24 x i8], align 8               ; 6 uses
  %i.dn = alloca [16 x i8], align 8               ; 6 uses
  %i.do = alloca [32 x i8], align 8               ; 7 uses
  %i.dp = alloca [24 x i8], align 8               ; 10 uses
  %i.dq = alloca [24 x i8], align 8               ; 5 uses
  %i.dr = alloca [24 x i8], align 8               ; 8 uses
  %i.ds = alloca [24 x i8], align 8               ; 9 uses
  %i.dt = alloca [16 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 7 uses
  %i.dv = alloca [24 x i8], align 8               ; 10 uses
  %i.dw = alloca [24 x i8], align 8               ; 5 uses
  %i.dx = alloca [24 x i8], align 8               ; 8 uses
  %i.dy = alloca [24 x i8], align 8               ; 6 uses
  %i.dz = alloca [16 x i8], align 8               ; 6 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [24 x i8], align 8               ; 10 uses
  %i.ec = alloca [24 x i8], align 8               ; 5 uses
  %i.ed = alloca [24 x i8], align 8               ; 8 uses
  %i.ee = alloca [24 x i8], align 8               ; 6 uses
  %i.ef = alloca [16 x i8], align 8               ; 6 uses
  %i.eg = alloca [32 x i8], align 8               ; 7 uses
  %i.eh = alloca [24 x i8], align 8               ; 10 uses
  %i.ei = alloca [24 x i8], align 8               ; 5 uses
  %i.ej = alloca [24 x i8], align 8               ; 9 uses
  %i.ek = alloca [48 x i8], align 16              ; 24 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.em = load i8, ptr %i.el, align 8, !range !22, !noundef !4 ; 18 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.eq = load i64, ptr %i.ep, align 8, !noundef !4 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 225
  %i.es = load i8, ptr %i.er, align 1, !range !19, !noundef !4
  %i.et = trunc nuw i8 %i.es to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.eu = tail call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #26, !noalias !2350 ; 2 uses
  %i.ev = extractvalue { ptr, i64 } %i.eu, 0      ; 14 uses
  %i.ew = extractvalue { ptr, i64 } %i.eu, 1      ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.i

bb.b:                                             ; preds = %bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ey, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 33) #26, !noalias !2351
  store i64 2, ptr %i.ek, align 16, !alias.scope !2349, !noalias !2352
  br label %bb.cu

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.i: ; preds = %bb.a
  %i.ez = getelementptr i8, ptr %i.ev, i64 %i.ew  ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -1     ; 2 uses
  %rhsc.i = load i8, ptr %i.fa, align 1, !noalias !2350
  %i.fb = icmp eq i8 %rhsc.i, 105                 ; 3 uses
  br i1 %i.fb, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i

_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCsbyqtxyC5WYI_9uu_numfmt.exit.i
  %i.fc = icmp ne i8 %i.em, 4
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = add i8 %i.em, -1
  %i.fe = icmp ult i8 %i.fd, 2
  br i1 %i.fe, label %bb.r, label %bb.c

bb.c:                                             ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !2353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !2353
  store i64 0, ptr %i.eh, align 8, !noalias !2353
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !2353
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 0, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !2353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !2353
  store i64 0, ptr %i.eg, align 8, !noalias !2353
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %1, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !2353
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 %2, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !2353
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i8 1, ptr %i.ff, align 8, !noalias !2353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !2354
  store i64 0, ptr %i.dg, align 8, !noalias !2354
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2354
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !2354
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 1610612768, ptr %i.fg, align 8, !noalias !2354
  store ptr %i.dg, ptr %i.df, align 8, !noalias !2354
  %i.fh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr @169, ptr %i.fh, align 8, !noalias !2354
  %i.fi = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #26, !noalias !2355
  br i1 %i.fi, label %bb.d, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #27, !noalias !2355
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i: ; preds = %bb.c
  %.sroa.0192.0.copyload193.i = load i64, ptr %i.dg, align 8, !noalias !2356 ; 3 uses
  %.sroa.5.0.copyload196.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2356, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8.0.copyload199.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2356 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !2354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !2354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !2353
  switch i64 %.sroa.8.0.copyload199.i, label %thread-pre-split.i.i [
    i64 0, label %.loopexit267.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i
  %i.fj = load i8, ptr %.sroa.5.0.copyload196.i, align 1, !alias.scope !2357, !noalias !2358, !noundef !4 ; 2 uses
  switch i8 %i.fj, label %bb.f [
    i8 43, label %.loopexit267.i
    i8 45, label %.loopexit267.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i
  %.pr.i.i = load i8, ptr %.sroa.5.0.copyload196.i, align 1, !alias.scope !2357, !noalias !2358
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i, %bb.e
  %i.fk = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.fj, %bb.e ]
  switch i8 %i.fk, label %bb.m [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload196.i, i64 1
  %i.fm = add nsw i64 %.sroa.8.0.copyload199.i, -1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload196.i, i64 1 ; 2 uses
  %i.fo = add nsw i64 %.sroa.8.0.copyload199.i, -1 ; 3 uses
  %i.fp = icmp samesign ult i64 %.sroa.8.0.copyload199.i, 17
  br i1 %i.fp, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.h
  %.not103137.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.k
  %.sroa.0.1136.i.i = phi ptr [ %i.fq, %bb.k ], [ %i.fn, %bb.h ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.fr, %bb.k ], [ %i.fo, %bb.h ]
  %.sroa.084.0134.i.i = phi i64 [ %i.gc, %bb.k ], [ 0, %bb.h ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.fr = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.fs = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.ft = extractvalue { i64, i1 } %i.fs, 0
  %i.fu = extractvalue { i64, i1 } %i.fs, 1
  br i1 %i.fu, label %.loopexit267.i, label %bb.i, !prof !15

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.fv = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.fw = zext i8 %i.fv to i32
  %i.fx = add nsw i32 %i.fw, -48                  ; 2 uses
  %i.fy = icmp ult i32 %i.fx, 10
  br i1 %i.fy, label %bb.j, label %.loopexit267.i

bb.j:                                             ; preds = %bb.i
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ft, i64 %i.fz) ; 2 uses
  %i.gb = extractvalue { i64, i1 } %i.ga, 1
  br i1 %i.gb, label %.loopexit267.i, label %bb.k, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.gc = extractvalue { i64, i1 } %i.ga, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.l
  %.sroa.0.2140.i.i = phi ptr [ %i.gj, %bb.l ], [ %i.fn, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.gi, %bb.l ], [ %i.fo, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.gl, %bb.l ], [ 0, %.preheader114.i.i ]
  %i.gd = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.ge, -48                  ; 2 uses
  %i.gg = icmp ult i32 %i.gf, 10
  br i1 %i.gg, label %bb.l, label %.loopexit267.i

bb.l:                                             ; preds = %.lr.ph141.i.i
  %i.gh = mul i64 %.sroa.084.2138.i.i, 10
  %i.gi = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.gk = zext nneg i32 %i.gf to i64
  %i.gl = sub i64 %i.gh, %i.gk                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.m:                                             ; preds = %bb.g, %bb.f
  %.sroa.26.0.i.i = phi i64 [ %i.fm, %bb.g ], [ %.sroa.8.0.copyload199.i, %bb.f ] ; 4 uses
  %.sroa.0.0.i89.i = phi ptr [ %i.fl, %bb.g ], [ %.sroa.5.0.copyload196.i, %bb.f ] ; 2 uses
  %i.gm = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.gm, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.m
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.m, %bb.p
  %.sroa.0.3145.i.i = phi ptr [ %i.gn, %bb.p ], [ %.sroa.0.0.i89.i, %bb.m ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.go, %bb.p ], [ %.sroa.26.0.i.i, %bb.m ]
  %.sroa.084.3143.i.i = phi i64 [ %i.gz, %bb.p ], [ 0, %bb.m ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.go = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.gp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.gq = extractvalue { i64, i1 } %i.gp, 0
  %i.gr = extractvalue { i64, i1 } %i.gp, 1
  br i1 %i.gr, label %.loopexit267.i, label %bb.n, !prof !15

bb.n:                                             ; preds = %.preheader111.i.i
  %i.gs = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nsw i32 %i.gt, -48                  ; 2 uses
  %i.gv = icmp ult i32 %i.gu, 10
  br i1 %i.gv, label %bb.o, label %.loopexit267.i

bb.o:                                             ; preds = %bb.n
  %i.gw = zext nneg i32 %i.gu to i64
  %i.gx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.gq, i64 %i.gw) ; 2 uses
  %i.gy = extractvalue { i64, i1 } %i.gx, 1
  br i1 %i.gy, label %.loopexit267.i, label %bb.p, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.gz = extractvalue { i64, i1 } %i.gx, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.go, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.q
  %.sroa.0.4149.i.i = phi ptr [ %i.hg, %bb.q ], [ %.sroa.0.0.i89.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.hf, %bb.q ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.hi, %bb.q ], [ 0, %.preheader.i.i ]
  %i.ha = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !2357, !noalias !2358, !noundef !4
  %i.hb = zext i8 %i.ha to i32
  %i.hc = add nsw i32 %i.hb, -48                  ; 2 uses
  %i.hd = icmp ult i32 %i.hc, 10
  br i1 %i.hd, label %bb.q, label %.loopexit267.i

bb.q:                                             ; preds = %.lr.ph150.i.i
  %i.he = mul i64 %.sroa.084.4147.i.i, 10
  %i.hf = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.hh = zext nneg i32 %i.hc to i64
  %i.hi = add i64 %i.he, %i.hh                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.r:                                             ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i

.loopexit267.i:                                   ; preds = %bb.j, %bb.i, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.o, %bb.n, %.preheader111.i.i, %.lr.ph150.i.i, %bb.e, %bb.e, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !2353
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload196.i, i64 noundef %.sroa.8.0.copyload199.i) #25, !noalias !2350
  %i.hj = load i8, ptr %i.ef, align 8, !range !19, !noalias !2353, !noundef !4
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.u, label %bb.v

end_hunk_1
begin_hunk_2_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format14transform_from:bb.a
  %.sroa.0.3145.i = phi ptr [ %i.qb, %bb.ch ], [ %.sroa.0.0.i111, %bb.ce ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.qc, %bb.ch ], [ %.sroa.26.0.i, %bb.ce ]
  %.sroa.084.3143.i = phi i64 [ %i.qn, %bb.ch ], [ 0, %bb.ce ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.qc = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.qd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.qe = extractvalue { i64, i1 } %i.qd, 0
  %i.qf = extractvalue { i64, i1 } %i.qd, 1
  br i1 %i.qf, label %.loopexit, label %bb.cf, !prof !15

bb.cf:                                            ; preds = %.preheader111.i
  %i.qg = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !2380, !noalias !2381, !noundef !4
  %i.qh = zext i8 %i.qg to i32
  %i.qi = add nsw i32 %i.qh, -48                  ; 2 uses
  %i.qj = icmp ult i32 %i.qi, 10
  br i1 %i.qj, label %bb.cg, label %.loopexit

bb.cg:                                            ; preds = %bb.cf
  %i.qk = zext nneg i32 %i.qi to i64
  %i.ql = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.qe, i64 %i.qk) ; 2 uses
  %i.qm = extractvalue { i64, i1 } %i.ql, 1
  br i1 %i.qm, label %.loopexit, label %bb.ch, !prof !15

bb.ch:                                            ; preds = %bb.cg
  %i.qn = extractvalue { i64, i1 } %i.ql, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.qc, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ci
  %.sroa.0.4149.i = phi ptr [ %i.qu, %bb.ci ], [ %.sroa.0.0.i111, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.qt, %bb.ci ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.qw, %bb.ci ], [ 0, %.preheader.i ]
  %i.qo = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !2380, !noalias !2381, !noundef !4
  %i.qp = zext i8 %i.qo to i32
  %i.qq = add nsw i32 %i.qp, -48                  ; 2 uses
  %i.qr = icmp ult i32 %i.qq, 10
  br i1 %i.qr, label %bb.ci, label %.loopexit

bb.ci:                                            ; preds = %.lr.ph150.i
  %i.qs = mul i64 %.sroa.084.4147.i, 10
  %i.qt = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.qv = zext nneg i32 %i.qq to i64
  %i.qw = add i64 %i.qs, %i.qv                    ; 2 uses
  %.not105.i = icmp eq i64 %i.qt, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.cb, %bb.ca, %.lr.ph141.i, %.preheader111.i, %bb.cf, %bb.cg, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit, %bb.bw, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !2353
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ou, i64 noundef %i.ow) #25, !noalias !2350
  %i.qx = load i8, ptr %i.dt, align 8, !range !19, !noalias !2353, !noundef !4
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.cl, label %bb.cm

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.cc, %bb.cd, %bb.ch, %bb.ci, %.preheader.i, %.preheader114.i
  %.sroa.15142.0 = phi i64 [ %i.qw, %bb.ci ], [ %i.pz, %bb.cd ], [ %i.qn, %bb.ch ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.pq, %bb.cc ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, i64 noundef %.sroa.15142.0) #26, !noalias !2350
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !2353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false), !noalias !2353
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dr) #26, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !2353
  %.val.i186.i = load i64, ptr %i.ds, align 8, !range !5, !noalias !2353, !noundef !4 ; 2 uses
  %i.qz = icmp eq i64 %.val.i186.i, 0
  br i1 %i.qz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit188.i.a, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ou, i64 noundef %.val.i186.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2382
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit188.i.a

bb.cl:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !2353
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ds) #26, !noalias !2350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !2353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false), !noalias !2353
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dr) #26, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !2353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit188.i.a

bb.cm:                                            ; preds = %.loopexit
  %i.ra = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.rb = load double, ptr %i.ra, align 8, !noalias !2353, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, double noundef %i.rb) #26, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !2353
  br label %bb.cj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit188.i.a: ; preds = %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !2353
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rc, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false), !noalias !2352
  store i64 2, ptr %i.ek, align 16, !alias.scope !2349, !noalias !2352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !2353
  br label %bb.cu

bb.cn:                                            ; preds = %bb.bp, %.split.i180.i, %bb.bn
  call fastcc void @_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format17parse_number_part(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.oc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #26, !noalias !2350
  %i.rd = load i64, ptr %i.dk, align 16, !range !6, !noalias !2353, !noundef !4 ; 3 uses
  %i.re = icmp eq i64 %i.rd, 2
  %i.rf = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.rf, i64 24, i1 false), !noalias !2353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !2353
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !2352
  br i1 %i.re, label %bb.cp, label %bb.lc

bb.co:                                            ; preds = %bb.bp, %.split.i180.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.jc, i64 noundef 0, i64 noundef %i.oc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #27, !noalias !2350
  unreachable

bb.cp:                                            ; preds = %bb.cn
  store i64 2, ptr %i.ek, align 16, !alias.scope !2349, !noalias !2352
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.cu

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %.lr.ph.i105.i, %.lr.ph141.i115.i, %bb.ar, %bb.aq, %.preheader111.i122.i, %.lr.ph150.i130.i, %bb.ah, %bb.ah, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit103.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !2353
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5210.0.copyload212.i, i64 noundef %.sroa.8214.0.copyload216.i) #25, !noalias !2350
  %i.rh = load i8, ptr %i.dz, align 8, !range !19, !noalias !2353, !noundef !4
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.cs, label %bb.ct

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit137.i: ; preds = %bb.an, %bb.ao, %bb.as, %bb.at, %.preheader.i128.i, %.preheader114.i113.i
  %.sroa.15221.0.i = phi i64 [ %i.lm, %bb.at ], [ %i.kp, %bb.ao ], [ %i.ld, %bb.as ], [ 0, %.preheader.i128.i ], [ 0, %.preheader114.i113.i ], [ %i.kg, %bb.an ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, i64 noundef %.sroa.15221.0.i) #26, !noalias !2350
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ct, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit137.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !2353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !noalias !2353
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ec, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dx) #26, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !2353
  %i.rj = icmp eq i64 %.sroa.0208.0.copyload209.i, 0
  br i1 %i.rj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit191.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5210.0.copyload212.i, i64 noundef %.sroa.0208.0.copyload209.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2383
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit191.i

bb.cs:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !2353
  store i64 %.sroa.0208.0.copyload209.i, ptr %i.dy, align 8, !noalias !2353
  %.sroa.5210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.5210.0.copyload212.i, ptr %.sroa.5210.0..sroa_idx.i, align 8, !noalias !2353
  %.sroa.8214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.8214.0.copyload216.i, ptr %.sroa.8214.0..sroa_idx.i, align 8, !noalias !2353
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dy) #26, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !2353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !2353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !noalias !2353
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ec, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dx) #26, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !2353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit191.i

bb.ct:                                            ; preds = %.loopexit.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.rl = load double, ptr %i.rk, align 8, !noalias !2353, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, double noundef %i.rl) #26, !noalias !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !2353
  br label %bb.cq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit191.i: ; preds = %bb.cs, %bb.cr, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !2353
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rm, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false), !noalias !2352
  store i64 2, ptr %i.ek, align 16, !alias.scope !2349, !noalias !2352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !2353
  br label %bb.cu

bb.cu:                                            ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit.i, %bb.av, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit185.i.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit188.i.a, %bb.cp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit191.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.0131.0.copyload = load i64, ptr %i.rn, align 8 ; 4 uses
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 3 uses
  %.sroa.4132.0.copyload = load ptr, ptr %.sroa.4132.0..sroa_idx, align 16 ; 4 uses
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 2 uses
  %.sroa.5133.0.copyload = load i64, ptr %.sroa.5133.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !2384
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !2384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !2384
  %i.ro = icmp eq i64 %2, 0
  br i1 %i.ro, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 33) #26, !noalias !2386
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format22detailed_error_message.exit.i

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  %i.rp = call fastcc { ptr, i64 } @_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format22find_numeric_beginning(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2) #26, !noalias !2388 ; 2 uses
  %i.rq = extractvalue { ptr, i64 } %i.rp, 0      ; 7 uses
  %i.rr = extractvalue { ptr, i64 } %i.rp, 1      ; 16 uses
  %.not33.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not33.i.i.i, label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29find_valid_number_with_suffix.exit.i.i, label %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i.i.i

_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i.i.i: ; preds = %bb.cw
  %i.rs = icmp ne i8 %i.em, 4
  call void @llvm.assume(i1 %i.rs)
  %5 = icmp eq i8 %i.em, 2
  %6 = icmp eq i8 %i.em, 1
  %or.cond.i.i.i.i.i.lcssa = select i1 %5, i1 true, i1 %6
  %.not34.i.i.i = icmp eq i8 %i.em, 5             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2389
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %i.aw, align 8, !noalias !2389
  %i.ru = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.rt, ptr %i.ru, align 8, !noalias !2389
  %i.rv = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  store i64 %i.rr, ptr %i.rv, align 8, !noalias !2389
  %.not35.i.i.i = icmp eq i64 %i.rr, 0
  br i1 %.not35.i.i.i, label %bb.cx, label %bb.cz, !prof !7

.sink.split.i.i.i:                                ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, %bb.df, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i
  %.sroa.8.0.ph.i.i.i = phi i64 [ %.sroa.8.1.i.i.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ %i.rr, %bb.df ], [ %i.rr, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ %i.rq, %bb.df ], [ %i.rq, %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2389
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29find_valid_number_with_suffix.exit.i.i

bb.cx:                                            ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store ptr %i.rw, ptr %i.aw, align 8, !alias.scope !2391, !noalias !2389
  %i.rx = load i8, ptr %1, align 1, !alias.scope !2392, !noalias !2393, !noundef !4 ; 5 uses
  %i.ry = icmp sgt i8 %i.rx, -1
  br i1 %i.ry, label %bb.cy, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i: ; preds = %bb.cx
  %i.rz = and i8 %i.rx, 31
  %i.sa = zext nneg i8 %i.rz to i32               ; 3 uses
  %i.sb = icmp samesign ne i64 %2, 1
  call void @llvm.assume(i1 %i.sb)
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store ptr %i.sc, ptr %i.aw, align 8, !alias.scope !2394, !noalias !2389
  %i.sd = load i8, ptr %i.rw, align 1, !alias.scope !2392, !noalias !2393, !noundef !4
  %i.se = shl nuw nsw i32 %i.sa, 6
  %i.sf = and i8 %i.sd, 63
  %i.sg = zext nneg i8 %i.sf to i32               ; 2 uses
  %i.sh = or disjoint i32 %i.se, %i.sg
  %i.si = icmp samesign ugt i8 %i.rx, -33
  br i1 %i.si, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.sj = zext nneg i8 %i.rx to i32
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i
  %i.sk = icmp samesign ne i64 %2, 2
  call void @llvm.assume(i1 %i.sk)
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  store ptr %i.sl, ptr %i.aw, align 8, !alias.scope !2395, !noalias !2389
  %i.sm = load i8, ptr %i.sc, align 1, !alias.scope !2392, !noalias !2393, !noundef !4
  %i.sn = shl nuw nsw i32 %i.sg, 6
  %i.so = and i8 %i.sm, 63
  %i.sp = zext nneg i8 %i.so to i32
  %i.sq = or disjoint i32 %i.sn, %i.sp            ; 2 uses
  %i.sr = shl nuw nsw i32 %i.sa, 12
  %i.ss = or disjoint i32 %i.sq, %i.sr
  %i.st = icmp samesign ugt i8 %i.rx, -17
  br i1 %i.st, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i
  %i.su = icmp samesign ne i64 %2, 3
  call void @llvm.assume(i1 %i.su)
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.sv, ptr %i.aw, align 8, !alias.scope !2396, !noalias !2389
  %i.sw = load i8, ptr %i.sl, align 1, !alias.scope !2392, !noalias !2393, !noundef !4
  %i.sx = shl nuw nsw i32 %i.sa, 18
  %i.sy = and i32 %i.sx, 1835008
  %i.sz = shl nuw nsw i32 %i.sq, 6
  %i.ta = and i8 %i.sw, 63
  %i.tb = zext nneg i8 %i.ta to i32
  %i.tc = or disjoint i32 %i.sz, %i.tb
  %i.td = or disjoint i32 %i.tc, %i.sy
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i

bb.cz:                                            ; preds = %_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCsbyqtxyC5WYI_9uu_numfmt5units4UnitNtB5_13SliceContains14slice_containsBG_.exit.i.i.i
  store i64 0, ptr %i.rv, align 8, !noalias !2389
  %i.te = call fastcc noundef i64 @_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aw, i64 noundef %i.rr) #28, !noalias !2388
  %.not36.i.i.i = icmp eq i64 %i.te, 0
  br i1 %.not36.i.i.i, label %bb.da, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i: ; preds = %bb.da, %bb.cz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i, %bb.cy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i
  %.sroa.08.1.i.i.i = phi i32 [ %spec.select41.i.i.i, %bb.da ], [ -1, %bb.cz ], [ %i.sj, %bb.cy ], [ %i.sh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i.i.i.i ], [ %i.td, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i.i.i.i ], [ %i.ss, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i.i.i.i ] ; 4 uses
  %i.tf = load i64, ptr %i.rv, align 8, !noalias !2389, !noundef !4 ; 2 uses
  %.not37.i.i.i = icmp eq i64 %i.tf, 0
  br i1 %.not37.i.i.i, label %bb.db, label %bb.de, !prof !7

bb.da:                                            ; preds = %bb.cz
  %i.tg = call fastcc { i32, i32 } @_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aw) #28, !noalias !2388 ; 2 uses
  %i.th = extractvalue { i32, i32 } %i.tg, 0
  %i.ti = trunc i32 %i.th to i1
  %i.tj = extractvalue { i32, i32 } %i.tg, 1
  %spec.select41.i.i.i = select i1 %i.ti, i32 %i.tj, i32 -1
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i

bb.db:                                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  %i.tk = load ptr, ptr %i.aw, align 8, !alias.scope !2398, !noalias !2389, !nonnull !4, !noundef !4 ; 5 uses
  %i.tl = load ptr, ptr %i.ru, align 8, !alias.scope !2398, !noalias !2389, !nonnull !4, !noundef !4 ; 4 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  br i1 %i.tm, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tn = load i8, ptr %i.tk, align 1, !noalias !2399, !noundef !4 ; 5 uses
  %i.to = icmp sgt i8 %i.tn, -1
  br i1 %i.to, label %bb.dd, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i54.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i54.i.i.i: ; preds = %bb.dc
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 1 ; 2 uses
  %i.tq = and i8 %i.tn, 31
  %i.tr = zext nneg i8 %i.tq to i32               ; 3 uses
  %i.ts = icmp ne ptr %i.tp, %i.tl
  call void @llvm.assume(i1 %i.ts)
  %i.tt = load i8, ptr %i.tp, align 1, !noalias !2399, !noundef !4
  %i.tu = shl nuw nsw i32 %i.tr, 6
  %i.tv = and i8 %i.tt, 63
  %i.tw = zext nneg i8 %i.tv to i32               ; 2 uses
  %i.tx = or disjoint i32 %i.tu, %i.tw
  %i.ty = icmp samesign ugt i8 %i.tn, -33
  br i1 %i.ty, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i57.i.i.i, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.tz = zext nneg i8 %i.tn to i32
  br label %bb.df

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i57.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i54.i.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tk, i64 2 ; 2 uses
  %i.ub = icmp ne ptr %i.ua, %i.tl
  call void @llvm.assume(i1 %i.ub)
  %i.uc = load i8, ptr %i.ua, align 1, !noalias !2399, !noundef !4
  %i.ud = shl nuw nsw i32 %i.tw, 6
  %i.ue = and i8 %i.uc, 63
  %i.uf = zext nneg i8 %i.ue to i32
  %i.ug = or disjoint i32 %i.ud, %i.uf            ; 2 uses
  %i.uh = shl nuw nsw i32 %i.tr, 12
  %i.ui = or disjoint i32 %i.ug, %i.uh
  %i.uj = icmp samesign ugt i8 %i.tn, -17
  br i1 %i.uj, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i58.i.i.i, label %bb.df

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i58.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i57.i.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tk, i64 3 ; 2 uses
  %i.ul = icmp ne ptr %i.uk, %i.tl
  call void @llvm.assume(i1 %i.ul)
  %i.um = load i8, ptr %i.uk, align 1, !noalias !2399, !noundef !4
  %i.un = shl nuw nsw i32 %i.tr, 18
  %i.uo = and i32 %i.un, 1835008
  %i.up = shl nuw nsw i32 %i.ug, 6
  %i.uq = and i8 %i.um, 63
  %i.ur = zext nneg i8 %i.uq to i32
  %i.us = or disjoint i32 %i.up, %i.ur
  %i.ut = or disjoint i32 %i.us, %i.uo
  br label %bb.df

bb.de:                                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit.i.i.i
  store i64 0, ptr %i.rv, align 8, !noalias !2389
  %i.uu = call fastcc noundef i64 @_RNvXNtNtCs6JMX4GRUq9U_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aw, i64 noundef %i.tf) #28, !noalias !2388
  %.not38.i.i.i = icmp eq i64 %i.uu, 0
  br i1 %.not38.i.i.i, label %bb.dg, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i: ; preds = %bb.dg, %bb.de, %bb.db
  br i1 %.not34.i.i.i, label %.sink.split.i.i.i, label %bb.dt

bb.df:                                            ; preds = %bb.dh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i58.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i57.i.i.i, %bb.dd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i54.i.i.i
  %.sink118.i.i.i = phi i32 [ %i.uz, %bb.dh ], [ %i.ui, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit14.i57.i.i.i ], [ %i.ut, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit16.i58.i.i.i ], [ %i.tx, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbyqtxyC5WYI_9uu_numfmt.exit12.i54.i.i.i ], [ %i.tz, %bb.dd ] ; 3 uses
  %i.uv = icmp ult i32 %.sink118.i.i.i, 1114112
  call void @llvm.assume(i1 %i.uv)
  br i1 %.not34.i.i.i, label %.sink.split.i.i.i, label %bb.di

bb.dg:                                            ; preds = %bb.de
  %i.uw = call fastcc { i32, i32 } @_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aw) #28, !noalias !2388 ; 2 uses
  %i.ux = extractvalue { i32, i32 } %i.uw, 0
  %i.uy = trunc i32 %i.ux to i1
  br i1 %i.uy, label %bb.dh, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.uz = extractvalue { i32, i32 } %i.uw, 1
  br label %bb.df

bb.di:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2389
  store i32 %.sroa.08.1.i.i.i, ptr %i.av, align 4, !noalias !2389
  %i.va = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %.sink118.i.i.i, ptr %i.va, align 4, !noalias !2389
  %.not39.i.i.i = icmp eq i32 %.sroa.08.1.i.i.i, -1
  br i1 %.not39.i.i.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vb = icmp eq i32 %.sink118.i.i.i, 105
  %brmerge.not.i.i.i = and i1 %or.cond.i.i.i.i.i.lcssa, %i.vb
  br i1 %brmerge.not.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i.i.i, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2389
  call void @_RNvXs_NtCsbyqtxyC5WYI_9uu_numfmt5unitsNtB4_9RawSuffixINtNtCs6JMX4GRUq9U_4core7convert7TryFromRcE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.av) #26, !noalias !2388
  %i.vc = load i64, ptr %i.as, align 8, !range !16, !noalias !2389, !noundef !4 ; 2 uses
  switch i64 %i.vc, label %bb.dq [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit69.i.i.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit66.i.i.i
  ]

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2389
  call void @_RNvXs_NtCsbyqtxyC5WYI_9uu_numfmt5unitsNtB4_9RawSuffixINtNtCs6JMX4GRUq9U_4core7convert7TryFromRcE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.av) #26, !noalias !2388
  %i.vd = load i64, ptr %i.at, align 8, !range !16, !noalias !2389, !noundef !4 ; 2 uses
  switch i64 %i.vd, label %bb.dm [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit62.i.i.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i.i.i
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.ve = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.val53.i.i.i = load ptr, ptr %i.ve, align 8, !noalias !2389, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53.i.i.i, i64 noundef %i.vd, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2400
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit.i.i.i: ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2389
  br label %bb.dk

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit62.i.i.i: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2389
  %i.vf = add i64 %i.rr, 2                        ; 6 uses
  %i.vg = icmp eq i64 %i.vf, 0
  br i1 %i.vg, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit62.i.i.i
  %.not.i.i.i.i = icmp ult i64 %i.vf, %2
  br i1 %.not.i.i.i.i, label %bb.do, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.dn
  %i.vh = icmp eq i64 %i.vf, %2
  br i1 %i.vh, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 %i.vf
  %i.vj = load i8, ptr %i.vi, align 1, !alias.scope !2401, !noalias !2388, !noundef !4
  %i.vk = icmp sgt i8 %i.vj, -65
  br i1 %i.vk, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.split.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2, i64 noundef 0, i64 noundef %i.vf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #27, !noalias !2388
  unreachable

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i: ; preds = %bb.dx, %.split.i86.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit76.i.i.i, %bb.dt, %bb.ds, %.split.i73.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit66.i.i.i, %bb.do, %.split.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit62.i.i.i, %bb.di
  %.sroa.8.1.i.i.i = phi i64 [ %i.vn, %bb.ds ], [ %i.rr, %bb.di ], [ %i.vf, %bb.do ], [ %i.rr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit76.i.i.i ], [ %i.rr, %bb.dt ], [ %i.rr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit66.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit62.i.i.i ], [ %2, %.split.i.i.i.i ], [ %i.vn, %.split.i73.i.i.i ], [ %i.vv, %.split.i86.i.i.i ], [ %i.vv, %bb.dx ]
  %.sroa.0.1.i.i.i = phi ptr [ %1, %bb.ds ], [ %i.rq, %bb.di ], [ %1, %bb.do ], [ %i.rq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit76.i.i.i ], [ %i.rq, %bb.dt ], [ %i.rq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit66.i.i.i ], [ %1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit62.i.i.i ], [ %1, %.split.i.i.i.i ], [ %1, %.split.i73.i.i.i ], [ %1, %.split.i86.i.i.i ], [ %1, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2389
  br label %.sink.split.i.i.i

bb.dq:                                            ; preds = %bb.dk
  %i.vl = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val49.i.i.i = load ptr, ptr %i.vl, align 8, !noalias !2389, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49.i.i.i, i64 noundef %i.vc, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2402
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit66.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit66.i.i.i: ; preds = %bb.dq, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2389
  br label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit69.i.i.i: ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2389
  %i.vm = icmp ult i64 %i.rr, %2
  br i1 %i.vm, label %.split.i73.i.i.i, label %bb.dr, !prof !7

bb.dr:                                            ; preds = %bb.ds, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit69.i.i.i
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.rr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit69.i.i.i ], [ %i.vn, %bb.ds ]
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2, i64 noundef 0, i64 noundef %.sroa.05.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #27, !noalias !2403
  unreachable

.split.i73.i.i.i:                                 ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit69.i.i.i
  %i.vn = add nuw i64 %i.rr, 1                    ; 5 uses
  %.not17.i.i.i.i = icmp ult i64 %i.vn, %2
  br i1 %.not17.i.i.i.i, label %bb.ds, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i

bb.ds:                                            ; preds = %.split.i73.i.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !alias.scope !2404, !noalias !2405, !noundef !4
  %i.vq = icmp sgt i8 %i.vp, -65
  br i1 %i.vq, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.dr, !prof !7

bb.dt:                                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbyqtxyC5WYI_9uu_numfmt.exit59.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2389
  store i32 %.sroa.08.1.i.i.i, ptr %i.av, align 4, !noalias !2389
  %i.vr = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 -1, ptr %i.vr, align 4, !noalias !2389
  %.not40.i.i.i = icmp eq i32 %.sroa.08.1.i.i.i, -1
  br i1 %.not40.i.i.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2389
  call void @_RNvXs_NtCsbyqtxyC5WYI_9uu_numfmt5unitsNtB4_9RawSuffixINtNtCs6JMX4GRUq9U_4core7convert7TryFromRcE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.av) #26, !noalias !2388
  %i.vs = load i64, ptr %i.au, align 8, !range !16, !noalias !2389, !noundef !4 ; 2 uses
  switch i64 %i.vs, label %bb.dv [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit79.i.i.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit76.i.i.i
  ]

bb.dv:                                            ; preds = %bb.du
  %i.vt = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val45.i.i.i = load ptr, ptr %i.vt, align 8, !noalias !2389, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i.i.i, i64 noundef %i.vs, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2406
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit76.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit76.i.i.i: ; preds = %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2389
  br label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit79.i.i.i: ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2389
  %i.vu = icmp ult i64 %i.rr, %2
  br i1 %i.vu, label %.split.i86.i.i.i, label %bb.dw, !prof !7

bb.dw:                                            ; preds = %bb.dx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit79.i.i.i
  %.sroa.05.0.i80.i.i.i = phi i64 [ %i.rr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit79.i.i.i ], [ %i.vv, %bb.dx ]
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2, i64 noundef 0, i64 noundef %.sroa.05.0.i80.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #27, !noalias !2407
  unreachable

.split.i86.i.i.i:                                 ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbyqtxyC5WYI_9uu_numfmt5units9RawSuffixNtNtCs7tKScEop1B6_5alloc6string6StringEEB11_.exit79.i.i.i
  %i.vv = add nuw i64 %i.rr, 1                    ; 5 uses
  %.not17.i87.i.i.i = icmp ult i64 %i.vv, %2
  br i1 %.not17.i87.i.i.i, label %bb.dx, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i

bb.dx:                                            ; preds = %.split.i86.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !alias.scope !2408, !noalias !2409, !noundef !4
  %i.vy = icmp sgt i8 %i.vx, -65
  br i1 %i.vy, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %bb.dw, !prof !7

_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29find_valid_number_with_suffix.exit.i.i: ; preds = %.sink.split.i.i.i, %bb.cw
  %.sroa.8.0.i.i.i = phi i64 [ undef, %bb.cw ], [ %.sroa.8.0.ph.i.i.i, %.sink.split.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.cw ], [ %.sroa.0.0.ph.i.i.i, %.sink.split.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !2410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !2410
  store i64 0, ptr %i.cy, align 8, !noalias !2410
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !2410
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2410
  store i64 0, ptr %i.cx, align 8, !noalias !2410
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !2410
  %.sroa.350.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %2, ptr %.sroa.350.0..sroa_idx.i.i, align 8, !noalias !2410
  %i.vz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i8 1, ptr %i.vz, align 8, !noalias !2410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2411
  store i64 0, ptr %i.ar, align 8, !noalias !2411
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2411
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2411
  %i.wa = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 1610612768, ptr %i.wa, align 8, !noalias !2411
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !2411
  %i.wb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @169, ptr %i.wb, align 8, !noalias !2411
  %i.wc = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #26, !noalias !2412
  br i1 %i.wc, label %bb.dy, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i.i, !prof !15

bb.dy:                                            ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29find_valid_number_with_suffix.exit.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #27, !noalias !2412
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i.i: ; preds = %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format29find_valid_number_with_suffix.exit.i.i
  %.sroa.0303.0.copyload304.i.i = load i64, ptr %i.ar, align 8, !noalias !2413 ; 3 uses
  %.sroa.5.0.copyload306.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2413, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8.0.copyload310.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2413 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2411
  switch i64 %.sroa.8.0.copyload310.i.i, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit435.i.i
    i64 1, label %bb.dz
  ]

bb.dz:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i.i
  %i.wd = load i8, ptr %.sroa.5.0.copyload306.i.i, align 1, !alias.scope !2414, !noalias !2415, !noundef !4 ; 2 uses
  switch i8 %i.wd, label %bb.ea [
    i8 43, label %.loopexit435.i.i
    i8 45, label %.loopexit435.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit.i.i
  %.pr.i.i.i = load i8, ptr %.sroa.5.0.copyload306.i.i, align 1, !alias.scope !2414, !noalias !2415
  br label %bb.ea

bb.ea:                                            ; preds = %thread-pre-split.i.i.i, %bb.dz
  %i.we = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.wd, %bb.dz ]
  switch i8 %i.we, label %bb.eh [
end_hunk_2
