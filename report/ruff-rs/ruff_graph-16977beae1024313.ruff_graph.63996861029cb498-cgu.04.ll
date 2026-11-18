Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_graph-16977beae1024313.ruff_graph.63996861029cb498-cgu.04?download=true
inline.NumInlined: 165
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyNtBQ_10SystemPathECs8yaccCKGz54_10ruff_graph:bb.a
bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEE4findNCINvNtB8_3map14equivalent_keyNtBS_10SystemPathBQ_uE0ECs8yaccCKGz54_10ruff_graph.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB6_11ZipFileData21write_data_descriptorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs8yaccCKGz54_10ruff_graph(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !31 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [20 x i8], align 4                ; 6 uses
  %i.e = alloca [20 x i8], align 4                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 223
  %i.g = load i8, ptr %i.f, align 1, !range !7, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  %i.k = icmp ugt i64 %i.j, 4294967295
  br i1 %i.k, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.m = load i32, ptr %i.l, align 4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.m, ptr %i.e, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.p = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.p, ptr %i.o, align 4
  call void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec24Zip64DataDescriptorBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(20) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = icmp ugt i64 %i.r, 4294967295
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.u = load i32, ptr %i.t, align 4, !noundef !4
  %i.v = trunc nuw i64 %i.j to i32
  %i.w = trunc nuw i64 %i.r to i32
  store i32 %i.u, ptr %i.c, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.v, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.w, ptr %i.y, align 4
  call void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec22ZipDataDescriptorBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(12) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs8yaccCKGz54_10ruff_graph.exit, %bb.e, %bb.c
  ret void

bb.g:                                             ; preds = %bb.d, %bb.b
  br i1 %3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 69, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.z = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !9, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !6

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.af = load i32, ptr %i.ae, align 4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  store i32 %i.af, ptr %i.d, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i64 %i.j, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i64 %i.ah, ptr %i.aj, align 4
  call void @_RINvYNtNtCsb9zoKkpXuBA_3zip4spec24Zip64DataDescriptorBlockNtB5_14FixedSizeBlock5writeINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(20) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %i.ad, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ak) #16
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = icmp samesign ugt i64 %i.ac, 68
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(69) %i.al, ptr noundef nonnull align 1 dereferenceable(69) @0, i64 69, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ac, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.al, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 69, ptr %.sroa.55.0..sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !32
  %i.an = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #17, !noalias !32 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs8yaccCKGz54_10ruff_graph.exit, !prof !6

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #16
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1Q_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #18
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ap

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBu_DNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB17_6marker4SendNtB1E_4SyncEL_EINtNtB17_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs8yaccCKGz54_10ruff_graph.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ar = tail call noundef nonnull ptr @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4__new(i8 noundef 40, ptr noundef nonnull %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB6_11ZipFileData22initialize_local_blockReuECs8yaccCKGz54_10ruff_graph(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4, i64 noundef range(i64 0, 2) %5, i64 %6, i64 noundef %7, i16 noundef range(i16 0, 4) %8, i16 %9, i64 %10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %11, i64 noundef range(i64 0, -9223372036854775808) %12) unnamed_addr #0 personality ptr @rust_eh_personality !guid !64 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [232 x i8], align 16              ; 39 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i32, ptr %i.g, align 8, !range !10, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = trunc nuw i32 %i.h to i1                 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4              ; 2 uses
  %.sroa.03.0 = select i1 %i.j, i32 %i.k, i32 33188 ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val43 = load i64, ptr %i.l, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val43, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !65
  %i.m = load i64, ptr %i.a, align 8, !range !8, !noalias !65, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !9, !noalias !65, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !noalias !65
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #16, !noalias !65
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i: ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !noalias !65, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp samesign ule i64 %.val43, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  %.not.i.i.i = icmp eq i64 %.val43, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs8yaccCKGz54_10ruff_graph.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val43, i1 false), !noalias !66
  br label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs8yaccCKGz54_10ruff_graph.exit

_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs8yaccCKGz54_10ruff_graph.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yaccCKGz54_10ruff_graph.exit.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.p, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.val43, ptr %.sroa.5.0..sroa_idx, align 8
  %i.u = call { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 15 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.x = icmp eq i64 %i.w, 0                      ; 3 uses
  br i1 %i.x, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs8yaccCKGz54_10ruff_graph.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !67
  %i.y = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 1) #17, !noalias !67 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56.sink.split

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.w) #16
          to label %bb.al unwind label %bb.e

bb.g:                                             ; preds = %bb.d, %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs8yaccCKGz54_10ruff_graph.exit
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs8yaccCKGz54_10ruff_graph.exit ], [ %i.y, %bb.d ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i, ptr nonnull readonly align 1 %i.v, i64 range(i64 0, -9223372036854775808) %i.w, i1 false)
  %i.ab = shl i32 %.sroa.03.0, 16                 ; 6 uses
  %i.ac = and i32 %.sroa.03.0, 40960
  %i.ad = icmp eq i32 %i.ac, 40960
  br i1 %i.ad, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 51
  %i.af = load i8, ptr %i.ae, align 1, !range !68, !noundef !4 ; 2 uses
  switch i8 %i.af, label %bb.j [
    i8 -2, label %bb.i
    i8 0, label %bb.v
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.z, %bb.y, %bb.h, %bb.g, %bb.i
  %.sroa.010.0 = phi i8 [ 3, %bb.i ], [ 0, %bb.z ], [ 3, %bb.g ], [ %i.af, %bb.h ], [ 0, %bb.y ]
  %.sroa.07.0 = phi i32 [ %i.ab, %bb.i ], [ %spec.select, %bb.z ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %.sroa.07.1, %bb.y ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !range !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ai = icmp samesign ult i64 %i.w, 64
  br i1 %i.ai, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i64 %i.w, 9223372036854775744
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aj ; 3 uses
  %i.al = and i64 %i.w, 63                        ; 2 uses
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ak
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.k
  %.sroa.01.028.i.i = phi ptr [ %i.am, %bb.l ], [ %i.v, %bb.k ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !69, !noalias !70
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.ao, align 1, !alias.scope !69, !noalias !71
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.ap, align 1, !alias.scope !69, !noalias !72
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.aq, align 1, !alias.scope !69, !noalias !73
  %i.ar = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.as = or <2 x i64> %i.ar, %.sroa.0.0.copyload.i10.i.i
  %i.at = or <2 x i64> %i.as, %.sroa.0.0.copyload.i11.i.i
  %i.au = bitcast <2 x i64> %i.at to <16 x i8>
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

._crit_edge.i.i:                                  ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.az = icmp samesign eq i64 %i.al, 0
  br i1 %i.az, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ay
  br i1 %i.bb, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.m
  %i.bc = phi ptr [ %i.ba, %bb.m ], [ %i.ak, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.bc, align 1, !alias.scope !69, !noalias !74, !noundef !4
  %i.bd = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.bd, label %bb.m, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

bb.n:                                             ; preds = %bb.j
  %i.be = and i64 %i.w, 56                        ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.be ; 7 uses
  %i.bg = and i64 %i.w, 7                         ; 7 uses
  %.not.i117 = icmp eq i64 %i.be, 0
  br i1 %.not.i117, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i

13:                                               ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i
  %.not.i = icmp eq i64 %i.be, 8
  br i1 %.not.i, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.1

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.1: ; preds = %13
  %14 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.012.0.copyload.i.1 = load i64, ptr %14, align 1, !alias.scope !75
  %15 = and i64 %.sroa.012.0.copyload.i.1, -9187201950435737472
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

17:                                               ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.1
  %.not.i.1 = icmp eq i64 %i.be, 16
  br i1 %.not.i.1, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.2

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.2: ; preds = %17
  %18 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.012.0.copyload.i.2 = load i64, ptr %18, align 1, !alias.scope !75
  %19 = and i64 %.sroa.012.0.copyload.i.2, -9187201950435737472
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

21:                                               ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.2
  %.not.i.2 = icmp eq i64 %i.be, 24
  br i1 %.not.i.2, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.3

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.3: ; preds = %21
  %22 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.012.0.copyload.i.3 = load i64, ptr %22, align 1, !alias.scope !75
  %23 = and i64 %.sroa.012.0.copyload.i.3, -9187201950435737472
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

25:                                               ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.3
  %.not.i.3 = icmp eq i64 %i.be, 32
  br i1 %.not.i.3, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.4

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.4: ; preds = %25
  %26 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.012.0.copyload.i.4 = load i64, ptr %26, align 1, !alias.scope !75
  %27 = and i64 %.sroa.012.0.copyload.i.4, -9187201950435737472
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

29:                                               ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.4
  %.not.i.4 = icmp eq i64 %i.be, 40
  br i1 %.not.i.4, label %._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.5

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.5: ; preds = %29
  %30 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.012.0.copyload.i.5 = load i64, ptr %30, align 1, !alias.scope !75
  %31 = and i64 %.sroa.012.0.copyload.i.5, -9187201950435737472
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

33:                                               ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.5
  %.not.i.5 = icmp eq i64 %i.be, 48
  br i1 %.not.i.5, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.012.0.copyload.i.6 = load i64, ptr %i.bh, align 1, !alias.scope !75
  %34 = and i64 %.sroa.012.0.copyload.i.6, -9187201950435737472
  %.not.i.a = icmp eq i64 %34, 0
  br i1 %.not.i.a, label %._crit_edge, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

._crit_edge:                                      ; preds = %13, %17, %21, %25, %29, %33, %bb.o, %bb.n
  %i.bi = icmp samesign eq i64 %i.bg, 0
  br i1 %i.bi, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph121

bb.p:                                             ; preds = %.lr.ph121
  %i.bj = icmp samesign eq i64 %i.bg, 1
  br i1 %i.bj, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph121.1

.lr.ph121.1:                                      ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %.val.i.i.1 = load i8, ptr %i.bk, align 1, !alias.scope !75, !noalias !76, !noundef !4
  %i.bl = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.bl, label %bb.q, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

bb.q:                                             ; preds = %.lr.ph121.1
  %i.bm = icmp samesign eq i64 %i.bg, 2
  br i1 %i.bm, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph121.2

.lr.ph121.2:                                      ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %.val.i.i.2 = load i8, ptr %i.bn, align 1, !alias.scope !75, !noalias !76, !noundef !4
  %i.bo = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.bo, label %bb.r, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

bb.r:                                             ; preds = %.lr.ph121.2
  %i.bp = icmp samesign eq i64 %i.bg, 3
  br i1 %i.bp, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph121.3

.lr.ph121.3:                                      ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %.val.i.i.3 = load i8, ptr %i.bq, align 1, !alias.scope !75, !noalias !76, !noundef !4
  %i.br = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.br, label %bb.s, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

bb.s:                                             ; preds = %.lr.ph121.3
  %i.bs = icmp samesign eq i64 %i.bg, 4
  br i1 %i.bs, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph121.4

.lr.ph121.4:                                      ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.val.i.i.4 = load i8, ptr %i.bt, align 1, !alias.scope !75, !noalias !76, !noundef !4
  %i.bu = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.bu, label %bb.t, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

bb.t:                                             ; preds = %.lr.ph121.4
  %i.bv = icmp samesign eq i64 %i.bg, 5
  br i1 %i.bv, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph121.5

.lr.ph121.5:                                      ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  %.val.i.i.5 = load i8, ptr %i.bw, align 1, !alias.scope !75, !noalias !76, !noundef !4
  %i.bx = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.bx, label %bb.u, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

bb.u:                                             ; preds = %.lr.ph121.5
  %i.by = icmp samesign eq i64 %i.bg, 6
  br i1 %i.by, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph121.6

.lr.ph121.6:                                      ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %.val.i.i.6 = load i8, ptr %i.bz, align 1, !alias.scope !75, !noalias !76, !noundef !4
  %i.ca = icmp sgt i8 %.val.i.i.6, -1
  %spec.select129 = select i1 %i.ca, i8 0, i8 1
  br label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

.lr.ph121:                                        ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.bf, align 1, !alias.scope !75, !noalias !76, !noundef !4
  %i.cb = icmp sgt i8 %.val.i.i, -1
  br i1 %i.cb, label %bb.p, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i: ; preds = %bb.n
  %.sroa.012.0.copyload.i = load i64, ptr %i.v, align 1, !alias.scope !75
  %i.cc = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %13, label %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit

bb.v:                                             ; preds = %bb.h
  br i1 %i.x, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr i8, ptr %i.v, i64 %i.w
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !4
  switch i8 %i.cg, label %bb.y [
    i8 47, label %bb.x
    i8 92, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.ch = or disjoint i32 %i.ab, 16
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.x
  %.sroa.07.1 = phi i32 [ %i.ab, %bb.w ], [ %i.ch, %bb.x ], [ %i.ab, %bb.v ] ; 2 uses
  br i1 %i.j, label %bb.z, label %bb.j

bb.z:                                             ; preds = %bb.y
  %i.ci = and i32 %i.k, 292
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %spec.select = or i32 %.sroa.07.1, %i.ck
  br label %bb.j

_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %.lr.ph121.6, %.lr.ph.i.i, %bb.m, %.lr.ph, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.2, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.3, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.4, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.5, %bb.o, %bb.p, %.lr.ph121, %.lr.ph121.1, %bb.q, %.lr.ph121.2, %bb.r, %.lr.ph121.3, %bb.s, %.lr.ph121.4, %bb.t, %.lr.ph121.5, %bb.u, %._crit_edge.i.i, %._crit_edge
  %35 = phi i8 [ 1, %.lr.ph ], [ 0, %._crit_edge.i.i ], [ 1, %.lr.ph.i.i ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i ], [ 0, %._crit_edge ], [ 0, %bb.p ], [ 1, %.lr.ph121 ], [ 1, %.lr.ph121.1 ], [ 0, %bb.q ], [ 1, %.lr.ph121.2 ], [ 0, %bb.r ], [ 1, %.lr.ph121.3 ], [ 0, %bb.s ], [ 1, %.lr.ph121.4 ], [ 0, %bb.t ], [ 1, %.lr.ph121.5 ], [ 0, %bb.u ], [ %spec.select129, %.lr.ph121.6 ], [ 1, %bb.o ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.5 ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.4 ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.3 ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.2 ], [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yaccCKGz54_10ruff_graph.exit.i.1 ], [ 0, %bb.m ]
  %i.cl = load <2 x i64>, ptr %2, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cn = load <2 x i16>, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = load i32, ptr %i.co, align 8, !noundef !4
  %i.cq = load <2 x i64>, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cr = invoke { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull readonly captures(address, read_provenance) %11, i64 noundef %12)
          to label %bb.ad unwind label %bb.aa     ; 2 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit: ; preds = %bb.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit54, %bb.ac, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.aa ], [ %i.ct, %bb.ac ], [ %i.ct, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit54 ], [ %i.ct, %bb.ab ] ; 2 uses
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56, label %bb.am

bb.aa:                                            ; preds = %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit54: ; preds = %bb.ad, %bb.af, %bb.ag
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cu = icmp eq ptr %i.cx, null
  br i1 %i.cu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit54
  %i.cv = atomicrmw add ptr %i.cx, i64 -1 release, align 8, !noalias !77
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit unwind label %bb.ak

bb.ad:                                            ; preds = %_RNvNvNtNtCs4NRVxsYgnAr_4core5slice5ascii8is_ascii7runtime.exit
  %i.cx = extractvalue { ptr, i64 } %i.cr, 0      ; 4 uses
  %i.cy = extractvalue { ptr, i64 } %i.cr, 1      ; 2 uses
  store ptr %i.cx, ptr %i.e, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.cy, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit54

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !range !9, !noundef !4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ag, !prof !6

bb.af:                                            ; preds = %bb.ae
  %i.df = load i64, ptr %i.de, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dd, i64 %i.df) #16
          to label %bb.al unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit54

bb.ag:                                            ; preds = %bb.ae
  %i.dg = load ptr, ptr %i.de, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.dd, ptr %i.c, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.di, align 8
  %i.dj = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ah unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit54 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0      ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.dn = load i8, ptr %i.dm, align 2, !range !7, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  store i8 %.sroa.010.0, ptr %i.do, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 225 ; 2 uses
  store i8 45, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 218
  store i16 0, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 220
  %i.ds = trunc nuw nsw i32 %i.ah to i8
  store i8 %i.ds, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 221
  store i8 %35, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 222
  store i8 0, ptr %i.du, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store i16 %8, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 202
  store i16 %9, ptr %i.dw, align 2
  store <2 x i64> %i.cl, ptr %i.f, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  store i16 1, ptr %i.dx, align 4
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 214
  store <2 x i16> %i.cn, ptr %.sroa.415.0..sroa_idx, align 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  store i32 %i.cp, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store <2 x i64> %i.cq, ptr %i.dz, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.v, ptr %i.ea, align 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 %i.w, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %.sroa.01.0.i, ptr %i.ec, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 %i.w, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.cx, ptr %i.ee, align 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i64 %i.cy, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr null, ptr %i.eg, align 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.dk, ptr %i.eh, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 %i.dl, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i64 %4, ptr %i.ej, align 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %5, ptr %i.ek, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %6, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store i64 0, ptr %i.em, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store i32 3, ptr %.sroa.420.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i32 %.sroa.07.0, ptr %i.en, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 223
  store i8 %i.dn, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %10, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store i64 %7, ptr %i.eq, align 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %i.er, align 16
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 0, ptr %.sroa.524.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.es = invoke noundef i16 @_RNvMs2_NtCsb9zoKkpXuBA_3zip5typesNtB5_11ZipFileData14version_needed(ptr noundef nonnull align 8 %i.f)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb9zoKkpXuBA_3zip5types11ZipFileDataECs8yaccCKGz54_10ruff_graph(ptr noalias noundef align 8 dereferenceable(232) %i.f) #18
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56 unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.eu = trunc i16 %i.es to i8
  store i8 %i.eu, ptr %i.dp, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 16 dereferenceable(232) %i.f, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ak:                                            ; preds = %bb.ac, %bb.ai
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.al:                                            ; preds = %bb.af, %bb.f
  unreachable

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef range(i64 1, 0) %i.w, i64 noundef 1) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56.sink.split: ; preds = %bb.e, %bb.am
  %.pn4174.ph = phi { ptr, i32 } [ %.pn.pn, %bb.am ], [ %i.aa, %bb.e ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef range(i64 1, 0) %i.w, i64 noundef 1) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit, %bb.ai
  %.pn4174 = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcShEEECs8yaccCKGz54_10ruff_graph.exit ], [ %i.et, %bb.ai ], [ %.pn4174.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8yaccCKGz54_10ruff_graph.exit56.sink.split ]
  resume { ptr, i32 } %.pn4174
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsh_NtCsb9zoKkpXuBA_3zip5writeNtNtB8_5types11ZipFileData24update_local_file_headerINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEEECs8yaccCKGz54_10ruff_graph(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(232) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !80 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = add i64 %i.e, 14
  %i.g = tail call { i64, ptr } @_RNvXNtNtCs2AWtUsOyxgP_3std2io6cursorINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtB4_4Seek4seekCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.f) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.g, 1
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.422.0..sroa_idx, align 8
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = tail call noundef ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsb9zoKkpXuBA_3zip8unstable20LittleEndianWriteExt12write_u32_leCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.l) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 223
  %i.o = load i8, ptr %i.n, align 1, !range !7, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = icmp ugt i64 %i.r, 4294967295
  br i1 %i.s, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsb9zoKkpXuBA_3zip8unstable20LittleEndianWriteExt12write_u32_leCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef -1) ; 2 uses
  %.not46 = icmp eq ptr %i.t, null
  br i1 %.not46, label %bb.u, label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.u = trunc nuw i64 %i.r to i32
  %i.v = tail call noundef ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsb9zoKkpXuBA_3zip8unstable20LittleEndianWriteExt12write_u32_leCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.u) ; 2 uses
  %.not44 = icmp eq ptr %i.v, null
  br i1 %.not44, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.w = load i64, ptr %i.a, align 8, !range !8, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !9, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.x, label %bb.n, label %bb.o, !prof !6

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.439.0..sroa_idx, align 8
  br label %bb.z

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call noundef ptr @_RNvYINtNtNtCs4NRVxsYgnAr_4core2io6cursor6CursorINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsb9zoKkpXuBA_3zip8unstable20LittleEndianWriteExt12write_u32_leCs8yaccCKGz54_10ruff_graph(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.ad) ; 2 uses
  %.not45 = icmp eq ptr %i.ae, null
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %.sroa.442.0..sroa_idx, align 8
  br label %bb.z

bb.m:                                             ; preds = %bb.k, %bb.y
  store i64 -2, ptr %0, align 8
  br label %bb.z

bb.n:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.aa, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.af) #16
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.z, 39
  tail call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ag, ptr noundef nonnull align 1 dereferenceable(40) @3, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
