Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_od-e8a75ca9228cc4af.uu_od.9ae3888c10d230e2-cgu.0?download=true
inline.NumInlined: 1209
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMCsdit6BuOJVAc_5uu_odNtB2_9OdOptions3new:bb.a
  %i.my = icmp eq i64 %i.gt, 1
  br i1 %i.my, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !noalias !1585, !noundef !5
  %.not.i80.i = icmp eq i64 %i.na, 0
  br i1 %.not.i80.i, label %.thread.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.i: ; preds = %bb.cs
  %i.nb = load ptr, ptr %i.mg, align 8, !noalias !1585, !nonnull !5, !noundef !5
  %rhsc.i = load i8, ptr %i.nb, align 1, !noalias !1585
  %i.nc = icmp eq i8 %rhsc.i, 43
  br i1 %i.nc, label %bb.ct, label %.thread.i

bb.ct:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1619
  %i.nd = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #29, !noalias !1619 ; 3 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #32, !noalias !1585
  unreachable

bb.cv:                                            ; preds = %bb.ct
  store i8 45, ptr %i.nd, align 1, !noalias !1585
  store i64 1, ptr %i.ck, align 8, !alias.scope !1585
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.nd, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1585
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 1, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1585
  %.sroa.42.0..sroa_idx.i199 = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %i.mx, ptr %.sroa.42.0..sroa_idx.i199, align 8, !alias.scope !1585
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1585
  br label %bb.db

bb.cw:                                            ; preds = %bb.cr
  %i.nf = load ptr, ptr %i.mg, align 8, !noalias !1585, !nonnull !5, !noundef !5
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !1585, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1585
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef %i.nh, i64 noundef 1, i64 noundef 1) #29
  %i.ni = load i64, ptr %i.ak, align 8, !range !15, !noalias !1585, !noundef !5
  %i.nj = trunc nuw i64 %i.ni to i1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !range !22, !noalias !1585, !noundef !5 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.nj, label %bb.cx, label %bb.cy, !prof !12

bb.cx:                                            ; preds = %bb.cw
  %i.nn = load i64, ptr %i.nm, align 8, !noalias !1585
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.nl, i64 %i.nn) #32, !noalias !1585
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.no = load ptr, ptr %i.nm, align 8, !noalias !1585, !nonnull !5, !noundef !5 ; 2 uses
  %i.np = icmp ule i64 %i.nh, %i.nl
  tail call void @llvm.assume(i1 %i.np)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1585
  %.not59.i = icmp eq i64 %i.nh, 0
  br i1 %.not59.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.da, %bb.cy
  store i64 %i.nl, ptr %i.ck, align 8, !alias.scope !1585
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.no, ptr %.sroa.09.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1585
  %.sroa.09.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %i.nh, ptr %.sroa.09.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1585
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %i.mx, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !1585
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !1585
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.no, ptr nonnull align 1 %i.nf, i64 %i.nh, i1 false), !noalias !1585
  br label %bb.cz

bb.db:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit98.i, %bb.cz, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1585
  br label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i

.thread.i:                                        ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit89.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.i, %bb.cs
  %.pr.pre.i = phi i64 [ 1, %bb.cs ], [ 1, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsdit6BuOJVAc_5uu_od.exit.i ], [ %.pr.pre.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit89.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1585
  br label %thread-pre-split.i198

bb.dc:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCsdit6BuOJVAc_5uu_od.exit.i
  %.sroa.413.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtNtCs6JMX4GRUq9U_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCsdit6BuOJVAc_5uu_od.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.413.0.ph.i, i64 %spec.select.i) #32, !noalias !1585
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit.thread25.i: ; preds = %bb.dd, %bb.cq
  %i.nq = phi ptr [ %i.mu, %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.cq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1585
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !noalias !1585, !noundef !5
  %i.nt = icmp eq i64 %i.ns, %spec.select.i
  br i1 %i.nt, label %bb.de, label %bb.df

bb.dd:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mu, ptr nonnull align 1 %spec.select63.i, i64 %spec.select.i, i1 false), !noalias !1585
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit.thread25.i

bb.de:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit.thread25.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !noalias !1585, !nonnull !5, !noundef !5
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.nv, ptr nonnull %i.nq, i64 %spec.select.i), !noalias !1585
  %i.nw = icmp eq i32 %bcmp.i, 0
  br i1 %i.nw, label %.split.i, label %bb.df

bb.df:                                            ; preds = %bb.de, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit.thread25.i
  br i1 %i.mt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nq, i64 noundef %spec.select.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1620
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i: ; preds = %bb.dg, %bb.df
  %i.nx = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.nx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1621
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i: ; preds = %bb.dh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1585
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %.val.i87.i = load i64, ptr %i.ao, align 8, !range !6, !alias.scope !1622, !noalias !1585, !noundef !5 ; 2 uses
  %i.ny = icmp eq i64 %.val.i87.i, 0
  br i1 %i.ny, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit89.i, label %bb.di

bb.di:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val1.i88.i = load ptr, ptr %i.nz, align 8, !alias.scope !1622, !noalias !1585, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i88.i, i64 noundef %.val.i87.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1623
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit89.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit89.i: ; preds = %bb.di, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdit6BuOJVAc_5uu_od.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1585
  %.pr.pre.pre.i = load i64, ptr %i.gs, align 8, !noalias !1585
  br label %.thread.i

.split.i:                                         ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1585
  store ptr %i.mh, ptr %i.al, align 8, !noalias !1585
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !1585
  %i.oa = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ao, ptr %i.oa, align 8, !noalias !1585
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !1585
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.ck, ptr noundef nonnull @163, ptr noundef nonnull %i.al) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1585
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 -1, ptr %i.ob, align 8, !alias.scope !1585
  br i1 %i.mt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit92.i, label %bb.dj

bb.dj:                                            ; preds = %.split.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nq, i64 noundef %spec.select.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1624
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit92.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit92.i: ; preds = %bb.dj, %.split.i
  %i.oc = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.oc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit95.i, label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit92.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1625
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit95.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit95.i: ; preds = %bb.dk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1585
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %.val.i96.i = load i64, ptr %i.ao, align 8, !range !6, !alias.scope !1626, !noalias !1585, !noundef !5 ; 2 uses
  %i.od = icmp eq i64 %.val.i96.i, 0
  br i1 %i.od, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit98.i, label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit95.i
  %.val1.i97.i = load ptr, ptr %i.nu, align 8, !alias.scope !1626, !noalias !1585, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i97.i, i64 noundef %.val.i96.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1627
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit98.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit98.i: ; preds = %bb.dl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit95.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1585
  br label %bb.db

_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i: ; preds = %bb.db, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit172.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit164.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit149.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit.i.i, %bb.ak
  %.val69.i = load i64, ptr %i.aq, align 8, !range !6, !noalias !1585, !noundef !5 ; 2 uses
  %i.oe = icmp eq i64 %.val69.i, 0
  br i1 %i.oe, label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs.exit, label %bb.dm

bb.dm:                                            ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val70.i = load ptr, ptr %i.of, align 8, !noalias !1585, !nonnull !5, !noundef !5
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsdit6BuOJVAc_5uu_od.exit.sink.split.i

thread-pre-split.i198:                            ; preds = %.thread.i, %_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts12opts_present.exit.i
  %i.og = phi i64 [ %i.gt, %_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts12opts_present.exit.i ], [ %.pr.pre.i, %.thread.i ] ; 4 uses
  %i.oh = icmp ult i64 %i.og, 576460752303423488
  call void @llvm.assume(i1 %i.oh)
  %i.oi = icmp eq i64 %i.og, 0
  br i1 %i.oi, label %bb.dt, label %bb.dn

.thread96.i:                                      ; preds = %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecReE8push_mutCsdit6BuOJVAc_5uu_od.exit.i
  %.ph.i = phi i64 [ 1, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecReE8push_mutCsdit6BuOJVAc_5uu_od.exit.i ], [ %i.gt, %bb.cl ], [ %i.gt, %bb.ck ], [ %i.gt, %bb.cj ], [ %i.gt, %bb.ci ], [ %i.gt, %bb.ch ], [ %i.gt, %bb.cg ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !1585, !nonnull !5, !noundef !5
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

bb.dn:                                            ; preds = %thread-pre-split.i198
  %i.ol = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !1585, !nonnull !5, !noundef !5
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.og, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.do, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, !prof !1628

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.dn, %.thread96.i
  %i.on = phi ptr [ %i.ok, %.thread96.i ], [ %i.om, %bb.dn ]
  %i.oo = phi ptr [ %i.oj, %.thread96.i ], [ %i.ol, %bb.dn ]
  %i.op = phi i64 [ %.ph.i, %.thread96.i ], [ %i.og, %bb.dn ] ; 4 uses
  %4 = mul nuw nsw i64 %i.op, 24                  ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1629
  %i.oq = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 9) 8) #29, !noalias !1629 ; 3 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.do, label %.preheader.i.i.i.i

bb.do:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.dn
  %i.os = phi i64 [ %4, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %bb.dn ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.dn ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.os) #32, !noalias !1630
  unreachable

.preheader.i.i.i.i:                               ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRReNtNtCs7tKScEop1B6_5alloc6string6StringuNCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtB11_3vecINtB3y_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1A_EE0E0E0B1G_.exit.i.i.i.i.i.i.i
  %i.ot = phi i64 [ %i.pb, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRReNtNtCs7tKScEop1B6_5alloc6string6StringuNCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtB11_3vecINtB3y_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1A_EE0E0E0B1G_.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 3 uses
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %i.ot ; 2 uses
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !noalias !1631, !nonnull !5, !noundef !5
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %.val12.i.i.i.i.i.i.i = load i64, ptr %i.ov, align 8, !noalias !1631, !noundef !5 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val12.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.dq, label %bb.dp, !prof !11

bb.dp:                                            ; preds = %.preheader.i.i.i.i
  %i.ow = icmp eq i64 %.val12.i.i.i.i.i.i.i, 0
  br i1 %i.ow, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRReNtNtCs7tKScEop1B6_5alloc6string6StringuNCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtB11_3vecINtB3y_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1A_EE0E0E0B1G_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1632
  %i.ox = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #29, !noalias !1632 ; 3 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i) #32, !noalias !1633
  unreachable

bb.dr:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ox, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i.i, i1 false), !noalias !1633
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRReNtNtCs7tKScEop1B6_5alloc6string6StringuNCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtB11_3vecINtB3y_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1A_EE0E0E0B1G_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRReNtNtCs7tKScEop1B6_5alloc6string6StringuNCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtB11_3vecINtB3y_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1A_EE0E0E0B1G_.exit.i.i.i.i.i.i.i: ; preds = %bb.dr, %bb.dp
  %i.oz = phi ptr [ %i.ox, %bb.dr ], [ inttoptr (i64 1 to ptr), %bb.dp ]
  %i.pa = getelementptr inbounds nuw [24 x i8], ptr %i.oq, i64 %i.ot ; 3 uses
  store i64 %.val12.i.i.i.i.i.i.i, ptr %i.pa, align 8, !noalias !1634
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store ptr %i.oz, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1634
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store i64 %.val12.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1634
  %i.pb = add nuw nsw i64 %i.ot, 1                ; 2 uses
  %i.pc = icmp eq i64 %i.pb, %i.op
  br i1 %i.pc, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0EE9from_iterB3h_.exit.i, label %.preheader.i.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0EE9from_iterB3h_.exit.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRReNtNtCs7tKScEop1B6_5alloc6string6StringuNCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtB11_3vecINtB3y_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1A_EE0E0E0B1G_.exit.i.i.i.i.i.i.i
  store i64 %i.op, ptr %i.ck, align 8, !alias.scope !1585
  %.sroa.018.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.oq, ptr %.sroa.018.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1585
  %.sroa.018.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %i.op, ptr %.sroa.018.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1585
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 2, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !1585
  %.val67.i = load i64, ptr %i.aq, align 8, !range !6, !noalias !1585, !noundef !5 ; 2 uses
  %i.pd = icmp eq i64 %.val67.i, 0
  br i1 %i.pd, label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs.exit, label %bb.ds

bb.ds:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0EE9from_iterB3h_.exit.i
  %.val68.i = load ptr, ptr %i.oo, align 8, !noalias !1585, !nonnull !5, !noundef !5
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsdit6BuOJVAc_5uu_od.exit.sink.split.i

bb.dt:                                            ; preds = %thread-pre-split.i198
  %i.pe = load i64, ptr %i.aq, align 8, !range !6, !alias.scope !1635, !noalias !1585, !noundef !5
  %i.pf = icmp eq i64 %i.pe, 0
  br i1 %i.pf, label %bb.du, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecReE8push_mutCsdit6BuOJVAc_5uu_od.exit.i

bb.du:                                            ; preds = %bb.dt
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsgNwXemyrBWj_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #28, !noalias !1585
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecReE8push_mutCsdit6BuOJVAc_5uu_od.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecReE8push_mutCsdit6BuOJVAc_5uu_od.exit.i: ; preds = %bb.du, %bb.dt
  %i.pg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !alias.scope !1635, !noalias !1585, !nonnull !5, !noundef !5 ; 2 uses
  store ptr @25, ptr %i.ph, align 8, !noalias !1585, !captures !26
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i64 1, ptr %i.pi, align 8, !noalias !1585
  store i64 1, ptr %i.gs, align 8, !alias.scope !1635, !noalias !1585
  br label %.thread96.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsdit6BuOJVAc_5uu_od.exit.sink.split.i: ; preds = %bb.ds, %bb.dm
  %.val67.sink.i = phi i64 [ %.val67.i, %bb.ds ], [ %.val69.i, %bb.dm ]
  %.val68.sink.i = phi ptr [ %.val68.i, %bb.ds ], [ %.val70.i, %bb.dm ]
  %i.pj = shl nuw i64 %.val67.sink.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68.sink.i, i64 noundef %i.pj, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1585
  br label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs.exit

_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs.exit: ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs0EE9from_iterB3h_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECsdit6BuOJVAc_5uu_od.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1585
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.pl = load i64, ptr %i.pk, align 8, !range !1636, !noundef !5 ; 3 uses
  %i.pm = icmp eq i64 %i.pl, -1
  br i1 %i.pm, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0388)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0388, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1637
  %i.pn = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #29, !noalias !1637 ; 4 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %bb.dw, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit200, !prof !12

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #32, !noalias !1637
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit200: ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0388, i64 24, i1 false)
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  store i32 1, ptr %.sroa.4389.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0388)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pn, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %i.pq, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsdit6BuOJVAc_5uu_od.exit

bb.dx:                                            ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs12parse_inputs.exit
  %.sroa.0119.0.copyload = load ptr, ptr %i.ck, align 8 ; 2 uses
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.5121.sroa.0.0.copyload = load i64, ptr %.sroa.5121.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5121.sroa.4.0..sroa.5121.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.5121.sroa.4.0.copyload = load i64, ptr %.sroa.5121.sroa.4.0..sroa.5121.0..sroa_idx.sroa_idx, align 8
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %.sroa.7123.0.copyload = load i64, ptr %.sroa.7123.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %.not176 = icmp eq i64 %i.pl, 2
  br i1 %.not176, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.pr = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #29 ; 5 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.dz, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201, !prof !12

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201: ; preds = %bb.dy
  store ptr %.sroa.0119.0.copyload, ptr %i.pr, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store ptr %.sroa.4120.0.copyload, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store i64 %.sroa.5121.sroa.0.0.copyload, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx
  %i.pt = ptrtoint ptr %.sroa.0119.0.copyload to i64
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201
  %.sroa.10.0 = phi i64 [ %.sroa.5121.sroa.0.0.copyload, %bb.ea ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201 ] ; 3 uses
  %.sroa.7.0 = phi ptr [ %.sroa.4120.0.copyload, %bb.ea ], [ %i.pr, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201 ] ; 4 uses
  %.sroa.0350.0 = phi i64 [ %i.pt, %bb.ea ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201 ] ; 3 uses
  %.sroa.349.0 = phi i64 [ undef, %bb.ea ], [ %.sroa.7123.0.copyload, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201 ]
  %.sroa.048.0 = phi i64 [ 0, %bb.ea ], [ %i.pl, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201 ]
  %.sroa.047.1 = phi i64 [ %., %bb.ea ], [ %.sroa.5121.sroa.4.0.copyload, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit201 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1639
  store i64 0, ptr %i.r, align 8, !noalias !1639
  %i.pu = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.pu, align 8, !noalias !1639
  %i.pv = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 10 uses
  store i64 0, ptr %i.pv, align 8, !noalias !1639
  %i.pw = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %3 ; 2 uses
  %i.px = ptrtoint ptr %i.pw to i64
  %.sroa.4.0..sroa_idx.i.i202 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i203 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.qa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i

_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i: ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i.backedge, %bb.eb
  %i.qb = phi i64 [ 0, %bb.eb ], [ %.be, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i.backedge ] ; 12 uses
  %.not.i204 = phi i1 [ false, %bb.eb ], [ true, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i.backedge ]
  %.sroa.11.0.i = phi i64 [ 1, %bb.eb ], [ 0, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i.backedge ] ; 2 uses
  %.sroa.0.0.i205 = phi ptr [ %2, %bb.eb ], [ %.sroa.0.1.i, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i.backedge ] ; 4 uses
  %.sroa.01.0.i = phi i8 [ 0, %bb.eb ], [ %.sroa.01.0.i.be, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i.backedge ] ; 2 uses
  br i1 %.not.i204, label %bb.ec, label %bb.ed, !prof !8

bb.ec:                                            ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i
  %i.qc = icmp eq ptr %.sroa.0.0.i205, %i.pw
  br i1 %i.qc, label %bb.ef, label %bb.ee

bb.ed:                                            ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecNtNtCsdit6BuOJVAc_5uu_od13parse_formats23ParsedFormatterItemInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_.exit151.i
end_hunk_0
begin_hunk_1_@_RNvNtCsdit6BuOJVAc_5uu_od9prn_float12format_float:bb.a
  store i16 %i.ad, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !2189
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @324, ptr noundef nonnull %i.a) #29, !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2189
  %.sroa.032.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !2189 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2189, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2189
  call fastcc void @_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i) #31
  %i.af = icmp eq i64 %.sroa.032.0.copyload.i, 0
  br i1 %i.af, label %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float14format_f64_exp.exit, label %bb.f

bb.f:                                             ; preds = %.split.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.032.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2190
  br label %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float14format_f64_exp.exit

.split25.i:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2189
  %i.ag = trunc nuw nsw i64 %2 to i16
  store ptr %i.d, ptr %i.c, align 8, !noalias !2189
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_8LowerExp3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2189
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.ah, align 8, !noalias !2189
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 %i.ag, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2189
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @324, ptr noundef nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2189
  br label %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float14format_f64_exp.exit

_RNvNtCsdit6BuOJVAc_5uu_od9prn_float14format_f64_exp.exit: ; preds = %.split.i, %bb.f, %.split25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %.split78, %.split74, %bb.m, %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float14format_f64_exp.exit, %.split, %.split70
  ret void

bb.h:                                             ; preds = %bb.c
  %i.ai = fcmp olt double %1, 0.000000e+00
  %i.aj = fneg double %i.r
  %i.ak = fcmp ogt double %1, %i.aj
  %or.cond88 = and i1 %i.ai, %i.ak
  br i1 %or.cond88, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.al = add i32 %i.q, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0 = phi i32 [ %i.al, %bb.i ], [ %i.q, %bb.h ] ; 4 uses
  %i.am = icmp sgt i32 %.sroa.0.0, -1
  %i.an = trunc nuw nsw i64 %3 to i32
  %.not.not = icmp slt i32 %.sroa.0.0, %i.an
  %or.cond89 = select i1 %i.am, i1 %.not.not, i1 false
  br i1 %or.cond89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp eq i32 %.sroa.0.0, -1
  br i1 %i.ao, label %.split74, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = xor i32 %.sroa.0.0, -1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %3, %i.aq                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.as = icmp ugt i64 %i.ar, 65535
  br i1 %i.as, label %bb.n, label %.split78, !prof !12

.split74:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.at = trunc nuw nsw i64 %2 to i16
  %i.au = trunc nuw nsw i64 %3 to i16
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.av, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i16 %i.at, ptr %.sroa.457.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.aw, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i16 %i.au, ptr %.sroa.463.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @330, ptr noundef nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.m:                                             ; preds = %bb.k
  %i.ax = add nsw i64 %3, -1
  tail call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od9prn_float24format_f64_exp_precision(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, double noundef %1, i64 noundef %2, i64 noundef %i.ax) #29
  br label %bb.g

.split78:                                         ; preds = %bb.l
  %i.ay = trunc nuw nsw i64 %2 to i16
  %i.az = trunc nuw nsw i64 %i.ar to i16
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.ba, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i16 %i.ay, ptr %.sroa.439.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.bb, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i16 %i.az, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @330, ptr noundef nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @325, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @331) #30
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCsdit6BuOJVAc_5uu_od9prn_float15format_item_f16(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = load atomic i64, ptr @_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.split16, label %_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit, !prof !12

.split16:                                         ; preds = %bb.a
  %i.i = tail call noundef i128 @_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache21detect_and_initialize() #29
  %i.j = and i128 %i.i, 18014398509481984
  %.not17 = icmp eq i128 %i.j, 0
  br i1 %.not17, label %bb.b, label %bb.m

_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit: ; preds = %bb.a
  %i.k = and i64 %i.g, 18014398509481984
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.split16, %_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit
  %i.l = bitcast double %1 to i64                 ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32                ; 5 uses
  %i.o = and i32 %i.n, -2147483648                ; 2 uses
  %i.p = and i32 %i.n, 2146435072                 ; 6 uses
  %i.q = and i32 %i.n, 1048575                    ; 4 uses
  %i.r = icmp eq i32 %i.p, 2146435072
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %i.q, 0
  %i.t = and i64 %i.l, 4294967295
  %i.u = icmp eq i64 %i.t, 0
  %or.cond.i = and i1 %i.u, %i.s
  %..i = select i1 %or.cond.i, i32 0, i32 512
  %i.v = lshr exact i32 %i.o, 16
  %i.w = lshr i32 %i.q, 10
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = or i32 %i.x, %..i
  %i.z = trunc nuw i32 %i.y to i16
  %i.aa = or disjoint i16 %i.z, 31744
  br label %.split

bb.d:                                             ; preds = %bb.b
  %i.ab = lshr exact i32 %i.o, 16                 ; 4 uses
  %i.ac = lshr exact i32 %i.p, 20                 ; 2 uses
  %i.ad = icmp samesign ugt i32 %i.p, 1088421888
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp samesign ult i32 %i.p, 1058013184
  br i1 %i.ae, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = trunc nuw i32 %i.ab to i16
  %i.ag = or disjoint i16 %i.af, 31744
  br label %.split

bb.g:                                             ; preds = %bb.e
  %i.ah = lshr exact i32 %i.p, 10
  %i.ai = add nuw nsw i32 %i.ah, 16384
  %i.aj = lshr i32 %i.q, 10
  %i.ak = and i32 %i.n, 512
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = and i32 %i.n, 1535
  %i.an = icmp ne i32 %i.am, 0
  %or.cond3.not.i = and i1 %i.al, %i.an
  %i.ao = or disjoint i32 %i.ai, %i.aj
  %i.ap = or i32 %i.ao, %i.ab
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = zext i1 %or.cond3.not.i to i16
  %spec.select9.i = add i16 %i.aq, %i.ar
  br label %.split

bb.h:                                             ; preds = %bb.e
  %i.as = icmp samesign ult i32 %i.p, 1045430272
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = sub nuw nsw i32 1018, %i.ac             ; 2 uses
  %i.au = or disjoint i32 %i.q, 1048576           ; 3 uses
  %i.av = sub nsw i32 27, %i.ac
  %i.aw = and i32 %i.av, 31
  %i.ax = lshr i32 %i.au, %i.aw                   ; 2 uses
  %i.ay = shl nuw nsw i32 1, %i.at
  %i.az = and i32 %i.ay, %i.au
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bb = trunc nuw i32 %i.ab to i16
  br label %.split

bb.k:                                             ; preds = %bb.i
  %i.bc = shl nuw nsw i32 3, %i.at
  %i.bd = add nuw nsw i32 %i.bc, 2097151
  %i.be = and i32 %i.bd, %i.au
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %spec.select.i = add nuw nsw i32 %i.ax, %i.bg
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.05.0.i = phi i32 [ %i.ax, %bb.i ], [ %spec.select.i, %bb.k ]
  %i.bh = or i32 %.sroa.05.0.i, %i.ab
  %i.bi = trunc i32 %i.bh to i16
  br label %.split

bb.m:                                             ; preds = %.split16, %_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit
  %i.bj = fptrunc double %1 to float
  %i.bk = tail call fastcc noundef i16 @_RNvNtNtNtCsdcDajZHpha2_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.bj) #31
  br label %.split

.split:                                           ; preds = %bb.l, %bb.j, %bb.g, %bb.f, %bb.c, %bb.m
  %.sroa.0.0 = phi i16 [ %i.bk, %bb.m ], [ %i.aa, %bb.c ], [ %i.ag, %bb.f ], [ %i.bb, %bb.j ], [ %i.bi, %bb.l ], [ %spec.select9.i, %bb.g ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bl = load atomic i64, ptr @_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !2202 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.split.i, label %_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit.i, !prof !12

.split.i:                                         ; preds = %.split
  %i.bn = tail call noundef i128 @_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache21detect_and_initialize() #29, !noalias !2202
  %i.bo = and i128 %i.bn, 18014398509481984
  %.not2.i = icmp eq i128 %i.bo, 0
  br i1 %.not2.i, label %bb.n, label %bb.w

_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit.i: ; preds = %.split
  %i.bp = and i64 %i.bl, 18014398509481984
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %bb.n, label %bb.w

bb.n:                                             ; preds = %_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit.i, %.split.i
  %i.bq = and i16 %.sroa.0.0, 32767
  %i.br = icmp eq i16 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = zext i16 %.sroa.0.0 to i64
  %i.bt = shl nuw i64 %i.bs, 48
  br label %_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bu = and i16 %.sroa.0.0, -32768
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  %i.bw = and i16 %.sroa.0.0, 31744               ; 3 uses
  %i.bx = and i16 %.sroa.0.0, 1023                ; 3 uses
  %i.by = zext nneg i16 %i.bx to i64              ; 3 uses
  %i.bz = icmp eq i16 %i.bw, 31744
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp eq i16 %i.bx, 0
  %i.cb = shl nuw i64 %i.bv, 48                   ; 2 uses
  br i1 %i.ca, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.cc = shl nuw i64 %i.bv, 48                   ; 2 uses
  %i.cd = icmp eq i16 %i.bw, 0
  br i1 %i.cd, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ce = or disjoint i64 %i.cb, 9218868437227405312
  br label %_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i

bb.t:                                             ; preds = %bb.q
  %i.cf = shl nuw nsw i64 %i.by, 42
  %i.cg = or disjoint i64 %i.cb, %i.cf
  %i.ch = or i64 %i.cg, 9221120237041090560
  br label %_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i

bb.u:                                             ; preds = %bb.r
  %i.ci = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bx, i1 false)
  %i.cj = zext nneg i16 %i.ci to i32              ; 2 uses
  %i.ck = sub nuw nsw i32 1014, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 52
  %i.cn = add nuw nsw i32 %i.cj, 37
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.by, %i.co
  %i.cq = and i64 %i.cp, 4503599627370495
  %i.cr = or disjoint i64 %i.cq, %i.cm
  %i.cs = or disjoint i64 %i.cr, %i.cc
  br label %_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i

bb.v:                                             ; preds = %bb.r
  %i.ct = lshr exact i16 %i.bw, 10
  %narrow.i.i = add nuw nsw i16 %i.ct, 1008
  %i.cu = zext nneg i16 %narrow.i.i to i64
  %i.cv = shl nuw nsw i64 %i.cu, 52
  %i.cw = shl nuw nsw i64 %i.by, 42
  %i.cx = or disjoint i64 %i.cv, %i.cw
  %i.cy = or disjoint i64 %i.cx, %i.cc
  br label %_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i

_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.o
  %.sroa.0.0.i.i = phi i64 [ %i.bt, %bb.o ], [ %i.ce, %bb.s ], [ %i.ch, %bb.t ], [ %i.cs, %bb.u ], [ %i.cy, %bb.v ]
  %i.cz = bitcast i64 %.sroa.0.0.i.i to double
  br label %bb.x

bb.w:                                             ; preds = %_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit.i, %.split.i
  %i.da = tail call fastcc noundef float @_RNvNtNtNtCsdcDajZHpha2_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %.sroa.0.0) #31
  %i.db = fpext float %i.da to double
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i
  %.sroa.0.0.i8 = phi double [ %i.db, %bb.w ], [ %i.cz, %_RNvNtNtCsdcDajZHpha2_4half8binary164arch19f16_to_f64_fallback.exit.i ] ; 2 uses
  %i.dc = and i16 %.sroa.0.0, 31744
  %i.dd = icmp eq i16 %i.dc, 0
  %i.de = and i16 %.sroa.0.0, 1023
  %i.df = icmp ne i16 %i.de, 0
  %.sroa.01.0.i = and i1 %i.dd, %i.df
  br i1 %.sroa.01.0.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od9prn_float12format_float(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, double noundef %.sroa.0.0.i8, i64 noundef 15, i64 noundef 8) #29
  br label %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float10format_f16.exit

bb.z:                                             ; preds = %bb.x
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od9prn_float24format_f64_exp_precision(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, double noundef %.sroa.0.0.i8, i64 noundef 15, i64 noundef 7) #29
  br label %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float10format_f16.exit

_RNvNtCsdit6BuOJVAc_5uu_od9prn_float10format_f16.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od9prn_float15trim_float_repr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dj) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dl, ptr %i.b, align 8, !noalias !2203
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !noalias !2203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2203
  store ptr %i.b, ptr %i.a, align 8, !noalias !2203
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2203
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.dp, align 8, !noalias !2203
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 15, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2203
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @329, ptr noundef nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @332, ptr noundef nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %.val.i = load i64, ptr %i.d, align 8, !range !6, !alias.scope !2204, !noundef !5 ; 2 uses
  %i.dq = icmp eq i64 %.val.i, 0
  br i1 %i.dq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float10format_f16.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i = load ptr, ptr %i.dr, align 8, !alias.scope !2204, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2204
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RNvNtCsdit6BuOJVAc_5uu_od9prn_float10format_f16.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %.val.i10 = load i64, ptr %i.e, align 8, !range !6, !alias.scope !2205, !noundef !5 ; 2 uses
  %i.ds = icmp eq i64 %.val.i10, 0
  br i1 %i.ds, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit12, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %.val.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !2205
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit12

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit12: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %.val.i13 = load i64, ptr %i.f, align 8, !range !6, !alias.scope !2206, !noundef !5 ; 2 uses
end_hunk_1
