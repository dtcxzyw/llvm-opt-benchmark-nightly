Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_lock_free-b6bc20690295570e.iceoryx2_bb_lock_free.a6a2eb217f435beb-cgu.0?download=true
inline.NumInlined: 52
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17acquire_raw_index:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %.sroa.011.0, 16777215
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load atomic i64, ptr %0 monotonic, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.06.0.in
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i64 %.sroa.02.0, 16777216
  %i.m = add nuw nsw i32 %.sroa.011.0, 1
  %i.n = and i32 %i.k, 16777215
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 %i.o, 40
  %i.q = and i64 %i.l, 1099494850560
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = zext nneg i32 %i.m to i64
  %i.t = or i64 %i.r, %i.s
  %i.u = cmpxchg ptr %i.a, i64 %.sroa.02.0, i64 %i.t acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.u, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.u, 0
  br i1 %.sroa.18.0.in.i, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.c, align 8, !noundef !4
  %i.w = load atomic i64, ptr %0 monotonic, align 8
  %i.x = add i64 %i.w, %i.d
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.06.0.in
  %i.aa = add i32 %i.v, 1
  store i32 %i.aa, ptr %i.z, align 4
  fence acquire
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.4.0 = phi i64 [ 0, %bb.e ], [ 256, %bb.c ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.c ]
  %.sroa.61.0.insert.shift = shl nuw nsw i64 %.sroa.06.0.in, 32
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0, %.sroa.61.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17release_raw_index(ptr noundef nonnull align 8 %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  fence release
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = and i32 %1, 16777215
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 %i.f, 40                     ; 2 uses
  br i1 %2, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us
  %.sroa.02.0.us = phi i64 [ %.sroa.01.0.i.us, %.split.us ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.07.0.in.us = lshr i64 %.sroa.02.0.us, 40
  %.sroa.07.0.us = trunc nuw nsw i64 %.sroa.07.0.in.us to i32
  %i.h = load atomic i64, ptr %0 monotonic, align 8
  %i.i = add i64 %i.h, %i.c
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.d
  store i32 %.sroa.07.0.us, ptr %i.k, align 4
  %i.l = add i64 %.sroa.02.0.us, 16777215
  %i.m = and i64 %i.l, 16777215
  %i.n = add i64 %.sroa.02.0.us, 16777216
  %i.o = and i64 %i.n, 1099494850560
  %i.p = or disjoint i64 %i.o, %i.m
  %i.q = or disjoint i64 %i.p, %i.g
  %i.r = cmpxchg ptr %i.a, i64 %.sroa.02.0.us, i64 %i.q acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.us = extractvalue { i64, i1 } %i.r, 1
  %.sroa.01.0.i.us = extractvalue { i64, i1 } %i.r, 0
  br i1 %.sroa.18.0.in.i.us, label %.split13.us, label %.split.us

.split:                                           ; preds = %bb.a, %.split
  %.sroa.02.0 = phi i64 [ %.sroa.01.0.i, %.split ], [ %i.b, %bb.a ] ; 5 uses
  %.sroa.07.0.in = lshr i64 %.sroa.02.0, 40
  %.sroa.07.0 = trunc nuw nsw i64 %.sroa.07.0.in to i32
  %i.s = load atomic i64, ptr %0 monotonic, align 8
  %i.t = add i64 %i.s, %i.c
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.d
  store i32 %.sroa.07.0, ptr %i.v, align 4
  %.sroa.09.011 = and i64 %.sroa.02.0, 16777215
  %i.w = icmp ne i64 %.sroa.09.011, 1             ; 2 uses
  %i.x = add i64 %.sroa.02.0, 16777215
  %i.y = and i64 %i.x, 16777215
  %spec.select = select i1 %i.w, i64 %i.y, i64 16777215
  %i.z = add i64 %.sroa.02.0, 16777216
  %i.aa = and i64 %i.z, 1099494850560
  %i.ab = or disjoint i64 %i.aa, %spec.select
  %i.ac = or disjoint i64 %i.ab, %i.g
  %i.ad = cmpxchg ptr %i.a, i64 %.sroa.02.0, i64 %i.ac acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.ad, 1
  %.sroa.01.0.i = extractvalue { i64, i1 } %i.ad, 0
  br i1 %.sroa.18.0.in.i, label %.split13.us, label %.split

.split13.us:                                      ; preds = %.split, %.split.us
  %.us-phi = phi i1 [ true, %.split.us ], [ %i.w, %.split ]
  ret i1 %.us-phi
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define void @_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet7acquire(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.02.0.i = phi i64 [ %i.b, %bb.a ], [ %.sroa.01.0.i.i, %bb.d ] ; 4 uses
  %.sroa.011.0.in.i = trunc i64 %.sroa.02.0.i to i32
  %.sroa.011.0.i = and i32 %.sroa.011.0.in.i, 16777215 ; 2 uses
  %.sroa.06.0.in.i = lshr i64 %.sroa.02.0.i, 40   ; 3 uses
  %.sroa.06.0.i = trunc nuw nsw i64 %.sroa.06.0.in.i to i32 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !noundef !4
  %.not.i = icmp ugt i32 %i.e, %.sroa.06.0.i
  br i1 %.not.i, label %bb.c, label %_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17acquire_raw_index.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %.sroa.011.0.i, 16777215
  br i1 %i.f, label %_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17acquire_raw_index.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load atomic i64, ptr %1 monotonic, align 8
  %i.h = add i64 %i.g, %i.d
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.06.0.in.i
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = add i64 %.sroa.02.0.i, 16777216
  %i.m = add nuw nsw i32 %.sroa.011.0.i, 1
  %i.n = and i32 %i.k, 16777215
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 %i.o, 40
  %i.q = and i64 %i.l, 1099494850560
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = zext nneg i32 %i.m to i64
  %i.t = or i64 %i.r, %i.s
  %i.u = cmpxchg ptr %i.a, i64 %.sroa.02.0.i, i64 %i.t acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.u, 1
  %.sroa.01.0.i.i = extractvalue { i64, i1 } %i.u, 0
  br i1 %.sroa.18.0.in.i.i, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.d
  %i.v = load i32, ptr %i.c, align 8, !noundef !4
  %i.w = load atomic i64, ptr %1 monotonic, align 8
  %i.x = add i64 %i.w, %i.d
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.06.0.in.i
  %i.aa = add i32 %i.v, 1
  store i32 %i.aa, ptr %i.z, align 4
  fence acquire
  store ptr %1, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.06.0.i, ptr %i.ab, align 8
  br label %bb.e

_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17acquire_raw_index.exit: ; preds = %bb.c, %bb.b
  %.sroa.4.0.i = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4.0.i, ptr %i.ac, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17acquire_raw_index.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet9is_locked(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = and i64 %i.b, 16777215
  %i.d = icmp eq i64 %i.c, 16777215
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spmc19unrestricted_atomic48___internal_calculate_atomic_mgmt_and_payload_ptr(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.umax.i64(i64 %1, i64 8) ; 4 uses
  %i.b = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 8, 0) %i.a)
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_RNvMNtNtCs8Chj7Szqq0n_4core3ptr7mut_ptrOh12align_offsetCsej06kWhEKj7_21iceoryx2_bb_lock_free.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #12
  unreachable

_RNvMNtNtCs8Chj7Szqq0n_4core3ptr7mut_ptrOh12align_offsetCsej06kWhEKj7_21iceoryx2_bb_lock_free.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = add i64 %i.e, %i.a
  %i.g = sub i64 0, %i.a
  %i.h = and i64 %i.f, %i.g                       ; 2 uses
  %i.i = sub i64 %i.h, %i.d                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.a
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 3 uses
  store i64 1, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtCs8Chj7Szqq0n_4core3ptr7mut_ptrOh12align_offsetCsej06kWhEKj7_21iceoryx2_bb_lock_free.exit
  %i.m = add i64 %i.h, 16                         ; 3 uses
  %i.n = urem i64 %i.m, %1                        ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = add i64 %i.m, %1
  %i.q = sub i64 %i.p, %i.n
  %.sroa.0.0 = select i1 %i.o, i64 %i.m, i64 %i.q
  %i.r = inttoptr i64 %.sroa.0.0 to ptr
  %i.s = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.t = insertvalue { ptr, ptr } %i.s, ptr %i.r, 1
  ret { ptr, ptr } %i.t

bb.d:                                             ; preds = %_RNvMNtNtCs8Chj7Szqq0n_4core3ptr7mut_ptrOh12align_offsetCsej06kWhEKj7_21iceoryx2_bb_lock_free.exit
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #12
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB2_11UniqueIndexNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = ptrtoint ptr %0 to i64
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsC_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !7, !noundef !4
  %i.i = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @13, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.i
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define void @_RNvXs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_11UniqueIndexNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !4 ; 2 uses
  fence release
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = zext i32 %i.c to i64
  %i.h = and i32 %i.c, 16777215
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 %i.i, 40
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.a
  %.sroa.02.0.us.i = phi i64 [ %.sroa.01.0.i.us.i, %.split.us.i ], [ %i.e, %bb.a ] ; 4 uses
  %.sroa.07.0.in.us.i = lshr i64 %.sroa.02.0.us.i, 40
  %.sroa.07.0.us.i = trunc nuw nsw i64 %.sroa.07.0.in.us.i to i32
  %i.k = load atomic i64, ptr %i.a monotonic, align 8
  %i.l = add i64 %i.k, %i.f
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g
  store i32 %.sroa.07.0.us.i, ptr %i.n, align 4
  %i.o = add i64 %.sroa.02.0.us.i, 16777215
  %i.p = and i64 %i.o, 16777215
  %i.q = add i64 %.sroa.02.0.us.i, 16777216
  %i.r = and i64 %i.q, 1099494850560
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = or disjoint i64 %i.s, %i.j
  %i.u = cmpxchg ptr %i.d, i64 %.sroa.02.0.us.i, i64 %i.t acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.us.i = extractvalue { i64, i1 } %i.u, 1
  %.sroa.01.0.i.us.i = extractvalue { i64, i1 } %i.u, 0
  br i1 %.sroa.18.0.in.i.us.i, label %_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17release_raw_index.exit, label %.split.us.i

_RNvMs5_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc16unique_index_setNtB5_14UniqueIndexSet17release_raw_index.exit: ; preds = %.split.us.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic9AtomicU64ENtB6_5Debug3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @39, ptr %i.b, align 8, !captures !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 42, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.e = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @40, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomicbENtB6_5Debug3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB5_6AtomicbENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #11
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomicyENtB6_5Debug3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsX_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB5_6AtomicyENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #11
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic9AtomicU64NtB6_5Debug3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23
  store ptr %i.b, ptr %i.a, align 8, !noalias !23
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc22unique_index_set_enums24UniqueIndexCreationErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !24, !noundef !4
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 22, i64 38
  %.1.i = select i1 %i.b, ptr @38, ptr @37
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i) #11
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set15OwnerIdNewErrorNtB6_5Debug3fmtBC_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 17) #11
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set20RobustUniqueIndexSetNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !27
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 8, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 21, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc23robust_unique_index_set32RobustUniqueIndexSetReleaseErrorNtB6_5Debug3fmtBC_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 30) #11
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs8Chj7Szqq0n_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #11
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #11
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptrINtB5_18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic9AtomicU64ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsej06kWhEKj7_21iceoryx2_bb_lock_free(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 8, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) #11
end_hunk_0
