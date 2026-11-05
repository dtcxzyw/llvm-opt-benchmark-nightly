Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RNCNvMse_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE13notify_upsert0Cs9KQ7US1M400_11lance_table:bb.a
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !41221
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit unwind label %bb.o

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECs9KQ7US1M400_11lance_table.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41224)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !41225, !nonnull !97, !noundef !97
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !41225
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader15UringFileHandleE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECs9KQ7US1M400_11lance_table.exit unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCs9KQ7US1M400_11lance_table6rowids14select_row_ids0B5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr nofree readonly captures(none) %.0.val, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !41246 {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41247)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !41247, !nonnull !97, !noundef !97
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !41247, !noundef !97 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.split, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.m, %.preheader.i ], [ 0, %.split ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.l, %.preheader.i ], [ 0, %.split ]
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.sroa.04.0.i.i
  %i.k = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j), !noalias !41247
  %i.l = add i64 %i.k, %.sroa.02.0.i.i            ; 2 uses
  %i.m = add nuw i64 %.sroa.04.0.i.i, 1           ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit, label %.preheader.i

_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit: ; preds = %.preheader.i, %.split
  %.sroa.0.0.i.i = phi i64 [ 0, %.split ], [ %i.l, %.preheader.i ]
  store i64 %.sroa.0.0.i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @754, ptr noundef nonnull %i.a), !noalias !41248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !41249)
  call void @llvm.experimental.noalias.scope.decl(metadata !41250)
  %.sroa.06.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !41251 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !41251 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !41251
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !41252
  %i.p = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !41252 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.a, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, !prof !104

bb.a:                                             ; preds = %_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i unwind label %bb.b, !noalias !41253

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs9KQ7US1M400_11lance_table.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !41254
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len.exit
  store i64 %.sroa.06.0.copyload.i, ptr %i.p, align 8, !noalias !41253
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !41253
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !41253
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.t, align 8, !alias.scope !41249
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @26, ptr %i.u, align 8, !alias.scope !41249
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @755, ptr %i.v, align 8, !alias.scope !41249
  store i8 0, ptr %0, align 8, !alias.scope !41249
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit18write_version_hint0B7_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !41595 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [3 x i8], align 4                 ; 4 uses
  %i.h = alloca [2 x i8], align 1                 ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 15 uses
  %i.j = alloca [256 x i8], align 128             ; 17 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [3 x i8], align 4                 ; 4 uses
  %i.p = alloca [2 x i8], align 1                 ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [256 x i8], align 128             ; 17 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.7.i.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [56 x i8], align 8                ; 25 uses
  %i.z = alloca [88 x i8], align 8                ; 10 uses
  %.sroa.3202.i.i = alloca [56 x i8], align 8     ; 8 uses
  %.sroa.5203.i.i = alloca [24 x i8], align 8     ; 7 uses
  %i.aa = alloca [88 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [104 x i8], align 8              ; 7 uses
  %i.ae = alloca [56 x i8], align 8               ; 7 uses
  %i.af = alloca [104 x i8], align 8              ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  %i.ai = alloca [56 x i8], align 8               ; 18 uses
  %i.aj = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 7 uses
  %.sroa.968.i = alloca [32 x i8], align 8        ; 7 uses
  %.sroa.1062.sroa.0.i = alloca [7 x i8], align 1 ; 8 uses
  %.sroa.1062.sroa.8.i = alloca [32 x i8], align 1 ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [40 x i8], align 1               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 23 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [56 x i8], align 8               ; 11 uses
  %.sroa.1074.sroa.0 = alloca [7 x i8], align 1   ; 8 uses
  %.sroa.1074.sroa.10 = alloca [32 x i8], align 1 ; 8 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 7 uses
  %.sroa.10 = alloca [32 x i8], align 8           ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !125, !noundef !97
  switch i8 %i.as, label %default.unreachable182 [
    i8 0, label %bb.b
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.af
  ]

default.unreachable182:                           ; preds = %bb.fi, %bb.cp, %bb.bg, %bb.bb, %bb.aj, %bb.af, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.at = load ptr, ptr %0, align 8, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !97, !align !102, !noundef !97
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !97 ; 2 uses
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %common.ret, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41596)
  %i.ba = load atomic i32, ptr @_RNvNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled7ENABLED acquire, align 4, !noalias !41596
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled0E0zEB1A_()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.d
  %2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled7ENABLED, i64 4), align 4, !range !106, !noalias !41596, !noundef !97
  %3 = trunc nuw i8 %2 to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 121
  %i.bd = load i8, ptr %i.bc, align 1, !range !106, !alias.scope !41596
  %i.be = trunc nuw i8 %i.bd to i1
  %not. = xor i1 %3, true
  %4 = select i1 %not., i1 true, i1 %i.be
  br i1 %4, label %common.ret, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !41597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !41597
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %.noexc31 unwind label %bb.g

.noexc31:                                         ; preds = %bb.f
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) @779, i64 noundef 9)
          to label %.noexc32 unwind label %bb.g

.noexc32:                                         ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !41597
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bf, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1239, i64 noundef 24)
          to label %bb.h unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit, %bb.g
  %.pn19 = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %.pn17, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit ], [ %.pn17, %bb.ab ]
  store i8 2, ptr %i.ar, align 8
  resume { ptr, i32 } %.pn19

bb.g:                                             ; preds = %.noexc32, %.noexc31, %bb.f, %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit

bb.h:                                             ; preds = %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !41597
  %i.bh = load i64, ptr %i.aw, align 8, !noundef !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !41598
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !41599
  %i.bi = tail call noundef dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !41599 ; 6 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.i, label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 128) #80
          to label %.noexc34 unwind label %bb.t

.noexc34:                                         ; preds = %bb.i
  unreachable

_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %bb.h
  store i64 128, ptr %i.am, align 8, !noalias !41598
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 10 uses
  store ptr %i.bi, ptr %i.bk, align 8, !noalias !41598
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41600)
  store i8 123, ptr %i.bi, align 1, !noalias !41601
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 34, ptr %i.bm, align 1, !noalias !41602
  store i64 2, ptr %i.bl, align 8, !alias.scope !41600, !noalias !41603
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.lr.ph

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.lr.ph: ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0.ph.i.i.i.i.i.i.i.i.i.i.i228 = phi ptr [ @171, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %i.cg, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i227 = phi i64 [ 7, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %i.ci, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bn = phi i64 [ 2, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bo = phi ptr [ %i.bi, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %i.dx, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bp = phi ptr [ %i.bi, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ], [ %i.dw, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = add nuw i64 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i227
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.outer.i.i.i.i.i.i.i.i.i.i.i._crit_edge, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i

.outer.i.i.i.i.i.i.i.i.i.i.i._crit_edge:          ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.lcssa215 = phi ptr [ %i.bo, %bb.j ], [ %i.dx, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa213 = phi i64 [ %i.bn, %bb.j ], [ %storemerge.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i227, %bb.j ], [ %i.ci, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.05.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi ptr [ %.sroa.05.0.ph.i.i.i.i.i.i.i.i.i.i.i228, %bb.j ], [ %i.cg, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.br = icmp eq i64 %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa, 0
  %.pre12.i.i = load i64, ptr %i.am, align 8, !range !101, !alias.scope !41600, !noalias !41603 ; 3 uses
  br i1 %i.br, label %_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.outer.i.i.i.i.i.i.i.i.i.i.i._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41607)
  %i.bs = sub i64 %.pre12.i.i, %.lcssa213
  %i.bt = icmp ugt i64 %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa, %i.bs
  br i1 %i.bt, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !100

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.lcssa213, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa, i64 noundef 1, i64 noundef 1)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41598

.noexc8.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = load i64, ptr %i.bl, align 8, !alias.scope !41608, !noalias !41609, !noundef !97
  %.pre10.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !41608, !noalias !41609
  %.pre11.i.pre.i = load i64, ptr %i.am, align 8, !range !101, !alias.scope !41610, !noalias !41611
  br label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i, %bb.k
  %.pre11.i.i = phi i64 [ %.pre11.i.pre.i, %.noexc8.i ], [ %.pre12.i.i, %bb.k ]
  %i.bv = phi ptr [ %.pre10.i.i, %.noexc8.i ], [ %.lcssa215, %bb.k ]
  %.sink1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %.noexc8.i ], [ %.lcssa213, %bb.k ] ; 3 uses
  %i.bw = icmp sgt i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa, i64 range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa, i1 false), !noalias !41612
  %i.by = add nuw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i.lcssa ; 2 uses
  store i64 %i.by, ptr %i.bl, align 8, !alias.scope !41608, !noalias !41609
  br label %_RINvNtCs5QD3CVEMyfH_10serde_json3ser27format_escaped_str_contentsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.lr.ph, %bb.j
  %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218 = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bq, %bb.j ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i.i.i.i.i.i.i228, i64 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !41613, !noundef !97 ; 3 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_RNvNtCs5QD3CVEMyfH_10serde_json3ser6ESCAPE, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !41613, !noundef !97 ; 3 uses
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.j, label %bb.l

bb.l:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i.i.i.i.i.i.i228, i64 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  %i.ch = xor i64 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218, -1
  %i.ci = add i64 %.sroa.5.0.ph.i.i.i.i.i.i.i.i.i.i.i227, %i.ch ; 3 uses
  %i.cj = icmp eq i64 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218, 0
  br i1 %i.cj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41617)
  %i.ck = load i64, ptr %i.am, align 8, !range !101, !alias.scope !41618, !noalias !41619, !noundef !97
  %i.cl = sub i64 %i.ck, %i.bn
  %i.cm = icmp ugt i64 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218, %i.cl
  br i1 %i.cm, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i.i.i.i.i.i.i.i.i.i.i, !prof !100

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218, i64 noundef 1, i64 noundef 1)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41598

.noexc9.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = load i64, ptr %i.bl, align 8, !alias.scope !41620, !noalias !41619, !noundef !97
  %.pre9.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !41620, !noalias !41619 ; 2 uses
  br label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc9.i, %bb.m
  %i.co = phi ptr [ %.pre9.i.i, %.noexc9.i ], [ %i.bp, %bb.m ]
  %i.cp = phi ptr [ %.pre9.i.i, %.noexc9.i ], [ %i.bo, %bb.m ] ; 2 uses
  %.sink1.i22.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.noexc9.i ], [ %i.bn, %bb.m ] ; 3 uses
  %i.cq = icmp sgt i64 %.sink1.i22.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink1.i22.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cr, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i.i.i.i.i.i.i.i.i.i.i228, i64 range(i64 1, -9223372036854775808) %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218, i1 false), !noalias !41621
  %i.cs = add nuw i64 %.sink1.i22.i.i.i.i.i.i.i.i.i.i.i, %.sroa.010.0.i.i.i.i.i.i.i.i.i.i.i218 ; 2 uses
  store i64 %i.cs, ptr %i.bl, align 8, !alias.scope !41620, !noalias !41619
  br label %bb.n

bb.n:                                             ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.ct = phi ptr [ %i.co, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.l ] ; 2 uses
  %i.cu = phi ptr [ %i.cp, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.l ]
  %i.cv = phi i64 [ %i.cs, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bn, %bb.l ] ; 6 uses
  %i.cw = icmp eq i8 %i.cd, 117
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = and i8 %i.ca, 15
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = lshr i8 %i.ca, 4
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCs5QD3CVEMyfH_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !41613, !noundef !97
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCs5QD3CVEMyfH_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.cy
  %i.de = load i8, ptr %i.dd, align 1, !noalias !41613, !noundef !97
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41625)
  %i.df = load i64, ptr %i.am, align 8, !range !101, !alias.scope !41626, !noalias !41627, !noundef !97
  %i.dg = sub i64 %i.df, %i.cv
  %i.dh = icmp ult i64 %i.dg, 6
  br i1 %i.dh, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !100

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.cv, i64 noundef range(i64 0, -9223372036854775808) 6, i64 noundef 1, i64 noundef 1)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41598

.noexc10.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i
  %i.di = load i64, ptr %i.bl, align 8, !alias.scope !41628, !noalias !41627, !noundef !97
  %.pre25.i = load ptr, ptr %i.bk, align 8, !alias.scope !41628, !noalias !41627
  br label %_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtCsgczF5crJ4sT_3std2io5implsQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_5Write9write_allCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i, %bb.o
  %i.dj = phi ptr [ %.pre25.i, %.noexc10.i ], [ %i.ct, %bb.o ] ; 3 uses
  %.sink4.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %.noexc10.i ], [ %i.cv, %bb.o ] ; 3 uses
  %i.dk = icmp sgt i64 %.sink4.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sink4.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.dl, align 1, !noalias !41629
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i8 %i.dc, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !41629
end_hunk_0
begin_hunk_1_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit18write_version_hint0B7_:bb.a
  store i64 %i.eg, ptr %i.bl, align 8, !alias.scope !41642, !noalias !41611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41649)
  %i.eh = icmp eq i64 %i.ec, %i.eg
  br i1 %i.eh, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i6.i.i.i.i.i, label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter18begin_object_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, !prof !100

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i6.i.i.i.i.i: ; preds = %_RINvXs6_NtCs5QD3CVEMyfH_10serde_json3serINtB6_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCskpEw9nXJLNc_10serde_core3ser12SerializeMap13serialize_keyeECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.ec, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41598

.noexc13.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i6.i.i.i.i.i
  %i.ei = load i64, ptr %i.bl, align 8, !alias.scope !41650, !noalias !41644, !noundef !97
  %.pre14.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !41650, !noalias !41644
  br label %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter18begin_object_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter18begin_object_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %.noexc13.i, %_RINvXs6_NtCs5QD3CVEMyfH_10serde_json3serINtB6_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCskpEw9nXJLNc_10serde_core3ser12SerializeMap13serialize_keyeECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i
  %i.ej = phi ptr [ %.pre14.i.i, %.noexc13.i ], [ %i.ee, %_RINvXs6_NtCs5QD3CVEMyfH_10serde_json3serINtB6_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCskpEw9nXJLNc_10serde_core3ser12SerializeMap13serialize_keyeECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ] ; 2 uses
  %.sink1.i.i5.i.i.i.i.i = phi i64 [ %i.ei, %.noexc13.i ], [ %i.eg, %_RINvXs6_NtCs5QD3CVEMyfH_10serde_json3serINtB6_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCskpEw9nXJLNc_10serde_core3ser12SerializeMap13serialize_keyeECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ] ; 3 uses
  %i.ek = icmp sgt i64 %.sink1.i.i5.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sink1.i.i5.i.i.i.i.i
  store i8 58, ptr %i.el, align 1, !noalias !41651
  %i.em = add nuw i64 %.sink1.i.i5.i.i.i.i.i, 1   ; 6 uses
  store i64 %i.em, ptr %i.bl, align 8, !alias.scope !41650, !noalias !41644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !41652
  %i.en = invoke noundef i64 @_RNvXsu_Cs9qmSLk5jYiF_4itoayNtB5_8Unsigned3fmt(i64 noundef %i.bh, ptr noalias noundef nonnull dereferenceable(20) %i.al)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41598 ; 3 uses

.noexc14.i:                                       ; preds = %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter18begin_object_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %i.eo = sub nuw i64 20, %i.en                   ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.en
  call void @llvm.experimental.noalias.scope.decl(metadata !41653)
  call void @llvm.experimental.noalias.scope.decl(metadata !41654)
  call void @llvm.experimental.noalias.scope.decl(metadata !41655)
  call void @llvm.experimental.noalias.scope.decl(metadata !41656)
  %i.eq = load i64, ptr %i.am, align 8, !range !101, !alias.scope !41657, !noalias !41658, !noundef !97 ; 3 uses
  %i.er = sub i64 %i.eq, %i.em
  %i.es = icmp ugt i64 %i.eo, %i.er
  br i1 %i.es, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !100

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc14.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.em, i64 noundef range(i64 0, -9223372036854775808) %i.eo, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41598

.noexc15.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = load i64, ptr %i.bl, align 8, !alias.scope !41659, !noalias !41658, !noundef !97 ; 2 uses
  %i.eu = icmp sgt i64 %i.et, -1
  call void @llvm.assume(i1 %i.eu)
  %.pre15.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !41659, !noalias !41658
  %.pre.i.i.pre.i = load i64, ptr %i.am, align 8, !range !101, !alias.scope !41660, !noalias !41661
  br label %bb.q

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc14.i
  %i.ev = icmp sgt i64 %i.em, -1
  call void @llvm.assume(i1 %i.ev)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.en, 20
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc15.i
  %.pre.i.i.i = phi i64 [ %.pre.i.i.pre.i, %.noexc15.i ], [ %i.eq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ew = phi ptr [ %.pre15.i.i, %.noexc15.i ], [ %i.ej, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ex = phi i64 [ %i.et, %.noexc15.i ], [ %i.em, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr nonnull readonly align 1 %i.ep, i64 range(i64 0, -9223372036854775808) %i.eo, i1 false), !noalias !41662
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = phi i64 [ %.pre.i.i.i, %bb.q ], [ %i.eq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fa = phi i64 [ %i.ex, %bb.q ], [ %i.em, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.fb = add nuw i64 %i.fa, %i.eo                ; 3 uses
  store i64 %i.fb, ptr %i.bl, align 8, !alias.scope !41659, !noalias !41658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !41652
  call void @llvm.experimental.noalias.scope.decl(metadata !41663)
  call void @llvm.experimental.noalias.scope.decl(metadata !41664)
  call void @llvm.experimental.noalias.scope.decl(metadata !41665)
  call void @llvm.experimental.noalias.scope.decl(metadata !41666)
  %i.fc = icmp eq i64 %i.ez, %i.fb
  br i1 %i.fc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i10.i.i.i, label %bb.u, !prof !100

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i10.i.i.i: ; preds = %bb.r
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.ez, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41598

.noexc16.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i10.i.i.i
  %i.fd = load i64, ptr %i.bl, align 8, !alias.scope !41667, !noalias !41661, !noundef !97
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i10.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCs5QD3CVEMyfH_10serde_json3ser16CompactFormatterNtB5_9Formatter18begin_object_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i6.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.am, align 8, !noalias !41598 ; 2 uses
  %i.fe = icmp eq i64 %.val4.i, 0
  br i1 %i.fe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val5.i = load ptr, ptr %i.bk, align 8, !noalias !41598, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !41598
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit

bb.t:                                             ; preds = %bb.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit

bb.u:                                             ; preds = %.noexc16.i, %bb.r
  %.sink1.i.i.i9.i.i.i = phi i64 [ %i.fd, %.noexc16.i ], [ %i.fb, %bb.r ] ; 3 uses
  %i.fg = icmp sgt i64 %.sink1.i.i.i9.i.i.i, -1
  call void @llvm.assume(i1 %i.fg)
  %i.fh = load ptr, ptr %i.bk, align 8, !alias.scope !41667, !noalias !41661, !nonnull !97, !noundef !97 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sink1.i.i.i9.i.i.i
  store i8 125, ptr %i.fi, align 1, !noalias !41668
  %.sroa.0.0.copyload = load i64, ptr %i.am, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !41598
  call void @llvm.experimental.noalias.scope.decl(metadata !41669)
  call void @llvm.experimental.noalias.scope.decl(metadata !41670)
  %i.fj = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.fj, label %bb.v, label %.thread183, !prof !100

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !41671
  store ptr %i.fh, ptr %i.ak, align 8, !noalias !41671
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @761, i64 noundef 22, ptr noundef nonnull %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @911, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @762) #80
          to label %bb.x unwind label %bb.w, !noalias !41671

bb.w:                                             ; preds = %bb.v
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak) #81
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit unwind label %bb.y, !noalias !41671

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !41671
  unreachable

.thread183:                                       ; preds = %bb.u
  %i.fm = add nuw i64 %.sink1.i.i.i9.i.i.i, 1     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0.copyload, ptr %i.fn, align 8, !alias.scope !41671
  %.sroa.7.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.fh, ptr %.sroa.7.0..sroa_idx60, align 8, !alias.scope !41671
  %.sroa.8.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.fm, ptr %.sroa.8.0..sroa_idx62, align 8, !alias.scope !41671
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.at, ptr %i.fo, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bf, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.fh, ptr %.sroa.971.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.fm, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1074.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1074.sroa.10)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.968.i)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %.thread165.i

bb.z:                                             ; preds = %bb.jq, %bb.jj, %.body43
  %.pn15 = phi { ptr, i32 } [ %i.zy, %bb.jj ], [ %.pn11, %bb.jq ], [ %eh.lpad-body44, %.body43 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val22 = load i64, ptr %i.fr, align 8          ; 2 uses
  %i.fs = icmp eq i64 %.val22, 0
  br i1 %i.fs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ft = getelementptr i8, ptr %0, i64 64
  %.val23 = load ptr, ptr %i.ft, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %.val22, i64 noundef range(i64 1, -9223372036854775807) 1) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.t, %bb.w, %bb.aa, %bb.z
  %.pn17 = phi { ptr, i32 } [ %i.fk, %bb.w ], [ %.pn15, %bb.aa ], [ %.pn15, %bb.z ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ff, %bb.t ], [ %lpad.loopexit.split-lp235, %bb.s ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !41672)
  call void @llvm.experimental.noalias.scope.decl(metadata !41673)
  %.val.i.i = load i64, ptr %i.fu, align 8, !alias.scope !41674 ; 2 uses
  %i.fv = icmp eq i64 %.val.i.i, 0
  br i1 %i.fv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load ptr, ptr %i.fw, align 8, !alias.scope !41674, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !41674
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit

common.ret:                                       ; preds = %bb.jx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit51, %bb.b, %bb.e, %bb.jh
  %storemerge = phi i8 [ 3, %bb.jh ], [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit51 ], [ 1, %bb.jx ]
  %common.ret.op = phi i1 [ true, %bb.jh ], [ false, %bb.b ], [ false, %bb.e ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit51 ], [ false, %bb.jx ]
  store i8 %storemerge, ptr %i.ar, align 8
  ret i1 %common.ret.op

bb.ac:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @763) #80
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @763) #80
  unreachable

bb.ae:                                            ; preds = %bb.ah, %bb.ag
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %.body35.i, %bb.ae
  %i.fy = phi ptr [ %i.fz, %bb.ae ], [ %i.wo, %.body35.i ]
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.fx, %bb.ae ], [ %.pn10.pn.i, %.body35.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1074.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1074.sroa.10)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore3put0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.fy) #81
          to label %bb.z unwind label %bb.ju

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !159, !noalias !41675
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1074.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1074.sroa.10)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.968.i)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 12 uses
  switch i8 %.pre, label %default.unreachable182 [
    i8 0, label %.thread165.i
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.aj
    i8 4, label %._crit_edge116.i
    i8 5, label %._crit_edge119.i
  ]

._crit_edge119.i:                                 ; preds = %bb.af
  %.phi.trans.insert120.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val16.pre.i = load ptr, ptr %.phi.trans.insert120.i, align 8, !noalias !41675
  %.phi.trans.insert122.i = getelementptr i8, ptr %0, i64 160
  %.val17.pre.i = load ptr, ptr %.phi.trans.insert122.i, align 8, !noalias !41675
  br label %bb.ix

._crit_edge116.i:                                 ; preds = %bb.af
  %.phi.trans.insert117.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre.i28.pre.i = load i64, ptr %.phi.trans.insert117.i, align 8, !noalias !41677
  br label %bb.il

.thread165.i:                                     ; preds = %.thread183, %bb.af
  %i.gb = phi ptr [ %i.fq, %.thread183 ], [ %i.ga, %bb.af ]
  %i.gc = phi ptr [ %i.fp, %.thread183 ], [ %i.fz, %bb.af ] ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !41675, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !41675, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !41675, !nonnull !97, !noundef !97
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !41675, !noundef !97
  store ptr %i.gi, ptr %i.gg, align 8, !noalias !41675
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.gk, ptr %i.gl, align 8, !noalias !41675
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.gd, ptr %i.gm, align 8, !noalias !41675
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.gf, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !41675
  %.sroa.1059.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i8 0, ptr %.sroa.1059.0..sroa_idx.i, align 8, !noalias !41675
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1062.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1062.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !41675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41675
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3202.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5203.i.i)
  br label %bb.al

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #80
          to label %.noexc41 unwind label %bb.ae

.noexc41:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @703) #80
          to label %.noexc42 unwind label %bb.ae

.noexc42:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.az, %bb.ay
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i, %bb.ai
  %i.go = phi ptr [ %i.ga, %bb.ai ], [ %i.hc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ]
  %i.gp = phi ptr [ %i.fz, %bb.ai ], [ %i.hd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ]
  %i.gq = phi ptr [ %i.gr, %bb.ai ], [ %i.hf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gn, %bb.ai ], [ %.pn34.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1062.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1062.sroa.8.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtBJ_11ObjectStore6create0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.gq) #81
          to label %.body35.i unwind label %bb.ik, !noalias !41678

bb.aj:                                            ; preds = %bb.af
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 9 uses
  %.pre.i38 = load i8, ptr %.phi.trans.insert.i, align 8, !range !159, !noalias !41679
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1062.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1062.sroa.8.i)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !41675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !41675
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3202.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5203.i.i)
  switch i8 %.pre.i38, label %default.unreachable182 [
    i8 0, label %._crit_edge
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.bb
    i8 4, label %bb.ak
    i8 5, label %bb.hv
  ]

._crit_edge:                                      ; preds = %bb.aj
  %.pre129 = load ptr, ptr %i.gr, align 8, !noalias !41679
  %.phi.trans.insert130 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre131 = load ptr, ptr %.phi.trans.insert130, align 8, !noalias !41679
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !41679
  %.phi.trans.insert283.i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val47.pre.i.i = load ptr, ptr %.phi.trans.insert283.i.i, align 8, !noalias !41679
  br label %bb.fi

bb.al:                                            ; preds = %._crit_edge, %.thread165.i
  %i.gs = phi ptr [ %i.gb, %.thread165.i ], [ %i.ga, %._crit_edge ] ; 6 uses
  %i.gt = phi ptr [ %i.gc, %.thread165.i ], [ %i.fz, %._crit_edge ] ; 6 uses
  %i.gu = phi ptr [ %i.gf, %.thread165.i ], [ %.pre131, %._crit_edge ] ; 3 uses
  %i.gv = phi ptr [ %i.gd, %.thread165.i ], [ %.pre129, %._crit_edge ] ; 6 uses
  %i.gw = phi ptr [ %.sroa.1059.0..sroa_idx.i, %.thread165.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 6 uses
  %i.gx = phi ptr [ %i.gm, %.thread165.i ], [ %i.gr, %._crit_edge ] ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.gv, ptr %i.gy, align 8, !noalias !41679
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.gu, ptr %i.gz, align 8, !noalias !41679
  %i.ha = getelementptr i8, ptr %i.gv, i64 16
  %.val40.i.i = load i64, ptr %i.ha, align 8, !noalias !41681, !noundef !97
  %i.hb = icmp eq i64 %.val40.i.i, 4
  br i1 %i.hb, label %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i, label %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.ib, %bb.hu, %bb.ax, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs9KQ7US1M400_11lance_table.exit77.i.i, %bb.an
  %i.hc = phi ptr [ %i.gs, %bb.an ], [ %i.ih, %bb.ax ], [ %i.ih, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs9KQ7US1M400_11lance_table.exit77.i.i ], [ %i.vg, %bb.ib ], [ %i.vg, %bb.hu ]
  %i.hd = phi ptr [ %i.gt, %bb.an ], [ %i.ii, %bb.ax ], [ %i.ii, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs9KQ7US1M400_11lance_table.exit77.i.i ], [ %i.vh, %bb.ib ], [ %i.vh, %bb.hu ]
  %i.he = phi ptr [ %i.gw, %bb.an ], [ %i.ij, %bb.ax ], [ %i.ij, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs9KQ7US1M400_11lance_table.exit77.i.i ], [ %i.vi, %bb.ib ], [ %i.vi, %bb.hu ]
  %i.hf = phi ptr [ %i.gx, %bb.an ], [ %i.ik, %bb.ax ], [ %i.ik, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs9KQ7US1M400_11lance_table.exit77.i.i ], [ %i.vj, %bb.ib ], [ %i.vj, %bb.hu ]
  %.pn34.i.i = phi { ptr, i32 } [ %i.hm, %bb.an ], [ %.pn32.i.i, %bb.ax ], [ %.pn32.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECs9KQ7US1M400_11lance_table.exit77.i.i ], [ %i.vq, %bb.ib ], [ %i.vf, %bb.hu ]
  store i8 2, ptr %i.he, align 8, !noalias !41679
  br label %.body.i

_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.al
  %i.hg = getelementptr i8, ptr %i.gv, i64 8
  %.val39.i.i = load ptr, ptr %i.hg, align 8, !noalias !41681, !nonnull !97, !noundef !97
  %i.hh = load i32, ptr %.val39.i.i, align 1
  %i.hi = icmp ne i32 %i.hh, 1701603686
  %i.hj = zext i1 %i.hi to i32
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.am, label %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i

bb.am:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i
  %i.hl = invoke noundef zeroext i1 @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore22has_direct_local_paths(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gv)
          to label %bb.ao unwind label %bb.an, !noalias !41681

bb.an:                                            ; preds = %bb.ap, %bb.am
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i.i

bb.ao:                                            ; preds = %bb.am
  br i1 %i.hl, label %bb.ap, label %._RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i

._RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread_crit_edge.i.i: ; preds = %bb.ao
  %.pre.i.i = load ptr, ptr %i.gy, align 8, !noalias !41679
  %.pre281.i.i = load ptr, ptr %i.gz, align 8, !noalias !41679
  br label %_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hn = load ptr, ptr %i.gz, align 8, !noalias !41679, !nonnull !97, !align !102, !noundef !97
end_hunk_1
begin_hunk_2_@_RNCNvXs0_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB7_29ExternalManifestCommitHandlerNtB9_13CommitHandler23resolve_latest_location0Bd_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB4_29ExternalManifestCommitHandler17finalize_manifest0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.z, ptr noundef nonnull align 8 %i.iv, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bs unwind label %bb.bq

bb.bs:                                            ; preds = %bb.br
  %i.iw = load i64, ptr %i.z, align 8, !range !205, !noundef !97 ; 3 uses
  %i.ix = icmp eq i64 %i.iw, -2
  br i1 %i.ix, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.bu:                                            ; preds = %bb.bs
  %.sroa.3176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.iy = load <2 x i64>, ptr %.sroa.3176.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3176.sroa.5.0..sroa.3176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.3176.sroa.5.0.copyload = load ptr, ptr %.sroa.3176.sroa.5.0..sroa.3176.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3176.sroa.7.0..sroa.3176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.iz = load <2 x i64>, ptr %.sroa.3176.sroa.7.0..sroa.3176.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3176.sroa.11.0..sroa.3176.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3176.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3176.sroa.11.0..sroa.3176.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %.sroa.5177.sroa.0.0.copyload = load i64, ptr %.sroa.5177.0..sroa_idx, align 8
  %.sroa.5177.sroa.2.0..sroa.5177.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %.sroa.5177.sroa.2.0.copyload = load i8, ptr %.sroa.5177.sroa.2.0..sroa.5177.0..sroa_idx.sroa_idx, align 8
  %.sroa.5177.sroa.3.0..sroa.5177.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5177.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5177.sroa.3.0..sroa.5177.0..sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMNtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtBG_29ExternalManifestCommitHandler17finalize_manifest0EBM_(ptr noundef nonnull align 8 %i.iv)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bw:                                            ; preds = %bb.bu
  %i.jb = icmp eq i64 %i.iw, -1
  br i1 %i.jb, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.25, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5177.sroa.3, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3176.sroa.11, i64 16, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.experimental.noalias.scope.decl(metadata !43593)
  call void @llvm.experimental.noalias.scope.decl(metadata !43594)
  %.val.i.i76 = load i64, ptr %i.jc, align 8, !alias.scope !43595 ; 2 uses
  %i.jd = icmp eq i64 %.val.i.i76, 0
  br i1 %i.jd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit78, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val1.i.i77 = load ptr, ptr %i.je, align 8, !alias.scope !43595, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i77, i64 noundef %.val.i.i76, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43595
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit78

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit78: ; preds = %bb.by, %bb.bx
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val38 = load i64, ptr %i.jf, align 8, !range !99, !noundef !97 ; 2 uses
  %i.jg = icmp sgt i64 %.val38, 0
  br i1 %i.jg, label %bb.bz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit

bb.bz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit78
  %i.jh = getelementptr i8, ptr %1, i64 224
  %.val39 = load ptr, ptr %i.jh, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val39, i64 noundef %.val38, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43596
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit87: ; preds = %bb.ch, %bb.cg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit84
  store i8 0, ptr %i.jr, align 2
  store i8 0, ptr %i.el, align 1
  br label %bb.ci

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.bz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit78
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 322
  store i8 0, ptr %i.ji, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 323
  store i8 0, ptr %i.jj, align 1
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3176.sroa.11, i64 16, i1 false)
  br label %bb.bk

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81: ; preds = %bb.cc, %bb.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit
  store i8 0, ptr %i.ei, align 2
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 323
  store i8 0, ptr %i.jk, align 1
  br label %bb.cd

bb.cb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val36 = load i64, ptr %i.jl, align 8, !range !99, !noundef !97 ; 2 uses
  %i.jm = icmp sgt i64 %.val36, 0
  br i1 %i.jm, label %bb.cc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81

bb.cc:                                            ; preds = %bb.cb
  %i.jn = getelementptr i8, ptr %1, i64 224
  %.val37 = load ptr, ptr %i.jn, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %.val36, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43597
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81

bb.cd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit, %bb.ii, %bb.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81
  %.sroa.24.5 = phi i8 [ %.sroa.24.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81 ], [ undef, %bb.w ], [ %.sroa.47.sroa.10.0.i, %bb.ii ], [ %.sroa.5177.sroa.2.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.21.5 = phi i64 [ %.sroa.21.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81 ], [ undef, %bb.w ], [ %.sroa.47.sroa.9.0.i, %bb.ii ], [ %.sroa.5177.sroa.0.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.17222.5 = phi ptr [ %.sroa.17222.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81 ], [ %.sroa.3.sroa.5.0.copyload, %bb.w ], [ %.sroa.47.sroa.5.0.i, %bb.ii ], [ %.sroa.3176.sroa.5.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit ]
  %.sroa.0201.5 = phi i64 [ %.sroa.0201.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81 ], [ -1, %bb.w ], [ %.sroa.04.0.i, %bb.ii ], [ %i.iw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit ]
  %i.jo = phi <2 x i64> [ %i.eg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81 ], [ %i.bl, %bb.w ], [ %i.zp, %bb.ii ], [ %i.iy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit ]
  %i.jp = phi <2 x i64> [ %i.eh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit81 ], [ %i.bm, %bb.w ], [ %i.zq, %bb.ii ], [ %i.iz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit ]
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 324
  store i8 0, ptr %i.jq, align 4
  store i64 %.sroa.0201.5, ptr %0, align 8
  %.sroa.9203.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.jo, ptr %.sroa.9203.0..sroa_idx204, align 8
  %.sroa.17222.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.17222.5, ptr %.sroa.17222.0..sroa_idx223, align 8
  %.sroa.18233.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.jp, ptr %.sroa.18233.0..sroa_idx234, align 8
  %.sroa.20.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.0..sroa_idx255, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20, i64 16, i1 false)
  %.sroa.21.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.21.5, ptr %.sroa.21.0..sroa_idx259, align 8
  %.sroa.24.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.24.5, ptr %.sroa.24.0..sroa_idx262, align 8
  %.sroa.25.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %0, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.25.0..sroa_idx265, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.25, i64 7, i1 false)
  br label %common.ret

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit84: ; preds = %bb.cf, %bb.ce, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit74
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 322 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 2, !range !106, !noundef !97
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit87

bb.ce:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit74
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !43598)
  call void @llvm.experimental.noalias.scope.decl(metadata !43599)
  %.val.i.i82 = load i64, ptr %i.ju, align 8, !alias.scope !43600 ; 2 uses
  %i.jv = icmp eq i64 %.val.i.i82, 0
  br i1 %i.jv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit84, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val1.i.i83 = load ptr, ptr %i.jw, align 8, !alias.scope !43600, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i83, i64 noundef %.val.i.i82, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43600
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit84

bb.cg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit84
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val = load i64, ptr %i.jx, align 8, !range !99, !noundef !97 ; 2 uses
  %i.jy = icmp sgt i64 %.val, 0
  br i1 %i.jy, label %bb.ch, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit87

bb.ch:                                            ; preds = %bb.cg
  %i.jz = getelementptr i8, ptr %1, i64 224
  %.val35 = load ptr, ptr %i.jz, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !43601
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit87

bb.ci:                                            ; preds = %.body94, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit87
  %.pn28.pn = phi { ptr, i32 } [ %.pn25.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit87 ], [ %eh.lpad-body95, %.body94 ] ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !range !126, !noundef !97
  %.not31 = icmp eq i64 %i.kb, -1
  br i1 %.not31, label %.body, label %bb.ij

bb.cj:                                            ; preds = %bb.cz, %bb.cy
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.body94:                                          ; preds = %bb.dj, %bb.cj
  %i.kd = phi ptr [ %i.ke, %bb.cj ], [ %i.lz, %bb.dj ]
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.kc, %bb.cj ], [ %.pn15.pn.i, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14197)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit21current_manifest_path0EBJ_(ptr noundef nonnull align 8 %i.kd) #81
          to label %bb.ci unwind label %bb.v

bb.ck:                                            ; preds = %bb.a
  %.phi.trans.insert386 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.pre387 = load i8, ptr %.phi.trans.insert386, align 8, !range !155, !noalias !43602
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14197)
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.9.i)
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 8 uses
  switch i8 %.pre387, label %default.unreachable420 [
    i8 0, label %bb.cl
    i8 1, label %bb.cy
    i8 2, label %bb.cz
    i8 3, label %bb.db
    i8 4, label %bb.dl
  ]

bb.cl:                                            ; preds = %.thread, %bb.ck
  %i.kg = phi ptr [ %i.cm, %.thread ], [ %i.kf, %bb.ck ] ; 7 uses
  %i.kh = phi ptr [ %i.cl, %.thread ], [ %i.ke, %bb.ck ] ; 7 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.kj = load ptr, ptr %i.kh, align 8, !noalias !43602, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  store ptr %i.kj, ptr %i.ki, align 8, !noalias !43602
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !43602, !nonnull !97, !align !102, !noundef !97
  store ptr %i.km, ptr %i.kk, align 8, !noalias !43602
  %i.kn = invoke noundef zeroext i1 @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore22has_direct_local_paths(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.kj)
          to label %bb.cm unwind label %bb.cq, !noalias !43603

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.kn, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ko = load ptr, ptr %i.ki, align 8, !noalias !43602, !nonnull !97, !align !102, !noundef !97
  call void @llvm.experimental.noalias.scope.decl(metadata !43604)
  %i.kp = load atomic i32, ptr @_RNvNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled7ENABLED acquire, align 4, !noalias !43605
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.cr, label %bb.co, !prof !109

bb.co:                                            ; preds = %bb.cn
  invoke fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled0E0zEB1A_()
          to label %bb.cr unwind label %bb.cq, !noalias !43603

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !43602
  %i.kr = load ptr, ptr %i.kk, align 8, !noalias !43602, !nonnull !97, !align !102, !noundef !97
  invoke void @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit22current_manifest_local(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr)
          to label %bb.cu unwind label %bb.ct, !noalias !43603

bb.cq:                                            ; preds = %bb.if, %bb.dg, %bb.df, %bb.co, %bb.cl
  %i.ks = phi ptr [ %i.zg, %bb.if ], [ %i.lh, %bb.dg ], [ %i.lh, %bb.df ], [ %i.kg, %bb.co ], [ %i.kg, %bb.cl ]
  %i.kt = phi ptr [ %i.zh, %bb.if ], [ %i.li, %bb.dg ], [ %i.li, %bb.df ], [ %i.kh, %bb.co ], [ %i.kh, %bb.cl ]
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.cr:                                            ; preds = %bb.co, %bb.cn
  %3 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled7ENABLED, i64 4), align 4, !range !106, !noalias !43605, !noundef !97
  %4 = trunc nuw i8 %3 to i1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 121
  %i.kw = load i8, ptr %i.kv, align 1, !range !106, !alias.scope !43604, !noalias !43603
  %i.kx = trunc nuw i8 %i.kw to i1
  %not..i = xor i1 %4, true
  %5 = select i1 %not..i, i1 true, i1 %i.kx
  br i1 %5, label %.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.kz = load <2 x ptr>, ptr %i.ki, align 8, !noalias !43602
  store <2 x ptr> %i.kz, ptr %i.ky, align 8, !noalias !43602
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !43602
  br label %bb.db

bb.ct:                                            ; preds = %bb.cx, %bb.cp
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !43602
  br label %bb.dj

bb.cu:                                            ; preds = %bb.cp
  %i.lb = load i64, ptr %i.y, align 8, !range !205, !noalias !43602, !noundef !97 ; 3 uses
  %switch.i92 = icmp ugt i64 %i.lb, -3
  br i1 %switch.i92, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.lc = icmp eq i64 %i.lb, -2
  br i1 %i.lc, label %bb.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationENtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEB1p_.exit26.i

bb.cw:                                            ; preds = %bb.cu
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ld = load <2 x i64>, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !43602
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.411.sroa.5.0.copyload.i = load ptr, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.le = load <2 x i64>, ptr %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.411.sroa.8.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.sroa.8.0..sroa.411.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !43602
  %.sroa.411.sroa.9.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.411.sroa.9.0.copyload.i = load i64, ptr %.sroa.411.sroa.9.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.411.sroa.10.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %.sroa.411.sroa.10.0.copyload.i = load i8, ptr %.sroa.411.sroa.10.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.411.sroa.11.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.sroa.11.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.411.sroa.11.0..sroa.411.0..sroa_idx.sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !43602
  br label %bb.ii

bb.cx:                                            ; preds = %bb.cv
  %i.lf = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationENtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEB1p_.exit26.i unwind label %bb.ct, !noalias !43603

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationENtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEB1p_.exit26.i: ; preds = %bb.cx, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !43602
  br label %.thread.i

bb.cy:                                            ; preds = %bb.ck
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #80
          to label %.noexc unwind label %bb.cj

.noexc:                                           ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.ck
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #80
          to label %.noexc93 unwind label %bb.cj

.noexc93:                                         ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.db
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !43602
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_(ptr noundef nonnull align 8 %i.lj) #81
          to label %bb.dj unwind label %bb.di, !noalias !43603

bb.db:                                            ; preds = %bb.cs, %bb.ck
  %i.lh = phi ptr [ %i.kg, %bb.cs ], [ %i.kf, %bb.ck ] ; 6 uses
  %i.li = phi ptr [ %i.kh, %bb.cs ], [ %i.ke, %bb.ck ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !43602
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  invoke fastcc void @_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0B7_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.x, ptr noundef nonnull align 8 %i.lj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dc unwind label %bb.da, !noalias !43603

bb.dc:                                            ; preds = %bb.db
  %i.lk = load i64, ptr %i.x, align 8, !range !205, !noalias !43602, !noundef !97 ; 3 uses
  %i.ll = icmp eq i64 %i.lk, -2
  br i1 %i.ll, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !43602
  br label %bb.ih

bb.de:                                            ; preds = %bb.dc
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.lm = load <2 x i64>, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !43602
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.3.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ln = load <2 x i64>, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !43602
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.3.sroa.7.0.copyload.i = load i64, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.3.sroa.8.0.copyload.i = load i8, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !43602
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 7, i1 false), !noalias !43602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !43602
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.lp = load i8, ptr %i.lo, align 8, !range !155, !noalias !43602, !noundef !97
  switch i8 %i.lp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i [
    i8 4, label %bb.dg
    i8 3, label %bb.df
  ]

bb.df:                                            ; preds = %bb.de
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit22read_version_from_hint0EBJ_(ptr noundef nonnull align 8 %i.lq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i unwind label %bb.cq, !noalias !43603

bb.dg:                                            ; preds = %bb.de
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit21probe_versions_upward0EBJ_(ptr noundef nonnull align 8 %i.lr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i unwind label %bb.cq, !noalias !43603

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i: ; preds = %bb.dg, %bb.df, %bb.de
  %.not.i91 = icmp eq i64 %i.lk, -1
  br i1 %.not.i91, label %.thread.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.6.i, i64 16, i1 false), !noalias !43602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.47.sroa.11.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.9.i, i64 7, i1 false)
  br label %bb.ii

.thread.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationENtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEB1p_.exit26.i, %bb.cr
  %6 = phi ptr [ %i.lh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i ], [ %i.kg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationENtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEB1p_.exit26.i ], [ %i.kg, %bb.cr ]
  %7 = phi ptr [ %i.li, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0EBJ_.exit.i ], [ %i.kh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationENtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEEB1p_.exit26.i ], [ %i.kh, %bb.cr ]
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !43602, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !43602, !nonnull !97, !align !102, !noundef !97 ; 2 uses
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  store ptr %i.lt, ptr %.sroa.743.0..sroa_idx.i, align 8, !noalias !43602
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr %i.lv, ptr %.sroa.844.0..sroa_idx.i, align 8, !noalias !43602
  %.sroa.1046.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 635 ; 2 uses
  store i8 0, ptr %.sroa.1046.0..sroa_idx.i, align 1, !noalias !43602
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5259.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5259.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6227.sroa.2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !43602
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6196.i.i)
  br label %bb.dm

bb.di:                                            ; preds = %.body.i, %bb.da
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !43603
  unreachable

bb.dj:                                            ; preds = %.body.i, %bb.da, %bb.ct, %bb.cq
  %i.ly = phi ptr [ %i.lh, %bb.da ], [ %i.kg, %bb.ct ], [ %i.ks, %bb.cq ], [ %i.mb, %.body.i ]
  %i.lz = phi ptr [ %i.li, %bb.da ], [ %i.kh, %bb.ct ], [ %i.kt, %bb.cq ], [ %i.mc, %.body.i ]
  %.pn15.pn.i = phi { ptr, i32 } [ %i.lg, %bb.da ], [ %i.la, %bb.ct ], [ %i.ku, %bb.cq ], [ %eh.lpad-body.i, %.body.i ]
  store i8 2, ptr %i.ly, align 8, !noalias !43602
  br label %.body94

bb.dk:                                            ; preds = %bb.dy, %bb.dx
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dw, %bb.dk
  %i.mb = phi ptr [ %i.kf, %bb.dk ], [ %i.nj, %bb.dw ]
  %i.mc = phi ptr [ %i.ke, %bb.dk ], [ %i.nk, %bb.dw ]
  %i.md = phi ptr [ %i.me, %bb.dk ], [ %i.nm, %bb.dw ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ma, %bb.dk ], [ %.pn65.pn.i.i, %bb.dw ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit28resolve_version_from_listing0EBJ_(ptr noundef nonnull align 8 %i.md) #81
          to label %bb.dj unwind label %bb.di, !noalias !43603

bb.dl:                                            ; preds = %bb.ck
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 635 ; 6 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !range !159, !noalias !43606
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5259.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5259.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6227.sroa.2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !43602
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6196.i.i)
  switch i8 %.pre.i, label %default.unreachable420 [
    i8 0, label %._crit_edge388
    i8 1, label %bb.dx
    i8 2, label %bb.dy
    i8 3, label %bb.dn
    i8 4, label %bb.fd
    i8 5, label %bb.do
  ]

._crit_edge388:                                   ; preds = %bb.dl
  %.phi.trans.insert389 = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.pre390 = load ptr, ptr %.phi.trans.insert389, align 8, !noalias !43606
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.pre392 = load ptr, ptr %.phi.trans.insert391, align 8, !noalias !43606
  br label %bb.dm

bb.dm:                                            ; preds = %._crit_edge388, %.thread.i
  %i.mf = phi ptr [ %6, %.thread.i ], [ %i.kf, %._crit_edge388 ] ; 2 uses
  %i.mg = phi ptr [ %7, %.thread.i ], [ %i.ke, %._crit_edge388 ] ; 2 uses
  %i.mh = phi ptr [ %i.lv, %.thread.i ], [ %.pre392, %._crit_edge388 ] ; 2 uses
  %i.mi = phi ptr [ %i.lt, %.thread.i ], [ %.pre390, %._crit_edge388 ] ; 2 uses
  %i.mj = phi ptr [ %.sroa.1046.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge388 ] ; 2 uses
  %i.mk = phi ptr [ %i.lw, %.thread.i ], [ %i.me, %._crit_edge388 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  store i8 0, ptr %i.ml, align 8, !noalias !43606
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 634
  store i8 0, ptr %i.mm, align 2, !noalias !43606
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 633
  store i8 0, ptr %i.mn, align 1, !noalias !43606
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 480
  store ptr %i.mi, ptr %i.mo, align 8, !noalias !43606
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 488
  store ptr %i.mh, ptr %i.mp, align 8, !noalias !43606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !43606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !43606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !43606
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mh)
          to label %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i unwind label %bb.dp, !noalias !43607

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.17.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.val97.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !43606
  br label %bb.ea

bb.do:                                            ; preds = %bb.dl
  %.phi.trans.insert537.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.val96.pre.i.i = load ptr, ptr %.phi.trans.insert537.i.i, align 8, !noalias !43606
  br label %bb.gq

bb.dp:                                            ; preds = %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i, %bb.dm
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !43606
  br label %bb.dr

_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.dm
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) @779, i64 noundef 9)
          to label %bb.dq unwind label %bb.dp, !noalias !43607

bb.dq:                                            ; preds = %_RNvXsb_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !43606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !43606
  %i.mr = invoke { ptr, ptr } @_RNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_11ObjectStore4list(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.mi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.dv unwind label %bb.ds, !noalias !43607 ; 2 uses

bb.dr:                                            ; preds = %bb.ds, %bb.dp
  %.pn.i.i = phi { ptr, i32 } [ %i.ms, %bb.ds ], [ %i.mq, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !43606
  br label %bb.dw

bb.ds:                                            ; preds = %bb.dq
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dt:                                            ; preds = %bb.id, %bb.fb, %bb.du
  %i.mt = phi ptr [ %i.my, %bb.du ], [ %i.rb, %bb.id ], [ %i.rb, %bb.fb ]
  %i.mu = phi ptr [ %i.mz, %bb.du ], [ %i.rc, %bb.id ], [ %i.rc, %bb.fb ]
  %i.mv = phi ptr [ %i.na, %bb.du ], [ %i.rd, %bb.id ], [ %i.rd, %bb.fb ]
  %i.mw = phi ptr [ %i.nb, %bb.du ], [ %i.re, %bb.id ], [ %i.re, %bb.fb ]
  %.pn65.i.i = phi { ptr, i32 } [ %i.nc, %bb.du ], [ %.pn62.pn.i.i, %bb.id ], [ %.pn62.pn.i.i, %bb.fb ]
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i8 0, ptr %i.mx, align 8, !noalias !43606
  br label %bb.dw

bb.du:                                            ; preds = %bb.hz, %bb.hw
  %i.my = phi ptr [ %i.qs, %bb.hz ], [ %i.yq, %bb.hw ]
  %i.mz = phi ptr [ %i.qt, %bb.hz ], [ %i.yr, %bb.hw ]
  %i.na = phi ptr [ %i.qu, %bb.hz ], [ %i.ys, %bb.hw ]
  %i.nb = phi ptr [ %i.qv, %bb.hz ], [ %i.yt, %bb.hw ]
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dv:                                            ; preds = %bb.dq
  %i.nd = extractvalue { ptr, ptr } %i.mr, 0
  %i.ne = extractvalue { ptr, ptr } %i.mr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !43606
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr %i.nd, ptr %i.ng, align 8, !alias.scope !43608, !noalias !43606
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 608
  store ptr %i.ne, ptr %i.nh, align 8, !alias.scope !43608, !noalias !43606
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 -4, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !43608, !noalias !43606
  store i8 1, ptr %i.ml, align 8, !noalias !43606
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.17.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 640
  store ptr %i.nf, ptr %i.ni, align 8, !noalias !43606
  br label %bb.ea

bb.dw:                                            ; preds = %bb.dt, %bb.dr
  %i.nj = phi ptr [ %i.mt, %bb.dt ], [ %i.mf, %bb.dr ]
  %i.nk = phi ptr [ %i.mu, %bb.dt ], [ %i.mg, %bb.dr ]
  %i.nl = phi ptr [ %i.mv, %bb.dt ], [ %i.mj, %bb.dr ]
  %i.nm = phi ptr [ %i.mw, %bb.dt ], [ %i.mk, %bb.dr ]
  %.pn65.pn.i.i = phi { ptr, i32 } [ %.pn65.i.i, %bb.dt ], [ %.pn.i.i, %bb.dr ]
  store i8 2, ptr %i.nl, align 1, !noalias !43606
  br label %.body.i

bb.dx:                                            ; preds = %bb.dl
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @780) #80
          to label %.noexc32.i unwind label %bb.dk, !noalias !43603

.noexc32.i:                                       ; preds = %bb.dx
  unreachable

bb.dy:                                            ; preds = %bb.dl
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @780) #80
          to label %.noexc33.i unwind label %bb.dk, !noalias !43603

.noexc33.i:                                       ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.ea
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  br label %bb.fb

bb.ea:                                            ; preds = %bb.dv, %bb.dn
  %i.no = phi ptr [ %i.kf, %bb.dn ], [ %i.mf, %bb.dv ] ; 9 uses
  %i.np = phi ptr [ %i.ke, %bb.dn ], [ %i.mg, %bb.dv ] ; 8 uses
  %i.nq = phi ptr [ %.phi.trans.insert.i, %bb.dn ], [ %i.mj, %bb.dv ] ; 9 uses
  %i.nr = phi ptr [ %i.me, %bb.dn ], [ %i.mk, %bb.dv ] ; 10 uses
  %.val97.i.i = phi ptr [ %.val97.pre.i.i, %bb.dn ], [ %i.nf, %bb.dv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !43606
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 5 uses
  invoke fastcc void @_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream14try_filter_mapINtB5_12TryFilterMapINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1B_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB1B_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyIB3t_INtNtB1B_6option6OptionTNtNtNtCs9KQ7US1M400_11lance_table2io6commit20ManifestNamingSchemeB3P_EEB4v_EENCNCNvB6z_28resolve_version_from_listing00EB2C_9poll_nextB6D_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(104) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(120) %.val97.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtNtB9_10try_stream14try_filter_map12TryFilterMapINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB22_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB22_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyIB3U_INtNtB22_6option6OptionTNtNtNtCs9KQ7US1M400_11lance_table2io6commit20ManifestNamingSchemeB4g_EEB4W_EENCNCNvB70_28resolve_version_from_listing00EENtNtNtB22_6future6future6Future4pollB74_.exit.i.i unwind label %bb.dz, !noalias !43607

_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtNtB9_10try_stream14try_filter_map12TryFilterMapINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB22_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB22_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyIB3U_INtNtB22_6option6OptionTNtNtNtCs9KQ7US1M400_11lance_table2io6commit20ManifestNamingSchemeB4g_EEB4W_EENCNCNvB70_28resolve_version_from_listing00EENtNtNtB22_6future6future6Future4pollB74_.exit.i.i: ; preds = %bb.ea
  %i.nt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !range !203, !noalias !43606, !noundef !97 ; 3 uses
  %i.nv = icmp eq i64 %i.nu, -3
  br i1 %i.nv, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtNtB9_10try_stream14try_filter_map12TryFilterMapINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB22_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB22_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyIB3U_INtNtB22_6option6OptionTNtNtNtCs9KQ7US1M400_11lance_table2io6commit20ManifestNamingSchemeB4g_EEB4W_EENCNCNvB70_28resolve_version_from_listing00EENtNtNtB22_6future6future6Future4pollB74_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  br label %bb.ie

bb.ec:                                            ; preds = %_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream4nextINtB5_4NextINtNtNtB9_10try_stream14try_filter_map12TryFilterMapINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB22_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB22_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyIB3U_INtNtB22_6option6OptionTNtNtNtCs9KQ7US1M400_11lance_table2io6commit20ManifestNamingSchemeB4g_EEB4W_EENCNCNvB70_28resolve_version_from_listing00EENtNtNtB22_6future6future6Future4pollB74_.exit.i.i
  %.sroa.0194.0.copyload.i.i = load i64, ptr %i.t, align 8, !noalias !43606
  %.sroa.4.0..sroa_idx195.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx195.i.i, align 8, !noalias !43606 ; 3 uses
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx195.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx195.sroa_idx.i.i, align 8, !noalias !43606 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx195.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.4.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx195.sroa_idx.i.i, align 8, !noalias !43606 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx195.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.nw = load <2 x i64>, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx195.sroa_idx.i.i, align 8, !noalias !43606 ; 2 uses
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx195.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx195.sroa_idx.i.i, i64 16, i1 false), !noalias !43606
  %.sroa.6196.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6196.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6196.0..sroa_idx.i.i, i64 32, i1 false), !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !43606
  switch i64 %i.nu, label %bb.ed [
    i64 -2, label %bb.ee
    i64 -1, label %bb.fa
  ]

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.17.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.11.i.i, i64 16, i1 false), !alias.scope !43609, !noalias !43606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6196.i.i, i64 32, i1 false), !alias.scope !43609, !noalias !43606
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.11.sroa.0.1.ph.i.i = phi i64 [ undef, %bb.ec ], [ %.sroa.4.sroa.0.0.copyload.i.i, %bb.ed ]
  %.sroa.11.sroa.9.1.ph.i.i = phi i64 [ undef, %bb.ec ], [ %.sroa.4.sroa.3.0.copyload.i.i, %bb.ed ]
  %.sroa.11.sroa.11.1.ph.i.i = phi ptr [ undef, %bb.ec ], [ %.sroa.4.sroa.5.0.copyload.i.i, %bb.ed ]
  %.sroa.7.0.ph.i.i = phi i64 [ -1, %bb.ec ], [ %i.nu, %bb.ed ]
  %.sroa.0192.1.ph.i.i = phi i64 [ undef, %bb.ec ], [ %.sroa.0194.0.copyload.i.i, %bb.ed ]
  %i.nx = phi <2 x i64> [ undef, %bb.ec ], [ %i.nw, %bb.ed ]
  %.sroa.5199.sroa.8.0..sroa.5199.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5199.sroa.8.0..sroa.5199.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.sroa.17.i.i, i64 16, i1 false), !noalias !43606
  %.sroa.6200.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6200.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.i.i, i64 32, i1 false), !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.17.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 634
  store i64 %.sroa.0192.1.ph.i.i, ptr %i.s, align 8, !noalias !43606
  %.sroa.4198.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store i64 %.sroa.7.0.ph.i.i, ptr %.sroa.4198.0..sroa_idx.i.i, align 8, !noalias !43606
  %.sroa.5199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.11.sroa.0.1.ph.i.i, ptr %.sroa.5199.0..sroa_idx.i.i, align 8, !noalias !43606
  %.sroa.5199.sroa.4.0..sroa.5199.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.11.sroa.9.1.ph.i.i, ptr %.sroa.5199.sroa.4.0..sroa.5199.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !43606
  %.sroa.5199.sroa.5.0..sroa.5199.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %.sroa.11.sroa.11.1.ph.i.i, ptr %.sroa.5199.sroa.5.0..sroa.5199.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !43606
  %.sroa.5199.sroa.6.0..sroa.5199.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal39update_mem_wal_index_compacted_sstables:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs_NtCs8d5NHFTTVL0_4uuid3fmtNtB6_4UuidNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.cp, ptr %i.ef, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.dv, ptr %i.eg, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.483.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @1236, ptr noundef nonnull %i.g)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit130: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !62536)
  %.sroa.06.0.copyload.i131 = load i64, ptr %i.h, align 8, !alias.scope !62537 ; 3 uses
  %.sroa.4.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload.i133 = load ptr, ptr %.sroa.4.0..sroa_idx.i132, align 8, !alias.scope !62537 ; 3 uses
  %.sroa.57.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.57.0.copyload.i135 = load i64, ptr %.sroa.57.0..sroa_idx.i134, align 8, !alias.scope !62537
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !62538
  %i.eh = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !62538 ; 5 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.al, label %bb.ao, !prof !104

bb.al:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit130
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #80
          to label %.noexc.i139 unwind label %bb.am, !noalias !62539

.noexc.i139:                                      ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = icmp eq i64 %.sroa.06.0.copyload.i131, 0
  br i1 %i.ek, label %.body140, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i133) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i133, i64 noundef %.sroa.06.0.copyload.i131, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62540
  br label %.body140

bb.ao:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9KQ7US1M400_11lance_table.exit130
  store i64 %.sroa.06.0.copyload.i131, ptr %i.eh, align 8, !noalias !62539
  %.sroa.5.0..sroa_idx2.i136 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %.sroa.4.0.copyload.i133, ptr %.sroa.5.0..sroa_idx2.i136, align 8, !noalias !62539
  %.sroa.6.0..sroa_idx4.i137 = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %.sroa.57.0.copyload.i135, ptr %.sroa.6.0..sroa_idx4.i137, align 8, !noalias !62539
  store i8 0, ptr %0, align 8
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eh, ptr %.sroa.4162.0..sroa_idx, align 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @26, ptr %.sroa.5163.0..sroa_idx, align 8
  %.sroa.6164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1237, ptr %.sroa.6164.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.el = icmp eq i64 %i.cm, 0
  br i1 %i.el, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1v_.exit143, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = mul nuw i64 %i.cm, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !62541
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1v_.exit143

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1v_.exit143: ; preds = %bb.ap, %bb.ao
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal18MemWalIndexDetailsEBH_(ptr noalias noundef align 8 dereferenceable(184) %i.e)
  br label %bb.n

bb.aq:                                            ; preds = %.body140, %bb.x
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal18MemWalIndexDetailsEBH_(ptr noalias noundef align 8 dereferenceable(184) %i.e) #81
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtCs8d5NHFTTVL0_4uuid4UuidEECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.o, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %.sroa.048.4, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit144: ; preds = %.body, %bb.as, %bb.ar
  %.pn97181 = phi { ptr, i32 } [ %.pn95, %.body ], [ %.pn97182, %bb.ar ], [ %.pn97182, %bb.as ]
  resume { ptr, i32 } %.pn97181

bb.ar:                                            ; preds = %.body.thread, %.thread
  %.pn97182 = phi { ptr, i32 } [ %i.ag, %.thread ], [ %.pn95.ph, %.body.thread ] ; 2 uses
  %.val = load i64, ptr %4, align 8               ; 2 uses
  %i.en = icmp eq i64 %.val, 0
  br i1 %i.en, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit144, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val99 = load ptr, ptr %i.eo, align 8, !nonnull !97, !noundef !97
  %i.ep = mul nuw i64 %.val, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val99, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table12system_index7mem_wal16CompactedSsTableEEB1e_.exit144
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit14list_manifests(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !62552 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @779, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val = load ptr, ptr %i.e, align 8
  %i.f = invoke fastcc { ptr, ptr } @_RINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_NtB6_14ObjectStoreExt12read_dir_allRNtNtBM_4path4PathECs9KQ7US1M400_11lance_table(ptr noundef nonnull %1, ptr %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %i.a)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.p, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !62553)
  call void @llvm.experimental.noalias.scope.decl(metadata !62554)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !62555 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %.body
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !62555, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62555
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.f, 0
  %i.k = extractvalue { ptr, ptr } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.k, ptr %i.m, align 8
  store i64 -3, ptr %i.d, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !62556
  %i.n = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !62556 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.h, !prof !104

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #80
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream10filter_map9FilterMapINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEINtNtNtBK_6future5ready5ReadyINtNtB4_6option6OptionIB3t_NtNtNtCs9KQ7US1M400_11lance_table2io6commit16ManifestLocationB4u_EEENCNvB6v_14list_manifests0EEB6z_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d) #81
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !62557)
  call void @llvm.experimental.noalias.scope.decl(metadata !62558)
  %.val.i.i3 = load i64, ptr %i.c, align 8, !alias.scope !62559 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i3, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit5, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i4 = load ptr, ptr %i.s, align 8, !alias.scope !62559, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i4, i64 noundef %.val.i.i3, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62559
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit5

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit5: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = insertvalue { ptr, ptr } poison, ptr %i.n, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr @1238, 1
  ret { ptr, ptr } %i.u

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.c, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit17uses_version_hint(ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !62560 {
bb.a:
  %i.a = load atomic i32, ptr @_RNvNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled7ENABLED acquire, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled.exit.a, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled0E0zEB1A_()
  br label %_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled.exit.a

_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled.exit.a: ; preds = %bb.a, %bb.b
  %1 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs9KQ7US1M400_11lance_table2io6commit29version_hint_globally_enabled7ENABLED, i64 4), align 4, !range !106, !noundef !97
  %2 = trunc nuw i8 %1 to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.d = load i8, ptr %i.c, align 1, !range !106
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %.sroa.0.0 = select i1 %2, i1 %i.f, i1 false
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit17version_hint_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 !guid !62561 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @779, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1239, i64 noundef 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table2io6commit22current_manifest_local(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !62677 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [176 x i8], align 8               ; 9 uses
  %i.e = alloca [176 x i8], align 8               ; 9 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 18 uses
  %.sroa.033 = alloca [40 x i8], align 8          ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 16 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 12 uses
  %i.q = alloca [56 x i8], align 8                ; 16 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @779, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvNtCsjjbR6Jfsbqw_8lance_io5local13to_local_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62678)
  call void @llvm.experimental.noalias.scope.decl(metadata !62679)
  %.val.i.i = load i64, ptr %i.s, align 8, !alias.scope !62680 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i = load ptr, ptr %i.w, align 8, !alias.scope !62680, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62680
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !62681)
  call void @llvm.experimental.noalias.scope.decl(metadata !62682)
  %.val.i.i144 = load i64, ptr %i.s, align 8, !alias.scope !62683 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i144, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit146, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i145 = load ptr, ptr %i.y, align 8, !alias.scope !62683, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i145, i64 noundef %.val.i.i144, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62683
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit146

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit146: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.0250.0.copyload = load i64, ptr %i.t, align 8 ; 4 uses
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5251.0.copyload = load ptr, ptr %.sroa.5251.0..sroa_idx, align 8, !nonnull !97, !noundef !97 ; 3 uses
  %.sroa.6252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6252.0.copyload = load i64, ptr %.sroa.6252.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62684
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std3sys2fs8read_dir(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5251.0.copyload, i64 noundef %.sroa.6252.0.copyload)
          to label %bb.h unwind label %bb.f, !noalias !62684

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit146
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0250.0.copyload, 0
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5251.0.copyload, i64 noundef %.sroa.0250.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62685
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit146
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !range !111, !noalias !62684, !noundef !97 ; 2 uses
  %.sink5.i = load ptr, ptr %i.a, align 8, !noalias !62684, !nonnull !97, !noundef !97 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62684
  %i.ad = icmp eq i64 %.sroa.0250.0.copyload, 0
  br i1 %i.ad, label %_RINvNtCsgczF5crJ4sT_3std2fs8read_dirNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5251.0.copyload, i64 noundef %.sroa.0250.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !62686
  br label %_RINvNtCsgczF5crJ4sT_3std2fs8read_dirNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

_RINvNtCsgczF5crJ4sT_3std2fs8read_dirNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.i, %bb.h
  %i.ae = icmp eq i8 %i.ac, 2
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvNtCsgczF5crJ4sT_3std2fs8read_dirNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink5.i, ptr %i.af, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.aj

bb.k:                                             ; preds = %_RINvNtCsgczF5crJ4sT_3std2fs8read_dirNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 8 uses
  store i8 2, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %.sink5.i, ptr %i.p, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %i.ac, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %bb.k
  %.sroa.05.0 = phi i8 [ 2, %bb.k ], [ %.sroa.05.0.be, %.backedge ] ; 7 uses
  invoke void @_RNvXsz_NtCsgczF5crJ4sT_3std2fsNtB5_7ReadDirNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.o unwind label %bb.n

.body185:                                         ; preds = %bb.bw, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i230, %bb.bs, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i214, %bb.bd, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i183, %bb.n, %bb.bx, %bb.am
  %.pn119 = phi { ptr, i32 } [ %.pn115, %bb.am ], [ %.pn117259, %bb.bx ], [ %i.ei, %bb.bs ], [ %i.dj, %bb.bd ], [ %i.at, %bb.n ], [ %i.dj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i183 ], [ %i.ei, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i214 ], [ %i.eq, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i230 ], [ %i.eq, %bb.bw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62687)
  call void @llvm.experimental.noalias.scope.decl(metadata !62688)
  call void @llvm.experimental.noalias.scope.decl(metadata !62689)
  call void @llvm.experimental.noalias.scope.decl(metadata !62690)
  %i.aq = load ptr, ptr %i.p, align 8, !alias.scope !62691, !nonnull !97, !noundef !97
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !62691
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs7ReadDirECs9KQ7US1M400_11lance_table.exit

bb.m:                                             ; preds = %.body185
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs7ReadDirECs9KQ7US1M400_11lance_table.exit unwind label %bb.ai

bb.n:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body185

bb.o:                                             ; preds = %bb.l
  %i.au = load i64, ptr %i.o, align 8, !range !105, !noundef !97
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.07.0.copyload = load ptr, ptr %i.ai, align 8 ; 2 uses
  %.sroa.79.0.copyload = load ptr, ptr %.sroa.79.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.aw = icmp eq ptr %.sroa.07.0.copyload, null
  br i1 %i.aw, label %bb.ak, label %bb.al

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !62692)
  call void @llvm.experimental.noalias.scope.decl(metadata !62693)
  call void @llvm.experimental.noalias.scope.decl(metadata !62694)
  call void @llvm.experimental.noalias.scope.decl(metadata !62695)
  %i.ax = load ptr, ptr %i.p, align 8, !alias.scope !62696, !nonnull !97, !noundef !97
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !62696
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs7ReadDirECs9KQ7US1M400_11lance_table.exit149

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs7ReadDirECs9KQ7US1M400_11lance_table.exit149 unwind label %bb.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std2fs7ReadDirECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.s, %.body185, %bb.m
  %.pn121 = phi { ptr, i32 } [ %.pn119, %bb.m ], [ %.pn119, %.body185 ], [ %i.bb, %bb.s ] ; 2 uses
  %i.ba = load i8, ptr %i.ag, align 8, !range !111, !noundef !97
end_hunk_3
