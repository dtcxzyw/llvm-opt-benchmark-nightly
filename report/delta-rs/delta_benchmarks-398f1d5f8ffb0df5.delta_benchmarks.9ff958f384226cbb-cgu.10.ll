Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-398f1d5f8ffb0df5.delta_benchmarks.9ff958f384226cbb-cgu.10?download=true
inline.NumInlined: 3170
inline.NumDeleted: 887
begin_hunk_0_@_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapReBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.av, align 8, !alias.scope !11490, !noalias !11491
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bd ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -32
  store ptr %1, ptr %i.bf, align 8, !noalias !11490
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.be, i64 -24
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !11490
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.be, i64 -16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !11490
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.be, i64 -8
  store i64 %4, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !11490
  br label %bb.i

bb.h:                                             ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1v_11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.bg = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !21, !noundef !21
  %i.bi = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !21
  store ptr %3, ptr %i.bg, align 8
  store i64 %4, ptr %i.bi, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.3.0 = phi i64 [ undef, %bb.g ], [ %i.bj, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.bh, %bb.h ]
  %i.bk = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bl = insertvalue { ptr, i64 } %i.bk, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bl
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigE8grow_oneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !25, !noundef !21 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11494)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11494
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !11494
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 176), !noalias !11494
  %i.f = load i64, ptr %i.a, align 8, !range !52, !noalias !11494, !noundef !21
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !30, !noalias !11494, !noundef !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !11494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11494
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !11494, !nonnull !21, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11494
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !11494
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !11494
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !80
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #35
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #35
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !80
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #35
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #35
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE11insert_fullCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !21 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11534, !noalias !11535, !noundef !21
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.l = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %i.g, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.ac ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !11536, !noalias !11537, !nonnull !21, !noundef !21 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7.i = load i64, ptr %i.m, align 8, !alias.scope !11536, !noalias !11537, !noundef !21 ; 4 uses
  %i.n = lshr i64 %1, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 3 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.pn.i.i = phi i64 [ %1, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %i.be, %bb.j ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %.sroa.4.125.i.i, %bb.j ]
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %.sroa.01.127.i.i, %bb.j ]
  %i.t = phi i64 [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %i.bd, %bb.j ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !11538 ; 3 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %i.q
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not37.i.i = icmp eq i16 %i.w, 0
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i
  %.sroa.05.038.i.i = phi i16 [ %i.at, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.038.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.0.021.i.i, %i.y
  %i.aa = and i64 %i.z, %.val7.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.val.i.i.i = load i64, ptr %i.ad, align 8, !noalias !11539, !noundef !21 ; 6 uses
  %i.ae = icmp ult i64 %.val.i.i.i, %i.g
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %.val.i.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11543)
  %i.ag = load i64, ptr %2, align 8, !range !37, !alias.scope !11544, !noalias !11545, !noundef !21
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 3
  %i.ah = load i64, ptr %i.af, align 8, !range !37, !alias.scope !11546, !noalias !11547, !noundef !21
  %i.ai = icmp eq i64 %i.ah, 3                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ai, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, label %.split.i.i.i.i.i.i, !prof !11548

bb.f:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.g, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, !prof !89

.split.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af) #42, !noalias !11549
  br i1 %i.aj, label %bb.g, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, !prof !89

bb.g:                                             ; preds = %.split.i.i.i.i.i.i, %bb.f
  %i.ak = load i64, ptr %i.r, align 8, !alias.scope !11544, !noalias !11545, !noundef !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !11546, !noalias !11547, !noundef !21
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, !prof !89

bb.h:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #43
          to label %.noexc13 unwind label %bb.ac

.noexc13:                                         ; preds = %bb.h
  unreachable

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !11546, !noalias !11547, !nonnull !21, !noundef !21
  %i.aq = load ptr, ptr %i.s, align 8, !alias.scope !11544, !noalias !11545, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.ap, i64 %i.ak), !noalias !11550
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.m, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, !prof !90

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.i, !prof !23

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.g, %.split.i.i.i.i.i.i, %bb.f, %bb.e
  %i.as = add i16 %.sroa.05.038.i.i, -1
  %i.at = and i16 %i.as, %.sroa.05.038.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.au = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i, label %bb.j, label %.thread29.i.i, !prof !23

.thread29.i.i:                                    ; preds = %bb.i
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.0.021.i.i, %i.ax
  %i.az = and i64 %i.ay, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread29.i.i, %._crit_edge.i.i
  %.sroa.4.126.i.i = phi i64 [ %i.az, %.thread29.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !23

bb.j:                                             ; preds = %.thread.i.i, %bb.i
  %.sroa.01.127.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.i ]
  %.sroa.4.125.i.i = phi i64 [ %.sroa.4.126.i.i, %.thread.i.i ], [ undef, %bb.i ]
  %i.bd = add i64 %i.t, 16                        ; 2 uses
  %i.be = add i64 %i.bd, %.sroa.0.021.i.i
  br label %bb.c

bb.k:                                             ; preds = %.thread.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !11551, !noundef !21 ; 2 uses
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.l, label %bb.r, !prof !23

bb.l:                                             ; preds = %bb.k
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !11551
  %i.bi = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.bj, 0
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bj, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bl
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !11552
  br label %bb.r

bb.m:                                             ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.bm = load i64, ptr %i.f, align 8, !noundef !21 ; 2 uses
  %i.bn = icmp ult i64 %.val.i.i.i, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.ab, %bb.n
  %.sroa.3.0 = phi i1 [ false, %bb.ab ], [ true, %bb.n ]
  %.sroa.0.0 = phi i64 [ %i.br, %bb.ab ], [ %.val.i.i.i, %bb.n ]
  %i.bo = insertvalue { i64, i1 } poison, i64 %.sroa.0.0, 0
  %i.bp = insertvalue { i64, i1 } %i.bo, i1 %.sroa.3.0, 1
  ret { i64, i1 } %i.bp

bb.r:                                             ; preds = %bb.l, %bb.k
  %i.bq = phi i8 [ %.pre, %bb.l ], [ %i.bg, %bb.k ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.4.126.i.i, %bb.k ] ; 3 uses
  %i.br = load i64, ptr %i.f, align 8, !noundef !21 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 82351536043346213
  tail call void @llvm.assume(i1 %i.bs)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11552)
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.bu = and i8 %i.bq, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bx = and i64 %i.bw, %.val7.i
  store i8 %i.o, ptr %i.bt, align 1, !noalias !11552
  %i.by = getelementptr i8, ptr %.val.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  store i8 %i.o, ptr %i.bz, align 1, !noalias !11552
  %i.ca = load <2 x i64>, ptr %i.i, align 8, !alias.scope !11552
  %i.cb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bv, i64 0
  %i.cc = sub <2 x i64> %i.ca, %i.cb
  store <2 x i64> %i.cc, ptr %i.i, align 8, !alias.scope !11552
  %i.cd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.ce = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  store i64 %i.br, ptr %i.cf, align 8, !noalias !11552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11553)
  %i.cg = load i64, ptr %i.f, align 8, !alias.scope !11553, !noalias !11554, !noundef !21 ; 9 uses
  %i.ch = icmp ult i64 %i.cg, 82351536043346213
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = load i64, ptr %0, align 8, !range !25, !alias.scope !11553, !noalias !11554, !noundef !21
  %i.cj = icmp eq i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre31 = load ptr, ptr %i.d, align 8, !alias.scope !11555, !noalias !11556
  br label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11557)
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !11558, !noalias !11554, !noundef !21
  %i.cm = load i64, ptr %i.i, align 8, !alias.scope !11558, !noalias !11554, !noundef !21
  %i.cn = add i64 %i.cm, %i.cl                    ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 82351536043346212) ; 3 uses
  %i.co = sub nsw i64 %.sroa.0.0.i.i.i, %i.cg
  %i.cp = icmp ugt i64 %i.co, 1
  br i1 %i.cp, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.v, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11561)
  %i.cq = add nuw nsw i64 %i.cg, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11562
  %.val12.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !11563, !noalias !11554
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.cg, ptr %.val12.i.i.i.i.i, i64 noundef %i.cq, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11562
  %i.cr = load i64, ptr %i.b, align 8, !range !52, !noalias !11562, !noundef !21
  %i.cs = trunc nuw i64 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.cs, label %bb.u, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread

bb.u:                                             ; preds = %bb.t
  %i.cu = load i64, ptr %i.ct, align 8, !range !30, !noalias !11562, !noundef !21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !11562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11562
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cw) #41
          to label %.noexc.i unwind label %bb.z, !noalias !11564

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread: ; preds = %bb.t
  %i.cx = load ptr, ptr %i.ct, align 8, !noalias !11562, !nonnull !21, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11562
  br label %bb.y

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11566)
  %i.cy = icmp ult i64 %i.cn, %i.cg
  br i1 %i.cy, label %bb.t, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11567
  %.val12.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !11568, !noalias !11554
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.cg, ptr %.val12.i.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11567
  %i.cz = load i64, ptr %i.a, align 8, !range !52, !noalias !11567, !noundef !21
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.x, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11567
  br label %bb.t

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !11567, !nonnull !21, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11567
  br label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread
  %storemerge = phi ptr [ %i.dc, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %i.cx, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread ] ; 2 uses
  %.sroa.0.0.i.sink.i.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %i.cq, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit.i.thread ]
  store ptr %storemerge, ptr %i.d, align 8, !alias.scope !11558, !noalias !11554
  store i64 %.sroa.0.0.i.sink.i.i, ptr %0, align 8, !alias.scope !11558, !noalias !11554
  br label %bb.ab

bb.z:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #39
          to label %.body unwind label %bb.aa, !noalias !11553

bb.aa:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !11553
  unreachable

bb.ab:                                            ; preds = %._crit_edge, %bb.y
  %3 = phi ptr [ %.pre31, %._crit_edge ], [ %storemerge, %bb.y ]
  %i.df = getelementptr inbounds nuw [112 x i8], ptr %3, i64 %i.cg ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.df, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 104
  store i64 %1, ptr %.sroa.415.0..sroa_idx, align 8, !noalias !11564
  %4 = add nuw nsw i64 %i.cg, 1
  store i64 %4, ptr %i.f, align 8, !alias.scope !11555, !noalias !11556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

.body:                                            ; preds = %bb.z, %bb.ac
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.dg, %bb.ac ], [ %i.dd, %bb.z ]
  resume { ptr, i32 } %eh.lpad-body18

bb.ac:                                            ; preds = %bb.o, %bb.b, %bb.h
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %2) #39
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !11584, !noalias !11585, !noundef !21
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.d, align 8, !noundef !21
  %i.j = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %i.k = tail call { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs8ojAJGM8ADl_16datafusion_proto(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.i, i1 noundef zeroext true) ; 0 uses
  br label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %i.l = load i64, ptr %0, align 8, !range !25, !noundef !21 ; 3 uses
  %i.m = load i64, ptr %i.d, align 8, !noundef !21 ; 6 uses
  %i.n = icmp ult i64 %i.m, 82351536043346213
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nsw i64 %i.l, %i.m
  %i.p = icmp ugt i64 %1, %i.o
  br i1 %i.p, label %bb.c, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.c:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11586)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !11586, !noundef !21
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !11586, !noundef !21
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 82351536043346212) ; 3 uses
  %i.u = sub nsw i64 %.sroa.0.0.i.i, %i.m
  %i.v = icmp ugt i64 %i.u, %1
  br i1 %i.v, label %bb.g, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.i, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11589)
  %i.w = add i64 %i.m, %1                         ; 4 uses
  %i.x = icmp ult i64 %i.w, %i.m
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11590
  %.val12.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !11590
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.l, ptr %.val12.i.i.i.i, i64 noundef %i.w, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11590
  %i.y = load i64, ptr %i.b, align 8, !range !52, !noalias !11590, !noundef !21
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.z, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.aa, align 8, !range !30, !noalias !11590, !noundef !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !11590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11590
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.d
  %i.ae = load ptr, ptr %i.aa, align 8, !noalias !11590, !nonnull !21, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11590
  store ptr %i.ae, ptr %i.c, align 8, !alias.scope !11590
  %i.af = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.af)
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i

bb.f:                                             ; preds = %bb.e, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.3.0.i.i.i = phi i64 [ %i.ad, %bb.e ], [ undef, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i, i64 %.sroa.3.0.i.i.i) #41, !noalias !11591
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11593)
  %i.ag = icmp ult i64 %i.t, %i.m
  br i1 %i.ag, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11594
  %.val12.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !11594
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.l, ptr %.val12.i.i.i, i64 noundef %.sroa.0.0.i.i, i64 noundef 8, i64 noundef range(i64 112, 129) 112), !noalias !11594
  %i.ah = load i64, ptr %i.a, align 8, !range !52, !noalias !11594, !noundef !21
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11594
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !11594, !nonnull !21, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11594
  store ptr %i.ak, ptr %i.c, align 8, !alias.scope !11594
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %i.w, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ]
  store i64 %.sroa.0.0.i.sink.i, ptr %0, align 8, !alias.scope !11586
  br label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks.exit.sink.split.i, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCs6Po7BT7Nknu_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.f = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #35
  br label %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !23

bb.d:                                             ; preds = %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #41
  unreachable

_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !21
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !11598
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !21
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !21, !noundef !21
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !11602
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxENtB7_5Array13shrink_to_fitCsdJxlLsGgtXr_16delta_benchmarks
declare hidden void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxENtB7_5Array13shrink_to_fitCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array13logical_nullsCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array8is_validCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array10null_countCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB7_5Array11is_nullableCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxENtB7_5Array22get_buffer_memory_sizeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxENtB7_5Array21get_array_memory_sizeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array5slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array22get_buffer_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array21get_array_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array5slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array22get_buffer_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array21get_array_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB6_12AggregateUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 88686269585142076), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 76861433640456466), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23058430092136940), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 144115188075855872), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 72057594037927936), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB6_12DmlStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB6_6CopyToNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(312), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 64051194700380388), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB24_8for_each4callBX_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3H_7HashMapBY_B1j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB28_7collect6ExtendBX_E6extendBI_E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2S_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5J_7HashSetRNtNtB1w_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB6s_E6extendBX_E0ENtNtB7I_8iterator8Iterator4folduNCINvNvB8r_8for_each4callTB6s_uENCINvXs1i_NtB5L_3mapINtB9D_7HashMapB6s_uB6P_EIB7E_B9m_E6extendBN_E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2E_7HashSetB1L_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendINtB12_3VecB1L_EE0ENtNtB4k_8iterator8Iterator4folduNCINvNvB5g_8for_each4callTB1L_uENCINvXs1i_NtB2G_3mapINtB6s_7HashMapB1L_uB3r_EIB4g_B6b_E6extendBN_E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB2_10EquivalentBq_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtB2_10EquivalentBq_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE14poll_join_nextCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_15IdentNormalizer9normalize(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtB6_7Display3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs1N9T06jgEdt_11arrow_array8timezone7privateNtB5_2TzNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylE5valueCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs1_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE5valueCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array9into_dataCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArrayxENtB7_5Array9into_dataCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array9into_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtB7_5Array9into_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array9map_arrayNtB5_8MapArrayNtB7_5Array9into_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #26

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #27

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #28

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #29

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE3newCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRReECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #22

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #30

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr12var_provider7VarTypeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_11VarProviderNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2D_4SendEL_EEENtNtB2F_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCs2xb0BKvnu80_21datafusion_datasource11file_format17FileFormatFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table20TableProviderFactoryEL_EEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableFunctionEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12PreparedPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtB1w_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config20ParquetColumnOptionsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnDecryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common6config26ColumnEncryptionPropertiesEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBR_3AnyNtNtBT_6marker4SyncNtB27_4SendEL_EEENtNtBT_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtCs6Po7BT7Nknu_5alloc5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 72057594037927936), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr3udfNtB2_9ScalarUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBD_EINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10LockClauseENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11LateralViewENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBD_EINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast12JsonPathElemENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15JsonTableColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19OpenJsonTableColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7MeasureENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query22XmlNamespaceDefinitionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14XmlTableColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsjhHCjzi9uUI_17datafusion_common6columnNtB2_6ColumnNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRjNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15TableConstraintENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtB5_10ExprSchema17field_from_column(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema22data_type_and_nullableCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema8metadataCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema8nullableCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB4_10ExprSchema9data_typeCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast3TagENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger18TriggerReferencingENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast25ConditionalStatementBlockENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl20AlterSchemaOperationENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylEE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxEE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs1N9T06jgEdt_11arrow_array5array12struct_array11StructArrayE9drop_slowCs8ulvy0Wg6Ot_12delta_kernel(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs1N9T06jgEdt_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs1N9T06jgEdt_11arrow_array5array9map_array8MapArrayE9drop_slowCs8ulvy0Wg6Ot_12delta_kernel(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSTaIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #31

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceE9drop_slowCsfYVtenZkBsn_12arrow_schema(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBZ_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE9next_implKb0_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan10ProjectionNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan6FilterNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan6WindowNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan9AggregateNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan4SortNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan4JoinNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11RepartitionNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan5UnionNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan9TableScanNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan13EmptyRelationNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan8SubqueryNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan13SubqueryAliasNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan5LimitNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statement9StatementNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan6ValuesNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan7ExplainNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan7AnalyzeNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan9ExtensionNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan8DistinctNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dml12DmlStatementNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl12DdlStatementNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dml6CopyToNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan13DescribeTableNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan6UnnestNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan14RecursiveQueryNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsq_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9ExtensionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB4_6CopyToNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs7_NtCslfDARg5dRCJ_8lock_api5mutexINtB5_5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB1B_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCskQDtHcQtBkN_5tokio4sync6rwlockINtB5_6RwLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1x_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsfYVtenZkBsn_12arrow_schema5fieldNtB2_5FieldNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast13SetAssignmentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15InterpolateExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsfYVtenZkBsn_12arrow_schema6fieldsNtB2_6FieldsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1r_ENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies22FunctionalDependenciesNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast19TruncateTableTargetENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10CopyOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEENtNtBK_5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading23StageLoadSelectItemKindENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast12SecretOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast26AttachDuckDBDatabaseOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast12FunctionDescENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast13ExceptionWhenENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast12ContactEntryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl14ProcedureParamENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputIB1C_DNtNtB1a_3any3AnyNtNtB1a_6marker4SendEL_EB3a_EL_EENCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB1a_6result6ResultINtNtB1G_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0EB2b_4pollCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB8_6option6OptionNtNtBB_6string6StringEENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic10DiagnosticENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtB6_5Debug3fmtCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type10EnumMemberENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query18XmlPassingArgumentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtNtBa_5slice4iter4IterB14_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4sync6rwlock6RwLockINtNtB19_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEINtNtNtBa_5slice4iter4IterB14_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtNtBa_5slice4iter4IterB14_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtNtNtBa_5slice4iter4IterB14_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionINtNtNtBa_5slice4iter4IterB14_EECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtCs2HSpDNxY7OE_9hashbrown5tableINtB5_9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB5_10ToDFSchema11to_dfschema(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #34

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #35 = { nounwind }
attributes #36 = { noinline }
attributes #37 = { cold noreturn nounwind }
attributes #38 = { "function-inline-cost-multiplier"="2" }
attributes #39 = { cold }
attributes #40 = { cold "function-inline-cost-multiplier"="2" }
attributes #41 = { noreturn }
attributes #42 = { inlinehint }
attributes #43 = { noinline noreturn }

!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks, null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECsdJxlLsGgtXr_16delta_benchmarks, null}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks, null}
!15 = distinct !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks, null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 2, !"RtLibUseGOT", i32 1}
!20 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!21 = !{}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 0, i64 70}
!25 = !{i64 0, i64 -9223372036854775808}
!26 = !{i64 8}
!27 = !{i64 1, i64 536870913}
!28 = !{i64 0, i64 3}
!29 = !{i64 0, i64 71}
!30 = !{i64 0, i64 -9223372036854775807}
!31 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks}
!32 = !{i64 16}
!33 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks}
!34 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECsdJxlLsGgtXr_16delta_benchmarks}
!35 = !{i64 0, i64 -9223372036854775785}
!36 = !{i64 0, i64 -9223372036854775806}
!37 = !{i64 0, i64 4}
!38 = !{i64 0, i64 76}
!39 = !{i64 0, i64 74}
!40 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast19ShowStatementFilterECsdJxlLsGgtXr_16delta_benchmarks}
!41 = !{i64 0, i64 -9223372036854775800}
!42 = !{i64 0, i64 5}
!43 = !{i64 0, i64 7}
!44 = !{i64 0, i64 45}
!45 = !{i64 0, i64 72}
!46 = !{i8 0, i8 104}
!47 = !{i64 0, i64 28}
!48 = !{i64 0, i64 12}
!49 = !{i64 0, i64 -9223372036854775786}
!50 = !{i64 0, i64 73}
!51 = !{i64 0, i64 -9223372036854775805}
!52 = !{i64 0, i64 2}
!53 = !{i64 0, i64 78}
!54 = !{i64 0, i64 69}
!55 = !{i8 0, i8 117}
!56 = !{i64 0, i64 6}
!57 = !{i64 0, i64 120}
!58 = !{i64 0, i64 29}
!59 = !{i64 0, i64 -9223372036854775803}
!60 = !{i128 0, i128 3}
!61 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks}
!62 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks, ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks}
!63 = !{i64 0, i64 37}
!64 = !{i8 0, i8 41}
!65 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks}
!66 = !{i64 0, i64 20}
!67 = !{i64 0, i64 8}
!68 = !{i128 0, i128 50}
!69 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECsdJxlLsGgtXr_16delta_benchmarks}
!70 = !{i64 0, i64 38}
!71 = !{i64 0, i64 77}
!72 = !{i64 0, i64 15}
!73 = !{i32 0, i32 7}
!74 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECsdJxlLsGgtXr_16delta_benchmarks}
!75 = !{i8 0, i8 9}
!76 = !{i64 0, i64 44}
!77 = !{i64 0, i64 -9223372036854775787}
!78 = !{i8 0, i8 116}
!79 = !{i8 0, i8 103}
!80 = !{!"branch_weights", i32 2002, i32 2000}
!81 = !{i8 0, i8 42}
!82 = !{i8 0, i8 2}
!83 = !{i32 0, i32 1114113}
!84 = !{i8 0, i8 3}
!85 = !{i8 0, i8 4}
!86 = !{i64 0, i64 36}
!87 = !{i8 0, i8 10}
!88 = !{i64 0, i64 -9223372036854775801}
!89 = !{!"branch_weights", i32 2146410443, i32 1073205}
!90 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!91 = !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks}
!92 = !{i8 0, i8 6}
!93 = !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks}
!94 = !{i8 0, i8 5}
!95 = !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks}
!96 = !{i8 0, i8 7}
!97 = !{i8 0, i8 8}
!98 = distinct !{!98, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0ECsdJxlLsGgtXr_16delta_benchmarks"}
!99 = distinct !{!99, !98, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!100 = distinct !{!100, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!101 = distinct !{!101, !100, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!102 = distinct !{!102, !98, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!103 = distinct !{!103, !100, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!104 = distinct !{!104, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!105 = distinct !{!105, !104, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!106 = distinct !{!106, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!107 = distinct !{!107, !106, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!108 = !{!99}
!109 = !{!101}
!110 = !{!101, !99}
!111 = !{!103, !102}
!112 = !{!105, !101, !103, !99}
!113 = !{!107, !101, !103, !99}
!114 = distinct !{!114, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryBO_ECsdJxlLsGgtXr_16delta_benchmarks"}
!115 = distinct !{!115, !114, !"_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12remove_entryBO_ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!116 = distinct !{!116, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks"}
!117 = distinct !{!117, !116, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!118 = distinct !{!118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks"}
!119 = distinct !{!119, !118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!120 = distinct !{!120, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!121 = distinct !{!121, !120, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!122 = distinct !{!122, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!123 = distinct !{!123, !122, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!124 = distinct !{!124, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!125 = distinct !{!125, !124, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!126 = !{!115}
!127 = !{!121, !119, !117}
!128 = !{!119, !117}
!129 = !{!123}
!130 = !{!125}
!131 = distinct !{!131, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!132 = distinct !{!132, !131, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!133 = distinct !{!133, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!134 = distinct !{!134, !133, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!135 = distinct !{!135, !131, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!136 = distinct !{!136, !133, !"_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!137 = distinct !{!137, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!138 = distinct !{!138, !137, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!139 = distinct !{!139, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!140 = distinct !{!140, !139, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!141 = !{!132}
!142 = !{!134}
!143 = !{!134, !132}
!144 = !{!136, !135}
!145 = !{!138, !134, !136, !132}
!146 = !{!140, !134, !136, !132}
!147 = distinct !{!147, !"_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks"}
!148 = distinct !{!148, !147, !"_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!149 = distinct !{!149, !"_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks"}
!150 = distinct !{!150, !149, !"_RNCNvXs0_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!151 = !{!148}
!152 = !{!150}
!153 = distinct !{!153, !"_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array3lenCsdJxlLsGgtXr_16delta_benchmarks"}
!154 = distinct !{!154, !153, !"_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array3lenCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!155 = distinct !{!155, !"_RNCNvXs8_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB7_16GenericListArraylENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks"}
!156 = distinct !{!156, !155, !"_RNCNvXs8_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB7_16GenericListArraylENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!157 = distinct !{!157, !155, !"_RNCNvXs8_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB7_16GenericListArraylENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!158 = distinct !{!158, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks"}
!159 = distinct !{!159, !158, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!160 = distinct !{!160, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!161 = distinct !{!161, !160, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!162 = distinct !{!162, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks"}
!163 = distinct !{!163, !162, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!164 = distinct !{!164, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!165 = distinct !{!165, !164, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!166 = distinct !{!166, !"_RNCNvXs8_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB7_16GenericListArraylENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks"}
!167 = distinct !{!167, !166, !"_RNCNvXs8_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB7_16GenericListArraylENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!168 = distinct !{!168, !166, !"_RNCNvXs8_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB7_16GenericListArraylENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!169 = distinct !{!169, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks"}
!170 = distinct !{!170, !169, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!171 = distinct !{!171, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!172 = distinct !{!172, !171, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!173 = distinct !{!173, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks"}
!174 = distinct !{!174, !173, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!175 = distinct !{!175, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!176 = distinct !{!176, !175, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!177 = !{!154}
!178 = !{!157, !156}
!179 = !{!156}
!180 = !{!161, !159}
!181 = !{!165, !163}
!182 = !{!168, !167}
!183 = !{!167}
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
!11319 = distinct !{!11319, !11317, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2B_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11320 = distinct !{!11320, !11317, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2B_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11321 = distinct !{!11321, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11322 = distinct !{!11322, !11321, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11323 = distinct !{!11323, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB2D_11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11324 = distinct !{!11324, !11323, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB2D_11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11325 = distinct !{!11325, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks"}
!11326 = distinct !{!11326, !11325, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11327 = distinct !{!11327, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks"}
!11328 = distinct !{!11328, !11327, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11329 = distinct !{!11329, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11330 = distinct !{!11330, !11329, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11331 = distinct !{!11331, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11332 = distinct !{!11332, !11331, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11333 = distinct !{!11333, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11334 = distinct !{!11334, !11333, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11335 = distinct !{!11335, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11336 = distinct !{!11336, !11335, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11337 = distinct !{!11337, !11335, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11338 = !{!11318}
!11339 = !{!11320, !11319}
!11340 = !{!11322}
!11341 = !{!11324, !11320, !11319}
!11342 = !{!11330, !11328, !11326}
!11343 = !{!11328, !11326}
!11344 = !{!11332}
!11345 = !{!11334}
!11346 = !{!11336}
!11347 = !{!11337}
!11348 = !{!11336, !11337}
!11349 = distinct !{!11349, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2J_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11350 = distinct !{!11350, !11349, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2J_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11351 = distinct !{!11351, !11349, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2J_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11352 = distinct !{!11352, !11349, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2J_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11353 = distinct !{!11353, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11354 = distinct !{!11354, !11353, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11355 = distinct !{!11355, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB2L_11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11356 = distinct !{!11356, !11355, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB2L_11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11357 = distinct !{!11357, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks"}
!11358 = distinct !{!11358, !11357, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11359 = distinct !{!11359, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks"}
!11360 = distinct !{!11360, !11359, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11361 = distinct !{!11361, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11362 = distinct !{!11362, !11361, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11363 = distinct !{!11363, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11364 = distinct !{!11364, !11363, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11365 = distinct !{!11365, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11366 = distinct !{!11366, !11365, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11367 = distinct !{!11367, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11368 = distinct !{!11368, !11367, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11369 = distinct !{!11369, !11367, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11370 = !{!11350}
!11371 = !{!11352, !11351}
!11372 = !{!11354}
!11373 = !{!11356, !11352, !11351}
!11374 = !{!11362, !11360, !11358}
!11375 = !{!11360, !11358}
!11376 = !{!11364}
!11377 = !{!11366}
!11378 = !{!11368}
!11379 = !{!11369}
!11380 = !{!11368, !11369}
!11381 = distinct !{!11381, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2N_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11382 = distinct !{!11382, !11381, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2N_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11383 = distinct !{!11383, !11381, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2N_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11384 = distinct !{!11384, !11381, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0NCINvB2N_11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11385 = distinct !{!11385, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11386 = distinct !{!11386, !11385, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11387 = distinct !{!11387, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB2P_11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11388 = distinct !{!11388, !11387, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0NCINvB2P_11make_hasherBS_B1u_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11389 = distinct !{!11389, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks"}
!11390 = distinct !{!11390, !11389, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11391 = distinct !{!11391, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks"}
!11392 = distinct !{!11392, !11391, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11393 = distinct !{!11393, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11394 = distinct !{!11394, !11393, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11395 = distinct !{!11395, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11396 = distinct !{!11396, !11395, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11397 = distinct !{!11397, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!11398 = distinct !{!11398, !11397, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11399 = distinct !{!11399, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11400 = distinct !{!11400, !11399, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11401 = distinct !{!11401, !11399, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTjRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11402 = !{!11382}
!11403 = !{!11384, !11383}
!11404 = !{!11386}
!11405 = !{!11388, !11384, !11383}
!11406 = !{!11394, !11392, !11390}
!11407 = !{!11392, !11390}
!11408 = !{!11396}
!11409 = !{!11398}
!11410 = !{!11400}
!11411 = !{!11401}
!11412 = !{!11400, !11401}
!11413 = distinct !{!11413, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB28_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11414 = distinct !{!11414, !11413, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB28_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11415 = distinct !{!11415, !11413, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB28_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11416 = distinct !{!11416, !11413, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB28_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11417 = distinct !{!11417, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11418 = distinct !{!11418, !11417, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11419 = distinct !{!11419, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2a_11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11420 = distinct !{!11420, !11419, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2a_11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11421 = distinct !{!11421, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11422 = distinct !{!11422, !11421, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11423 = distinct !{!11423, !11421, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11424 = !{!11414}
!11425 = !{!11416, !11415}
!11426 = !{!11418}
!11427 = !{!11420, !11416, !11415}
!11428 = !{!11422}
!11429 = !{!11423}
!11430 = !{!11422, !11423}
!11431 = distinct !{!11431, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0NCINvB3n_11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11432 = distinct !{!11432, !11431, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0NCINvB3n_11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11433 = distinct !{!11433, !11431, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0NCINvB3n_11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11434 = distinct !{!11434, !11431, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_B1F_E0NCINvB3n_11make_hasherBQ_B1F_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11435 = distinct !{!11435, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11436 = distinct !{!11436, !11435, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11437 = distinct !{!11437, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1H_E0NCINvB3p_11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11438 = distinct !{!11438, !11437, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B1H_E0NCINvB3p_11make_hasherBS_B1H_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11439 = distinct !{!11439, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11440 = distinct !{!11440, !11439, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11441 = distinct !{!11441, !11439, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11442 = !{!11432}
!11443 = !{!11434, !11433}
!11444 = !{!11436}
!11445 = !{!11438, !11434, !11433}
!11446 = !{!11440}
!11447 = !{!11441}
!11448 = !{!11440, !11441}
!11449 = distinct !{!11449, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB22_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11450 = distinct !{!11450, !11449, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB22_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11451 = distinct !{!11451, !11449, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB22_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11452 = distinct !{!11452, !11449, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB22_11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11453 = distinct !{!11453, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11454 = distinct !{!11454, !11453, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11455 = distinct !{!11455, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB24_11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11456 = distinct !{!11456, !11455, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB24_11make_hasherBS_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11457 = distinct !{!11457, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11458 = distinct !{!11458, !11457, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11459 = distinct !{!11459, !11457, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringuEE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11460 = !{!11450}
!11461 = !{!11451}
!11462 = !{!11450, !11452}
!11463 = !{!11454}
!11464 = !{!11456, !11450, !11452}
!11465 = !{!11456}
!11466 = !{!11458}
!11467 = !{!11459}
!11468 = !{!11458, !11459}
!11469 = distinct !{!11469, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReBQ_EE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0NCINvB1t_11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11470 = distinct !{!11470, !11469, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReBQ_EE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0NCINvB1t_11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11471 = distinct !{!11471, !11469, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReBQ_EE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0NCINvB1t_11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11472 = distinct !{!11472, !11469, !"_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTReBQ_EE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_BQ_E0NCINvB1t_11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11473 = distinct !{!11473, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11474 = distinct !{!11474, !11473, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11475 = distinct !{!11475, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1v_11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11476 = distinct !{!11476, !11475, !"_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTReBS_EE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0NCINvB1v_11make_hasherBS_BS_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11477 = distinct !{!11477, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!11478 = distinct !{!11478, !11477, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!11479 = distinct !{!11479, !11477, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!11480 = distinct !{!11480, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReBP_EE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11481 = distinct !{!11481, !11480, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReBP_EE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11482 = distinct !{!11482, !11480, !"_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReBP_EE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11483 = !{!11470}
!11484 = !{!11471}
!11485 = !{!11470, !11472}
!11486 = !{!11474, !11470}
!11487 = !{!11476, !11470}
!11488 = !{!11479, !11478}
!11489 = !{!11482, !11481}
!11490 = !{!11482}
!11491 = !{!11481}
!11492 = distinct !{!11492, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsdJxlLsGgtXr_16delta_benchmarks"}
!11493 = distinct !{!11493, !11492, !"_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11494 = !{!11493}
!11495 = distinct !{!11495, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB24_E0NCINvB1n_8get_hashB24_uE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11496 = distinct !{!11496, !11495, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB24_E0NCINvB1n_8get_hashB24_uE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11497 = distinct !{!11497, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11498 = distinct !{!11498, !11497, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11499 = distinct !{!11499, !11495, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB24_E0NCINvB1n_8get_hashB24_uE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!11500 = distinct !{!11500, !11495, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB24_E0NCINvB1n_8get_hashB24_uE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11501 = distinct !{!11501, !11497, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11502 = distinct !{!11502, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!11503 = distinct !{!11503, !11502, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!11504 = distinct !{!11504, !"_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11505 = distinct !{!11505, !11504, !"_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuB26_E0NCINvB1p_8get_hashB26_uE0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11506 = distinct !{!11506, !"_RNvXCsfMGkWeWsnD2_10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtB2_10EquivalentBs_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks"}
!11507 = distinct !{!11507, !11506, !"_RNvXCsfMGkWeWsnD2_10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtB2_10EquivalentBs_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11508 = distinct !{!11508, !11506, !"_RNvXCsfMGkWeWsnD2_10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnINtB2_10EquivalentBs_E10equivalentCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11509 = distinct !{!11509, !"_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11510 = distinct !{!11510, !11509, !"_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11511 = distinct !{!11511, !11509, !"_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11512 = distinct !{!11512, !"_RNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuBL_E0CsdJxlLsGgtXr_16delta_benchmarks"}
!11513 = distinct !{!11513, !11512, !"_RNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuBL_E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11514 = distinct !{!11514, !"_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks"}
!11515 = distinct !{!11515, !11514, !"_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11516 = distinct !{!11516, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE10push_entryCsdJxlLsGgtXr_16delta_benchmarks"}
!11517 = distinct !{!11517, !11516, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE10push_entryCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11518 = distinct !{!11518, !11516, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE10push_entryCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11519 = distinct !{!11519, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE8push_mutCsdJxlLsGgtXr_16delta_benchmarks"}
!11520 = distinct !{!11520, !11519, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE8push_mutCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11521 = distinct !{!11521, !11519, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE8push_mutCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11522 = distinct !{!11522, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks"}
!11523 = distinct !{!11523, !11522, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11524 = distinct !{!11524, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11525 = distinct !{!11525, !11524, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11526 = distinct !{!11526, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11527 = distinct !{!11527, !11526, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11528 = distinct !{!11528, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11529 = distinct !{!11529, !11528, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11530 = distinct !{!11530, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11531 = distinct !{!11531, !11530, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11532 = distinct !{!11532, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11533 = distinct !{!11533, !11532, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11534 = !{!11498, !11496}
!11535 = !{!11501, !11500, !11499}
!11536 = !{!11496}
!11537 = !{!11500, !11499}
!11538 = !{!11503, !11500}
!11539 = !{!11505, !11500}
!11540 = !{!11507}
!11541 = !{!11508}
!11542 = !{!11510}
!11543 = !{!11511}
!11544 = !{!11510, !11507}
!11545 = !{!11511, !11508, !11513, !11505, !11500}
!11546 = !{!11511, !11508}
!11547 = !{!11510, !11507, !11513, !11505, !11500}
!11548 = !{!"branch_weights", i32 1073205, i32 2146410443}
!11549 = !{!11513, !11505, !11500}
!11550 = !{!11510, !11511, !11507, !11508, !11513, !11505, !11500}
!11551 = !{!11500}
!11552 = !{!11515}
!11553 = !{!11517}
!11554 = !{!11518}
!11555 = !{!11520, !11517}
!11556 = !{!11521, !11518}
!11557 = !{!11523}
!11558 = !{!11523, !11517}
!11559 = !{!11525}
!11560 = !{!11527}
!11561 = !{!11529}
!11562 = !{!11529, !11527, !11525, !11523, !11517, !11518}
!11563 = !{!11529, !11527, !11525, !11523, !11517}
!11564 = !{!11517, !11518}
!11565 = !{!11531}
!11566 = !{!11533}
!11567 = !{!11533, !11531, !11523, !11517, !11518}
!11568 = !{!11533, !11531, !11523, !11517}
!11569 = distinct !{!11569, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks"}
!11570 = distinct !{!11570, !11569, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11571 = distinct !{!11571, !11569, !"_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11572 = distinct !{!11572, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks"}
!11573 = distinct !{!11573, !11572, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11574 = distinct !{!11574, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11575 = distinct !{!11575, !11574, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11576 = distinct !{!11576, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11577 = distinct !{!11577, !11576, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11578 = distinct !{!11578, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11579 = distinct !{!11579, !11578, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11580 = distinct !{!11580, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11581 = distinct !{!11581, !11580, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11582 = distinct !{!11582, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11583 = distinct !{!11583, !11582, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11584 = !{!11570}
!11585 = !{!11571}
!11586 = !{!11573}
!11587 = !{!11575}
!11588 = !{!11577}
!11589 = !{!11579}
!11590 = !{!11579, !11577, !11575, !11573}
!11591 = !{!11575, !11573}
!11592 = !{!11581}
!11593 = !{!11583}
!11594 = !{!11583, !11581, !11573}
!11595 = distinct !{!11595, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!11596 = distinct !{!11596, !11595, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!11597 = distinct !{!11597, !11595, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!11598 = !{!11597, !11596}
!11599 = distinct !{!11599, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!11600 = distinct !{!11600, !11599, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!11601 = distinct !{!11601, !11599, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!11602 = !{!11601, !11600}
!11603 = distinct !{!11603, !"_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks"}
!11604 = distinct !{!11604, !11603, !"_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11605 = distinct !{!11605, !11603, !"_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11606 = distinct !{!11606, !"_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks"}
!11607 = distinct !{!11607, !11606, !"_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!11608 = distinct !{!11608, !11606, !"_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11609 = distinct !{!11609, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks"}
!11610 = distinct !{!11610, !11609, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11611 = distinct !{!11611, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11612 = distinct !{!11612, !11611, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11613 = distinct !{!11613, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11614 = distinct !{!11614, !11613, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11615 = distinct !{!11615, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11616 = distinct !{!11616, !11615, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11617 = distinct !{!11617, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11618 = distinct !{!11618, !11617, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11619 = distinct !{!11619, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks"}
!11620 = distinct !{!11620, !11619, !"_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11621 = !{!11604}
!11622 = !{!11605}
!11623 = !{!11608, !11607, !11604, !11605}
!11624 = !{!11607, !11605}
!11625 = !{!11610}
!11626 = !{!11610, !11604}
!11627 = !{!11612}
!11628 = !{!11614}
!11629 = !{!11616}
!11630 = !{!11616, !11614, !11612, !11610, !11604, !11605}
!11631 = !{!11616, !11614, !11612, !11610, !11604}
!11632 = !{!11616, !11614, !11612, !11610}
!11633 = !{!11618}
!11634 = !{!11620}
!11635 = !{!11620, !11618, !11610, !11604, !11605}
!11636 = !{!11620, !11618, !11610, !11604}
!11637 = !{!11620, !11618, !11610}
!11638 = distinct !{!11638, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11639 = distinct !{!11639, !11638, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11640 = distinct !{!11640, !11638, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11641 = distinct !{!11641, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11642 = distinct !{!11642, !11641, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11643 = distinct !{!11643, !11641, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11644 = !{!11639}
!11645 = !{!11640}
!11646 = !{!11642}
!11647 = !{!11643}
!11648 = !{!11643, !11639, !11640}
!11649 = !{!11642, !11639, !11640}
!11650 = !{!11642, !11643, !11639, !11640}
!11651 = !{!11639, !11640}
!11652 = distinct !{!11652, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11653 = distinct !{!11653, !11652, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11654 = distinct !{!11654, !11652, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11655 = distinct !{!11655, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11656 = distinct !{!11656, !11655, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11657 = distinct !{!11657, !11655, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11658 = !{!11653}
!11659 = !{!11654}
!11660 = !{!11656}
!11661 = !{!11657}
!11662 = !{!11657, !11653, !11654}
!11663 = !{!11656, !11653, !11654}
!11664 = !{!11656, !11657, !11653, !11654}
!11665 = !{!11653, !11654}
!11666 = distinct !{!11666, !"_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11667 = distinct !{!11667, !11666, !"_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11668 = distinct !{!11668, !11666, !"_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11669 = !{!11667}
!11670 = !{!11668}
!11671 = !{!11667, !11668}
!11672 = distinct !{!11672, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks"}
!11673 = distinct !{!11673, !11672, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11674 = distinct !{!11674, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks"}
!11675 = distinct !{!11675, !11674, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11676 = distinct !{!11676, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks"}
!11677 = distinct !{!11677, !11676, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11678 = !{!11673}
!11679 = !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks}
!11680 = !{!11675}
!11681 = !{!11677}
!11682 = distinct !{!11682, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks"}
!11683 = distinct !{!11683, !11682, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11684 = distinct !{null}
!11685 = distinct !{!11685, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks"}
!11686 = distinct !{!11686, !11685, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11687 = distinct !{!11687, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks"}
!11688 = distinct !{!11688, !11687, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11689 = distinct !{!11689, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks"}
!11690 = distinct !{!11690, !11689, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11691 = distinct !{!11691, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks"}
!11692 = distinct !{!11692, !11691, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11693 = distinct !{ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks, null}
!11694 = distinct !{!11694, !"_RNvXse5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11695 = distinct !{!11695, !11694, !"_RNvXse5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11696 = distinct !{!11696, !11694, !"_RNvXse5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11697 = distinct !{!11697, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks"}
!11698 = distinct !{!11698, !11697, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11699 = distinct !{!11699, !"_RNvXs2l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5TableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11700 = distinct !{!11700, !11699, !"_RNvXs2l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5TableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11701 = distinct !{!11701, !11699, !"_RNvXs2l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5TableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11702 = !{!11683}
!11703 = !{!11686}
!11704 = !{!11688, !11686}
!11705 = !{!11690}
!11706 = !{!11692, !11690}
!11707 = !{!11695}
!11708 = !{!11696}
!11709 = !{!11698}
!11710 = !{!11700}
!11711 = !{!11701, !11700, !11698}
!11712 = !{!11700, !11698}
!11713 = !{!11701}
!11714 = distinct !{!11714, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11715 = distinct !{!11715, !11714, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11716 = distinct !{!11716, !11714, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11717 = distinct !{!11717, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11718 = distinct !{!11718, !11717, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11719 = distinct !{!11719, !11717, !"_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11720 = distinct !{!11720, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq"}
!11721 = distinct !{!11721, !11720, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 0"}
!11722 = distinct !{!11722, !11720, !"_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq: argument 1"}
!11723 = !{!11715}
!11724 = !{!11716}
!11725 = !{!11715, !11716}
!11726 = !{!11718}
!11727 = !{!11719}
!11728 = !{!11721}
!11729 = !{!11722}
!11730 = !{!11722, !11718, !11719}
!11731 = !{!11721, !11718, !11719}
!11732 = !{!11721, !11722, !11718, !11719}
!11733 = !{!11718, !11719}
!11734 = distinct !{!11734, !"_RNvXsyQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11735 = distinct !{!11735, !11734, !"_RNvXsyQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11736 = distinct !{!11736, !11734, !"_RNvXsyQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_11TableObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11737 = distinct !{!11737, !"_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11738 = distinct !{!11738, !11737, !"_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11739 = distinct !{!11739, !11737, !"_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11740 = distinct !{!11740, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks"}
!11741 = distinct !{!11741, !11740, !"_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11742 = distinct !{!11742, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks"}
!11743 = distinct !{!11743, !11742, !"_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!11744 = distinct !{!11744, !"_RNvXse1_NtCs4lawaffTVVK_9sqlparser3astNtB6_10OnConflictNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11745 = distinct !{!11745, !11744, !"_RNvXse1_NtCs4lawaffTVVK_9sqlparser3astNtB6_10OnConflictNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11746 = distinct !{!11746, !11744, !"_RNvXse1_NtCs4lawaffTVVK_9sqlparser3astNtB6_10OnConflictNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11747 = distinct !{null, null}
!11748 = distinct !{!11748, !"_RNvXseb_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11749 = distinct !{!11749, !11748, !"_RNvXseb_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11750 = distinct !{!11750, !11748, !"_RNvXseb_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ConflictTargetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11751 = distinct !{!11751, !"_RNvXsel_NtCs4lawaffTVVK_9sqlparser3astNtB6_16OnConflictActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11752 = distinct !{!11752, !11751, !"_RNvXsel_NtCs4lawaffTVVK_9sqlparser3astNtB6_16OnConflictActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11753 = distinct !{!11753, !11751, !"_RNvXsel_NtCs4lawaffTVVK_9sqlparser3astNtB6_16OnConflictActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11754 = distinct !{!11754, !"_RNvXsev_NtCs4lawaffTVVK_9sqlparser3astNtB6_8DoUpdateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11755 = distinct !{!11755, !11754, !"_RNvXsev_NtCs4lawaffTVVK_9sqlparser3astNtB6_8DoUpdateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11756 = distinct !{!11756, !11754, !"_RNvXsev_NtCs4lawaffTVVK_9sqlparser3astNtB6_8DoUpdateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11757 = distinct !{null, null, null, null}
!11758 = distinct !{!11758, !"_RNvXsdH_NtCs4lawaffTVVK_9sqlparser3astNtB6_8OnInsertNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11759 = distinct !{!11759, !11758, !"_RNvXsdH_NtCs4lawaffTVVK_9sqlparser3astNtB6_8OnInsertNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11760 = distinct !{!11760, !11758, !"_RNvXsdH_NtCs4lawaffTVVK_9sqlparser3astNtB6_8OnInsertNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11761 = distinct !{null}
!11762 = distinct !{!11762, !"_RNvXsdR_NtCs4lawaffTVVK_9sqlparser3astNtB6_13InsertAliasesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11763 = distinct !{!11763, !11762, !"_RNvXsdR_NtCs4lawaffTVVK_9sqlparser3astNtB6_13InsertAliasesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11764 = distinct !{!11764, !11762, !"_RNvXsdR_NtCs4lawaffTVVK_9sqlparser3astNtB6_13InsertAliasesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11765 = distinct !{!11765, !"_RNvXseT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17InputFormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11766 = distinct !{!11766, !11765, !"_RNvXseT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17InputFormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11767 = distinct !{!11767, !11765, !"_RNvXseT_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17InputFormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11768 = distinct !{!11768, !"_RNvXs3T_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
end_hunk_3
