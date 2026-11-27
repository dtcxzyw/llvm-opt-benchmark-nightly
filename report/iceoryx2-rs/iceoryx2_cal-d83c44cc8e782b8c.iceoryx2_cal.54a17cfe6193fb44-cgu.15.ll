Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal-d83c44cc8e782b8c.iceoryx2_cal.54a17cfe6193fb44-cgu.15?download=true
inline.NumInlined: 63
inline.NumDeleted: 38
begin_hunk_0_@_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lockNtB2_18FileLockMonitoringNtNtB6_13named_concept16NamedConceptMgmt8list_cfg:.split
  store ptr %1, ptr %i.aj, align 8
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapINtNtB2C_6filter6FilterINtNtNtB2G_5slice4iter4IterNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directory14DirectoryEntryENCNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lockNtB5u_18FileLockMonitoringNtNtB5y_13named_concept16NamedConceptMgmt8list_cfg0ENCB5r_s_0EE9from_iterB5y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directory14DirectoryEntryENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #11
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directory14DirectoryEntryENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directoryNtB4_9DirectoryNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.l) #11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.ak) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #11
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.al = load <2 x i32>, ptr %i.k, align 8
  store <2 x i32> %i.al, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.o, ptr %i.g, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.n, ptr %i.f, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.am, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directoryNtB5_18DirectoryOpenErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @0, ptr noundef nonnull %i.g, ptr noundef nonnull @14, ptr noundef nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.n, ptr %i.i, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @0, ptr noundef nonnull %i.j, ptr noundef nonnull @13, ptr noundef nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ao, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs19_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13process_stateNtB6_24ProcessMonitorStateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i32, ptr %0, align 4, !range !19, !noundef !4 ; 2 uses
  %i.e = add nsw i32 %i.d, -5
  %i.f = icmp samesign ugt i32 %i.d, 4
  %narrow = select i1 %i.f, i32 %i.e, i32 7
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14) #11
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9) #11
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 45) #11
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 30) #11
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 13) #11
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.l, ptr %i.c, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.n, ptr %i.b, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 23, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lockNtB5_7CleanerNtB7_17MonitoringCleaner10relinquish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1128) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13process_stateNtB5_14ProcessCleaner7abandon(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0) #11
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator10deallocate(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = atomicrmw add ptr %i.a, i64 -1 monotonic, align 8 ; 0 uses
  %i.c = lshr i64 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.h)
  tail call void @_RNvMNtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocatorNtB2_13PoolAllocator17deallocate_bucket(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.g) #11
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator10new_uninit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %4, align 8, !range !20, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  tail call void @_RNvMNtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocatorNtB2_13PoolAllocator10new_uninit(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i64 noundef %i.a, i64 noundef %i.c, ptr noundef nonnull %2, i64 noundef %3) #11
  %i.d = ptrtoint ptr %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator11resize_hint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 6 uses
  %i.e = add i64 %i.d, -1
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noundef !4 ; 5 uses
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i8 %4, label %default.unreachable20 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f, %bb.d
  %.sroa.05.0 = phi i32 [ %i.o, %bb.d ], [ %i.s, %bb.f ], [ %i.j, %bb.b ], [ %i.j, %bb.a ], [ 0, %bb.e ]
  %i.m = icmp ult i64 %i.b, %3
  %i.n = icmp ult i64 %i.d, %2
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.g, label %bb.h

default.unreachable20:                            ; preds = %bb.g, %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = add i32 %i.j, 1
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %5 = add i32 %i.j, 1
  %6 = tail call i32 @llvm.usub.sat.i32(i32 %5, i32 1) ; 2 uses
  %i.p = icmp sgt i32 %6, -1
  br i1 %i.p, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.q = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %6, i1 false)
  %i.r = sub nuw nsw i32 32, %i.q
  %i.s = shl nuw i32 1, %i.r
  br label %bb.c

bb.g:                                             ; preds = %bb.c
  switch i8 %4, label %default.unreachable20 [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.l, %bb.i
  %.sroa.4.0 = phi i64 [ %.sroa.02.0, %bb.i ], [ %.sroa.08.1, %bb.l ], [ %i.b, %bb.g ], [ %i.b, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.x, %bb.i ], [ %i.ah, %bb.l ], [ %i.d, %bb.g ], [ %i.d, %bb.c ]
  %i.t = zext i32 %.sroa.05.0 to i64
  %i.u = mul i64 %.sroa.4.0, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.v, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0, ptr %i.w, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  %i.x = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.y = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.b) ; 2 uses
  %i.z = urem i64 %i.y, %i.x                      ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = sub nuw i64 %i.x, %i.z
  %i.ac = select i1 %i.aa, i64 0, i64 %i.ab
  %.sroa.02.0 = add i64 %i.ac, %i.y
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.ad = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.d)
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = sub nuw nsw i64 64, %i.af
  %i.ah = shl nuw i64 1, %i.ag                    ; 3 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.b)
  %7 = tail call i64 @llvm.usub.sat.i64(i64 %i.ai, i64 1) ; 2 uses
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %7, i1 false)
  %i.ak = sub nuw nsw i64 64, %i.aj
  %i.al = shl nuw i64 1, %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.08.0 = phi i64 [ %i.al, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.am = add i64 %i.ah, -1
  %i.an = and i64 %.sroa.08.0, %i.am              ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = sub i64 %i.ah, %i.an
  %i.aq = select i1 %i.ao, i64 0, i64 %i.ap
  %.sroa.08.1 = add i64 %i.aq, %.sroa.08.0
  br label %bb.h
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocatorNtB5_13PoolAllocatorNtB7_12ShmAllocator8allocate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @28, ptr %i.h, align 8, !captures !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 25, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = icmp ugt i64 %2, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14pool_allocatorNtB4_13PoolAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator8allocate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) #11
  %i.n = load ptr, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorNtB6_5Debug3fmtBC_, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.410.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.o, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.p, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @0, ptr noundef nonnull %i.g, ptr noundef nonnull @30, ptr noundef nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.q, align 1
  store i8 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = load ptr, ptr %i.i, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  %i.x = sub i64 %i.r, %i.w
  %i.y = shl i64 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8
  store i8 0, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shm_allocator14pool_allocator13PoolAllocatorNtB6_5Debug3fmtBC_, ptr %.sroa.422.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @0, ptr noundef nonnull %i.b, ptr noundef nonnull @29, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !range !8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ab, ptr %i.ac, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lockNtBT_18FileLockMonitoringNtNtBX_13named_concept16NamedConceptMgmt8list_cfgs_0INtB7_5FnMutTRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix9directory14DirectoryEntryEE8call_mutBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(384) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [264 x i8], align 8               ; 10 uses
  %i.l = alloca [8 x i8], align 8                 ; 10 uses
  %i.m = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4
  %.val = load ptr, ptr %i.m, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !30
  store ptr %.val, ptr %i.l, align 8, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(264) %i.n, i64 264, i1 false), !noalias !32
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 264 ; 2 uses
  %i.p = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String8as_bytesCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.o) #11, !noalias !33 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = call { i1, i8 } @_RNvYNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E12strip_prefixCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r) #11, !noalias !33 ; 2 uses
  %i.t = extractvalue { i1, i8 } %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.u = extractvalue { i1, i8 } %i.s, 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_RNCNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lockNtB4_18FileLockMonitoringNtNtB8_13named_concept16NamedConceptMgmt8list_cfgs_0B8_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !31
  store ptr %i.l, ptr %i.j, align 8, !noalias !31
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lock13ConfigurationNtB6_5Debug3fmtBC_, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31
  store ptr %i.o, ptr %i.i, align 8, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31
  store ptr %i.i, ptr %i.h, align 8, !noalias !31
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.w, align 8, !noalias !31
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsm_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx.i.i, align 8, !noalias !31
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @0, ptr noundef nonnull %i.j, ptr noundef nonnull @172, ptr noundef nonnull %i.h) #11, !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31
  %i.x = load ptr, ptr %i.l, align 8, !noalias !31, !nonnull !4, !align !5, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  store ptr %i.y, ptr %i.g, align 8, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31
  store ptr %i.l, ptr %i.f, align 8, !noalias !31
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lock13ConfigurationNtB6_5Debug3fmtBC_, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.z, align 8, !noalias !31
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.k, ptr %i.aa, align 8, !noalias !31
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXsm_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !31
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @173, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #13, !noalias !33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String8as_bytesCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %.val) #11, !noalias !33 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  %i.ae = call { i1, i8 } @_RNvYNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E12strip_suffixCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad) #11, !noalias !33 ; 2 uses
  %i.af = extractvalue { i1, i8 } %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.e, !prof !34

bb.e:                                             ; preds = %bb.d
  %i.ag = extractvalue { i1, i8 } %i.ae, 1
end_hunk_0
