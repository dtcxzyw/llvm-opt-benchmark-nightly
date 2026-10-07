Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.15?download=true
inline.NumInlined: 9256
inline.NumDeleted: 3478
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4514
  br label %bb.g, !dbg !4515

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 25, !dbg !4516
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !4516

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 32, 0) i64 @llvm.umax.i64(i64 range(i64 25, 0) %2, i64 32), !dbg !4517 ; 2 uses
  %i.d = tail call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i), !dbg !4518, !noalias !4508 ; 3 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !4519
  br i1 %i.e, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread, label %bb.e, !dbg !4520

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4514
  br label %bb.f, !dbg !4515

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.a, i8 0, i64 23, i1 false), !dbg !4521, !noalias !4509
  %i.f = trunc nuw nsw i64 %2 to i8, !dbg !4522
  %i.g = or disjoint i8 %i.f, -64, !dbg !4523
  %.23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23, !dbg !4523
  store i8 %i.g, ptr %.23..23..23..23..23..23..sroa_idx, align 1, !dbg !4523, !noalias !4509
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !4524, !noalias !4510
  %.0..0..0..sroa.02.0.copyload3 = load ptr, ptr %i.a, align 8, !dbg !4525, !noalias !4511
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4525
  %.8..8..8..sroa.6.0.copyload6 = load i64, ptr %.8..8..8..sroa_idx, align 8, !dbg !4525, !noalias !4511
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4525
  %.16..16..16..sroa.7.0.copyload9 = load i64, ptr %.16..16..16..sroa_idx, align 8, !dbg !4525, !noalias !4511
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit, !dbg !4526

bb.e:                                             ; preds = %bb.c
  %i.h = or i64 %.sroa.0.0.i.i.i.i, -2882303761517117440, !dbg !4527
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 25, 0) %2, i1 false), !dbg !4528, !noalias !4512
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit, !dbg !4529

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit: ; preds = %bb.d, %bb.e
  %.sroa.02.0 = phi ptr [ %i.d, %bb.e ], [ %.0..0..0..sroa.02.0.copyload3, %bb.d ], !dbg !4530
  %.sroa.6.0 = phi i64 [ %2, %bb.e ], [ %.8..8..8..sroa.6.0.copyload6, %bb.d ], !dbg !4530
  %.sroa.7.0 = phi i64 [ %i.h, %bb.e ], [ %.16..16..16..sroa.7.0.copyload9, %bb.d ], !dbg !4531 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4514
  %.sroa.7.23.extract.shift.mask = and i64 %.sroa.7.0, -72057594037927936, !dbg !4532
  %i.i = icmp eq i64 %.sroa.7.23.extract.shift.mask, -2738188573441261568, !dbg !4532
  br i1 %i.i, label %bb.f, label %bb.g, !dbg !4515

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !4533
  store i8 -38, ptr %i.j, align 1, !dbg !4533
  br label %bb.h, !dbg !4534

bb.g:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread19, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit
  %.sroa.7.027 = phi i64 [ -4611686018427387904, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread19 ], [ %.sroa.7.0, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit ]
  %.sroa.6.026 = phi i64 [ 0, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread19 ], [ %.sroa.6.0, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit ]
  %.sroa.02.025 = phi ptr [ null, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread19 ], [ %.sroa.02.0, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit ]
  store ptr %.sroa.02.025, ptr %0, align 8, !dbg !4535
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4535
  store i64 %.sroa.6.026, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4535
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4535
  store i64 %.sroa.7.027, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4535
  br label %bb.h, !dbg !4536

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void, !dbg !4537
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null, !dbg !4568
  br i1 %.not, label %bb.e, label %bb.b, !dbg !4569

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4562), !dbg !4570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4563), !dbg !4571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4572, !noalias !4564
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !4572, !noalias !4564
  %i.b = load i64, ptr %i.a, align 8, !dbg !4572, !range !3059, !noalias !4564, !noundef !3007
  %i.c = trunc nuw i64 %i.b to i1, !dbg !4573
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4574
  %i.e = load i64, ptr %i.d, align 8, !dbg !4574, !range !3060, !noalias !4564, !noundef !3007 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4574 ; 2 uses
  br i1 %i.c, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !4573, !prof !3061

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !dbg !4575, !noalias !4564
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #49, !dbg !4576, !noalias !4564
  unreachable, !dbg !4576

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !dbg !4577, !noalias !4564, !nonnull !3007, !noundef !3007 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e, !dbg !4578
  tail call void @llvm.assume(i1 %i.i), !dbg !4579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4580, !noalias !4564
  %.not.i.i.i = icmp eq i64 %2, 0, !dbg !4581
  br i1 %.not.i.i.i, label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit, label %bb.d, !dbg !4581

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !dbg !4582, !noalias !4565
  br label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit, !dbg !4583

_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.d
  store i64 %i.e, ptr %0, align 8, !dbg !4584, !alias.scope !4566, !noalias !4567
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4584
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4584, !alias.scope !4566, !noalias !4567
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4584
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4584, !alias.scope !4566, !noalias !4567
  br label %bb.f, !dbg !4570

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val), !dbg !4585
  br label %bb.f, !dbg !4586

bb.f:                                             ; preds = %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit, %bb.e
  ret void, !dbg !4587
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle14spawn_blockingNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1i_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1i_5ErrorEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4588 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !dbg !4640, !range !3059, !noundef !3007
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4640
  %i.g = load ptr, ptr %i.f, align 8, !dbg !4641  ; 2 uses
  br label %bb.b, !dbg !4642

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.h = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !4643, !noalias !4634 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0, !dbg !4644
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !4645

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw i64 %i.e to i1, !dbg !4641     ; 2 uses
  %.sroa.0.0.v = select i1 %i.i, i64 480, i64 712, !dbg !4641
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.0.v, !dbg !4641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4646, !noalias !4634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !4646, !noalias !4635
  %.sroa.01.0.v.i.i.i = select i1 %i.i, i64 504, i64 512, !dbg !4647
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.v.i.i.i, !dbg !4647 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !4648
  %i.k = load ptr, ptr %i.j, align 8, !dbg !4649, !noalias !4634, !noundef !3007 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null, !dbg !4649
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !dbg !4650

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !4649
  %i.m = load ptr, ptr %i.l, align 8, !dbg !4651, !noalias !4634, !nonnull !3007, !align !3097, !noundef !3007
  %i.n = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !dbg !4652, !noalias !4634
  %i.o = icmp slt i64 %i.n, 0, !dbg !4653
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !4653

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !4654
  unreachable, !dbg !4654

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.c ], [ %i.m, %bb.d ], !dbg !4655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4656, !noalias !4634
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef %i.k, ptr %.sroa.5.0.i.i.i, i64 noundef %i.h), !dbg !4656, !noalias !4634
  %i.p = load ptr, ptr %i.a, align 8, !dbg !4657, !noalias !4634, !nonnull !3007, !noundef !3007
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4658
  %i.r = load ptr, ptr %i.q, align 8, !dbg !4658, !noalias !4634, !nonnull !3007, !noundef !3007 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4659, !noalias !4634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4660, !noalias !4634
  %i.s = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noundef nonnull %i.p, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.g, !dbg !4661, !noalias !4636 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.r)
          to label %.noexc.i.i unwind label %bb.i, !dbg !4662, !noalias !4636

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.u, label %bb.h, label %common.resume.i, !dbg !4663

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.r)
          to label %common.resume.i unwind label %bb.i, !dbg !4664, !noalias !4636

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !4665, !noalias !4636
  unreachable, !dbg !4665

common.resume.i:                                  ; preds = %bb.o, %.noexc.i, %bb.h, %.noexc.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.t, %.noexc.i.i ], [ %i.t, %bb.h ], [ %i.z, %.noexc.i ], [ %i.z, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !4666

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.f
  %i.w = extractvalue { i64, ptr } %i.s, 0, !dbg !4667
  %i.x = extractvalue { i64, ptr } %i.s, 1, !dbg !4667 ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1, !dbg !4668
  %.not.i = icmp ne ptr %i.x, null
  %or.cond.not.i = select i1 %i.y, i1 %.not.i, i1 false, !dbg !4668, !prof !3110
  br i1 %or.cond.not.i, label %bb.j, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1v_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1v_5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !4668, !prof !3110

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4669, !noalias !4637
  store ptr %i.x, ptr %i.d, align 8, !dbg !4669, !noalias !4637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4670, !noalias !4637
  store ptr %i.d, ptr %i.c, align 8, !dbg !4670, !noalias !4637
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4670
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !4670, !noalias !4637
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #49
          to label %bb.l unwind label %bb.k, !dbg !4671, !noalias !4639

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val15.i = load ptr, ptr %i.d, align 8, !dbg !4672, !noalias !4637, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val15.i) #51
          to label %bb.n unwind label %bb.m, !dbg !4672, !noalias !4639

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !4673, !noalias !4639
  unreachable, !dbg !4673

bb.n:                                             ; preds = %bb.k
  %i.ab = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.r)
          to label %.noexc.i unwind label %bb.m, !dbg !4674, !noalias !4639

.noexc.i:                                         ; preds = %bb.n
  br i1 %i.ab, label %bb.o, label %common.resume.i, !dbg !4675

bb.o:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.r)
          to label %common.resume.i unwind label %bb.m, !dbg !4676, !noalias !4639

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1v_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1v_5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1B_9GetResult5bytes00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtB1B_5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i
  ret ptr %i.r, !dbg !4677
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime5spawnNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00EB1e_(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2776) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4678 {
bb.a:
  %i.a = alloca [2776 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2776) %i.a, ptr noundef nonnull align 8 dereferenceable(2776) %1, i64 2776, i1 false), !dbg !4695
  br label %bb.b, !dbg !4696

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !4697, !noalias !4694 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0, !dbg !4698
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00EB1j_.exit, !dbg !4699

_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00EB1j_.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4700
  %i.d = call noundef nonnull ptr @_RINvMs1_NtNtCskmDBXs7hs3c_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00EB1i_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2776) %i.a, i64 noundef %i.b), !dbg !4701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4702
  ret ptr %i.d, !dbg !4703
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime5spawnNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0EB1e_(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(5056) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4704 {
bb.a:
  %i.a = alloca [5056 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5056) %i.a, ptr noundef nonnull align 8 dereferenceable(5056) %1, i64 5056, i1 false), !dbg !4721
  br label %bb.b, !dbg !4722

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !4723, !noalias !4720 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0, !dbg !4724
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0EB1j_.exit, !dbg !4725

_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0EB1j_.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4726
  %i.d = call noundef nonnull ptr @_RINvMs1_NtNtCskmDBXs7hs3c_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0EB1i_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(5056) %i.a, i64 noundef %i.b), !dbg !4727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4728
  ret ptr %i.d, !dbg !4729
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime5spawnNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EB1e_(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2424) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4730 {
bb.a:
  %i.a = alloca [2424 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2424) %i.a, ptr noundef nonnull align 8 dereferenceable(2424) %1, i64 2424, i1 false), !dbg !4747
  br label %bb.b, !dbg !4748

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !4749, !noalias !4746 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0, !dbg !4750
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EB1j_.exit, !dbg !4751

_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB3_6Handle11spawn_namedNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EB1j_.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !4752
  %i.d = call noundef nonnull ptr @_RINvMs1_NtNtCskmDBXs7hs3c_5tokio7runtime9schedulerNtB6_6Handle5spawnNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0EB1i_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2424) %i.a, i64 noundef %i.b), !dbg !4753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4754
  ret ptr %i.d, !dbg !4755
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2t_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0EB3L_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(2576) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4756 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [2576 x i8], align 8              ; 9 uses
  %i.c = alloca [2576 x i8], align 8              ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [2576 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2576) %i.e, ptr noundef nonnull align 8 dereferenceable(2576) %2, i64 2576, i1 false), !dbg !4878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4879, !noalias !4846
  invoke void @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.ab, !dbg !4880, !noalias !4846

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !dbg !4881, !range !3059, !noalias !4846, !noundef !3007
  %i.g = trunc nuw i64 %i.f to i1, !dbg !4882
  br i1 %i.g, label %bb.c, label %bb.d, !dbg !4882

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !4883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4884, !noalias !4846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2576) %i.c, ptr noundef nonnull align 8 dereferenceable(2576) %2, i64 2576, i1 false), !dbg !4885
  invoke void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3y_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0E0INtNtB3y_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB6x_4sync3ArcNtNtB2f_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4Q_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2576) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.z unwind label %bb.o, !dbg !4886, !noalias !4847

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4887
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !4888 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4889, !noalias !4848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2576) %i.b, ptr noundef nonnull align 8 dereferenceable(2576) %2, i64 2576, i1 false), !dbg !4890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4891, !noalias !4848
  store ptr %i.j, ptr %i.a, align 8, !dbg !4891, !noalias !4848
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4891
  store ptr %i.i, ptr %i.k, align 8, !dbg !4891, !noalias !4848
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4891
  store ptr %i.b, ptr %i.l, align 8, !dbg !4891, !noalias !4848
  invoke void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3C_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0E0INtNtB3C_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB6B_4sync3ArcNtNtB2j_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4U_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.f unwind label %bb.e, !dbg !4892, !noalias !4850

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0EB37_(ptr noundef nonnull align 8 %i.b) #51
          to label %.body.i unwind label %bb.n, !dbg !4893, !noalias !4851

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4894, !noalias !4848
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2568, !dbg !4895
  %i.o = load i8, ptr %i.n, align 8, !dbg !4895, !range !3122, !noalias !4848, !noundef !3007
  switch i8 %i.o, label %bb.p [
    i8 0, label %bb.g
    i8 3, label %bb.m
  ], !dbg !4895

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !4852), !dbg !4895
  call void @llvm.experimental.noalias.scope.decl(metadata !4853), !dbg !4896
  call void @llvm.experimental.noalias.scope.decl(metadata !4854), !dbg !4897
  %i.p = load i64, ptr %i.b, align 8, !dbg !4898, !range !3123, !alias.scope !4855, !noalias !4848, !noundef !3007
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4898 ; 5 uses
  switch i64 %i.p, label %bb.h [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !dbg !4898

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4856), !dbg !4898
  call void @llvm.experimental.noalias.scope.decl(metadata !4857), !dbg !4899
  %i.r = load ptr, ptr %i.q, align 8, !dbg !4900, !alias.scope !4858, !noalias !4848, !nonnull !3007, !noundef !3007
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !4901, !noalias !4859
  %i.t = icmp eq i64 %i.s, 1, !dbg !4902
  br i1 %i.t, label %bb.i, label %bb.p, !dbg !4902

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !4903
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE9drop_slowCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #52
          to label %bb.p unwind label %bb.o, !dbg !4904, !noalias !4860

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.p unwind label %bb.o, !dbg !4905, !noalias !4860

bb.k:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4861), !dbg !4898
  call void @llvm.experimental.noalias.scope.decl(metadata !4862), !dbg !4906
  %i.u = load ptr, ptr %i.q, align 8, !dbg !4907, !alias.scope !4863, !noalias !4848, !nonnull !3007, !noundef !3007
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !4908, !noalias !4864
  %i.w = icmp eq i64 %i.v, 1, !dbg !4909
  br i1 %i.w, label %bb.l, label %bb.p, !dbg !4909

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !4910
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.q) #52, !dbg !4911, !noalias !4851
  br label %bb.p, !dbg !4911

bb.m:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_RINvMs3_NtCs8RKTHBS4OBx_12object_store6clientNtB6_13ClientOptions11with_configReECsfcROwRM8ZtH_11polars_plan:bb.a
bb.co:                                            ; preds = %_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfcROwRM8ZtH_11polars_plan.exit85
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i157 unwind label %bb.cp, !dbg !15128

bb.cp:                                            ; preds = %bb.co
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %.body158 unwind label %bb.cq, !dbg !15129

bb.cq:                                            ; preds = %bb.cp
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !15128
  unreachable, !dbg !15128

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i157: ; preds = %bb.co
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtB4_4time8DurationEEECsfcROwRM8ZtH_11polars_plan.exit161 unwind label %bb.cr, !dbg !15130

bb.cr:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i157
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body158, !dbg !15126

.body158:                                         ; preds = %bb.cp, %bb.cr
  %eh.lpad-body159 = phi { ptr, i32 } [ %i.gc, %bb.cr ], [ %i.ga, %bb.cp ]
  store i64 %i.db, ptr %i.fy, align 8, !dbg !15126
  %.sroa.5315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368, !dbg !15126
  store ptr %i.de, ptr %.sroa.5315.0..sroa_idx, align 8, !dbg !15126
  %.sroa.6318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376, !dbg !15126
  store i64 %4, ptr %.sroa.6318.0..sroa_idx, align 8, !dbg !15126
  br label %bb.at, !dbg !15126

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtB4_4time8DurationEEECsfcROwRM8ZtH_11polars_plan.exit161: ; preds = %_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfcROwRM8ZtH_11polars_plan.exit85, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i157
  store i64 %i.db, ptr %i.fy, align 8, !dbg !15126
  %.sroa.5315.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %1, i64 368, !dbg !15126
  store ptr %i.de, ptr %.sroa.5315.0..sroa_idx316, align 8, !dbg !15126
  %.sroa.6318.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %1, i64 376, !dbg !15126
  store i64 %4, ptr %.sroa.6318.0..sroa_idx319, align 8, !dbg !15126
  br label %bb.av, !dbg !15131

_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfcROwRM8ZtH_11polars_plan.exit92: ; preds = %bb.as, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfcROwRM8ZtH_11polars_plan.exit.i.i.i86
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 552, !dbg !15132 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14888), !dbg !15132
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 584, !dbg !15133 ; 3 uses
  %i.gf = load i8, ptr %i.ge, align 8, !dbg !15133, !range !3122, !alias.scope !14888, !noundef !3007 ; 2 uses
  %i.gg = icmp eq i8 %i.gf, 3, !dbg !15133
  br i1 %i.gg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.cs, !dbg !15133

bb.cs:                                            ; preds = %_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfcROwRM8ZtH_11polars_plan.exit92
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14889), !dbg !15133
  %.not.i.i = icmp eq i8 %i.gf, 2, !dbg !15134
  br i1 %.not.i.i, label %bb.cu, label %bb.ct, !dbg !15134

bb.ct:                                            ; preds = %bb.cs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14890), !dbg !15134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14891), !dbg !15135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14892), !dbg !15136
  %i.gh = load ptr, ptr %i.gd, align 8, !dbg !15137, !alias.scope !14893, !nonnull !3007, !align !3097, !noundef !3007
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32, !dbg !15137
  %i.gj = load ptr, ptr %i.gi, align 8, !dbg !15137, !noalias !14893, !nonnull !3007, !noundef !3007
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !15138
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 560, !dbg !15139
  %i.gm = load ptr, ptr %i.gl, align 8, !dbg !15139, !alias.scope !14893, !noundef !3007
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 568, !dbg !15140
  %i.go = load i64, ptr %i.gn, align 8, !dbg !15140, !alias.scope !14893, !noundef !3007
  invoke void %i.gj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef %i.gm, i64 noundef %i.go)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cx, !dbg !15137, !inline_history !3248

bb.cu:                                            ; preds = %bb.cs
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gd)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i163 unwind label %bb.cv, !dbg !15141

bb.cv:                                            ; preds = %bb.cu
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gd)
          to label %.body165 unwind label %bb.cw, !dbg !15142

bb.cw:                                            ; preds = %bb.cv
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !15141
  unreachable, !dbg !15141

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i163: ; preds = %bb.cu
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.gd)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.cx, !dbg !15143

bb.cx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i163, %bb.ct
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body165, !dbg !15132

.body165:                                         ; preds = %bb.cv, %bb.cx
  %eh.lpad-body166 = phi { ptr, i32 } [ %i.gr, %bb.cx ], [ %i.gp, %bb.cv ]
  store i64 %i.dj, ptr %i.gd, align 8, !dbg !15132
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 560, !dbg !15132
  store ptr %i.do, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !dbg !15132
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 568, !dbg !15132
  store i64 %4, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8, !dbg !15132
  store i8 2, ptr %i.ge, align 8, !dbg !15132
  br label %bb.at, !dbg !15132

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfcROwRM8ZtH_11polars_plan.exit92, %bb.ct, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan.exit.i.i163
  store i64 %i.dj, ptr %i.gd, align 8, !dbg !15132
  %.sroa.01.sroa.5.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %1, i64 560, !dbg !15132
  store ptr %i.do, ptr %.sroa.01.sroa.5.0..sroa_idx325, align 8, !dbg !15132
  %.sroa.01.sroa.6.0..sroa_idx327 = getelementptr inbounds nuw i8, ptr %1, i64 568, !dbg !15132
  store i64 %4, ptr %.sroa.01.sroa.6.0..sroa_idx327, align 8, !dbg !15132
  store i8 2, ptr %i.ge, align 8, !dbg !15132
  br label %bb.av, !dbg !15144

bb.cy:                                            ; preds = %bb.at
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !15145
  unreachable, !dbg !15145

bb.cz:                                            ; preds = %bb.at
  resume { ptr, i32 } %.pn, !dbg !15145
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1u_17SourcesToFileInfo14infer_or_parse0s4_00INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15146 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15182), !dbg !15187
  br label %bb.b, !dbg !15188

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !15189, !noalias !15183 ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0, !dbg !15190
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !15191

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %1, align 8, !dbg !15192, !range !3059, !alias.scope !15182, !noalias !15184, !noundef !3007
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !15192
  %.val7.i = load ptr, ptr %i.e, align 8, !dbg !15192, !alias.scope !15182, !noalias !15184
  %i.f = trunc nuw i64 %.val.i to i1, !dbg !15193
  %.sroa.01.0.v.i.i = select i1 %i.f, i64 504, i64 512, !dbg !15193
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %.sroa.01.0.v.i.i, !dbg !15193 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16, !dbg !15194
  %i.h = load ptr, ptr %i.g, align 8, !dbg !15195, !noalias !15183, !noundef !3007 ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null, !dbg !15195
  br i1 %.not.i.i, label %bb.f, label %bb.d, !dbg !15196

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24, !dbg !15195
  %i.j = load ptr, ptr %i.i, align 8, !dbg !15197, !noalias !15183, !nonnull !3007, !align !3097, !noundef !3007
  %i.k = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !dbg !15198, !noalias !15183
  %i.l = icmp slt i64 %i.k, 0, !dbg !15199
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !15199

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !15200
  unreachable, !dbg !15200

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i = phi ptr [ undef, %bb.c ], [ %i.j, %bb.d ], !dbg !15201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15202, !noalias !15183
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1x_17SourcesToFileInfo14infer_or_parse0s4_00ENtNtBR_8schedule16BlockingScheduleEB1F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %2, ptr nonnull %3, ptr noundef %i.h, ptr %.sroa.5.0.i.i, i64 noundef %i.d), !dbg !15202, !noalias !15183
  %i.m = load ptr, ptr %i.a, align 8, !dbg !15203, !noalias !15183, !nonnull !3007, !noundef !3007
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15204
  %i.o = load ptr, ptr %i.n, align 8, !dbg !15204, !noalias !15183, !nonnull !3007, !noundef !3007 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15205, !noalias !15183
  %i.p = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.m, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1A_17SourcesToFileInfo14infer_or_parse0s4_00INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1I_.exit unwind label %bb.g, !dbg !15206, !noalias !15185 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc.i unwind label %bb.i, !dbg !15207, !noalias !15185

.noexc.i:                                         ; preds = %bb.g
  br i1 %i.r, label %bb.h, label %common.resume, !dbg !15208

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %common.resume unwind label %bb.i, !dbg !15209, !noalias !15185

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !15210, !noalias !15185
  unreachable, !dbg !15210

common.resume:                                    ; preds = %bb.p, %.noexc, %.noexc.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.q, %.noexc.i ], [ %i.q, %bb.h ], [ %i.w, %.noexc ], [ %i.w, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !15211

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1A_17SourcesToFileInfo14infer_or_parse0s4_00INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1I_.exit: ; preds = %bb.f
  %i.t = extractvalue { i64, ptr } %i.p, 0, !dbg !15212
  %i.u = extractvalue { i64, ptr } %i.p, 1, !dbg !15212 ; 2 uses
  %i.v = trunc nuw i64 %i.t to i1, !dbg !15213
  %.not = icmp ne ptr %i.u, null
  %or.cond.not = select i1 %i.v, i1 %.not, i1 false, !dbg !15213, !prof !3110
  br i1 %or.cond.not, label %bb.k, label %bb.j, !dbg !15213, !prof !3110

bb.j:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1A_17SourcesToFileInfo14infer_or_parse0s4_00INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1I_.exit
  ret ptr %i.o, !dbg !15214

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1A_17SourcesToFileInfo14infer_or_parse0s4_00INtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB1I_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15215
  store ptr %i.u, ptr %i.c, align 8, !dbg !15215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15216
  store ptr %i.c, ptr %i.b, align 8, !dbg !15216
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15216
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !15216
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #49
          to label %bb.m unwind label %bb.l, !dbg !15217

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !dbg !15218, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val) #51
          to label %bb.o unwind label %bb.n, !dbg !15218

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !15219
  unreachable, !dbg !15219

bb.o:                                             ; preds = %bb.l
  %i.y = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.o)
          to label %.noexc unwind label %bb.n, !dbg !15220

.noexc:                                           ; preds = %bb.o
  br i1 %i.y, label %bb.p, label %common.resume, !dbg !15221

bb.p:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.o)
          to label %common.resume unwind label %bb.n, !dbg !15222
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef i64 @_RINvMs7_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB6_6AtomicINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE4swapINtB6_6SharedBW_EECsfcROwRM8ZtH_11polars_plan(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i8 noundef range(i8 0, 5) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 !dbg !15223 {
bb.a:
  switch i8 %2, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ], !dbg !15229

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = atomicrmw xchg ptr %0, i64 %1 monotonic, align 8, !dbg !15230
  br label %bb.g, !dbg !15230

bb.c:                                             ; preds = %bb.a
  %i.b = atomicrmw xchg ptr %0, i64 %1 release, align 8, !dbg !15231
  br label %bb.g, !dbg !15231

bb.d:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr %0, i64 %1 acquire, align 8, !dbg !15232
  br label %bb.g, !dbg !15232

bb.e:                                             ; preds = %bb.a
  %i.d = atomicrmw xchg ptr %0, i64 %1 acq_rel, align 8, !dbg !15233
  br label %bb.g, !dbg !15233

bb.f:                                             ; preds = %bb.a
  %i.e = atomicrmw xchg ptr %0, i64 %1 seq_cst, align 8, !dbg !15234
  br label %bb.g, !dbg !15234

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], !dbg !15235
  ret i64 %.sroa.0.0, !dbg !15236
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs7_NtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_threadNtB6_9CoreGuard8block_onINtNtCscgRAwXFJnXP_4core3pin3PinQIB1t_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtB1x_4iter8adapters3map3MapINtNtNtB1x_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0EEEEB56_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef align 8 dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !15237 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !15316
  %i.d = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtCskmDBXs7hs3c_5tokio7runtime9schedulerNtB5_7Context21expect_current_thread(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.c unwind label %bb.b, !dbg !15317, !noalias !15308 ; 3 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15318 ; 11 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !15319, !noalias !15308, !noundef !3007
  %i.h = icmp eq i64 %i.g, 0, !dbg !15320
  br i1 %i.h, label %bb.d, label %bb.e, !dbg !15320, !prof !3151

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.f, align 8, !dbg !15321, !noalias !15308
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15322 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !15323, !noalias !15308, !align !3097, !noundef !3007 ; 2 uses
  store ptr null, ptr %i.i, align 8, !dbg !15324, !noalias !15308
  %.not.i = icmp eq ptr %i.j, null, !dbg !15325
  br i1 %.not.i, label %bb.f, label %bb.k, !dbg !15326, !prof !3061

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #49
          to label %bb.h unwind label %bb.b, !dbg !15327, !noalias !15308

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #49
          to label %bb.h unwind label %bb.g, !dbg !15328, !noalias !15308

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.f, align 8, !dbg !15329, !noalias !15308, !noundef !3007
  %i.m = add i64 %i.l, 1, !dbg !15330
  store i64 %i.m, ptr %i.f, align 8, !dbg !15331, !noalias !15308
  br label %bb.u, !dbg !15332

bb.h:                                             ; preds = %bb.o, %bb.f, %bb.e
  unreachable

bb.i:                                             ; preds = %bb.u, %bb.t, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread4CoreEEECsfcROwRM8ZtH_11polars_plan.exit16.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !15333, !noalias !15309
  unreachable, !dbg !15333

bb.j:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.k:                                             ; preds = %bb.d
  store i64 0, ptr %i.f, align 8, !dbg !15334, !noalias !15308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15335, !noalias !15310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15336, !noalias !15310
  store ptr %1, ptr %i.a, align 8, !dbg !15336, !noalias !15310
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15336
  store ptr %2, ptr %i.p, align 8, !dbg !15336, !noalias !15310
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15336
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !15336, !noalias !15310
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !15336
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !15336, !noalias !15310
  invoke void @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE4withNCINvBW_13set_schedulerTINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCscgRAwXFJnXP_4core6option6OptionINtNtB3v_6result6ResultINtNtB2h_3vec3VecINtNtB2h_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEENCINvMs7_B2N_NtB2N_9CoreGuard5enterNCINvB6R_8block_onINtNtB3v_3pin3PinQIB7E_IB2d_NCINvNtB52_5utils26init_entries_from_uri_listINtNtNtNtB3v_4iter8adapters3map3MapINtNtNtB3v_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0EEEE0B3q_E0E0B2b_EBa0_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @17, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.l unwind label %bb.j, !dbg !15337, !noalias !15309

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15338, !noalias !15310
  %i.q = load ptr, ptr %i.b, align 8, !dbg !15339, !noalias !15310, !nonnull !3007, !align !3097, !noundef !3007 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15340, !noalias !15310
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !15340, !noalias !15310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15341, !noalias !15310
  %i.s = load i64, ptr %i.f, align 8, !dbg !15342, !noalias !15309, !noundef !3007
  %i.t = icmp eq i64 %i.s, 0, !dbg !15343
  br i1 %i.t, label %bb.m, label %bb.o, !dbg !15343, !prof !3151

bb.m:                                             ; preds = %bb.l
  store i64 -1, ptr %i.f, align 8, !dbg !15344, !noalias !15309
  %.val10.i = load ptr, ptr %i.i, align 8, !dbg !15345, !noalias !15309, !align !3097, !noundef !3007 ; 2 uses
  %i.u = icmp eq ptr %.val10.i, null, !dbg !15346
  br i1 %i.u, label %bb.q, label %bb.n, !dbg !15346

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread4CoreEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val10.i)
          to label %._crit_edge.i unwind label %bb.p, !dbg !15346, !noalias !15309

._crit_edge.i:                                    ; preds = %bb.n
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !15347, !noalias !15309
  %i.v = add i64 %.pre.i, 1, !dbg !15348
  br label %bb.q, !dbg !15346

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvNtCscgRAwXFJnXP_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #49
          to label %bb.h unwind label %bb.t, !dbg !15349, !noalias !15309

bb.p:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.i, align 8, !dbg !15345, !noalias !15309
  %i.x = load i64, ptr %i.f, align 8, !dbg !15350, !noalias !15309, !noundef !3007
  %i.y = add i64 %i.x, 1, !dbg !15351
  store i64 %i.y, ptr %i.f, align 8, !dbg !15352, !noalias !15309
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread4CoreEEECsfcROwRM8ZtH_11polars_plan.exit16.i, !dbg !15353

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread4CoreEEECsfcROwRM8ZtH_11polars_plan.exit16.i: ; preds = %bb.t, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.t ], [ %i.w, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1t_4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io10file_cache5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(72) %i.c) #51
          to label %bb.u unwind label %bb.i, !dbg !15354, !noalias !15309

end_hunk_1
begin_hunk_2_@_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB2c_17SourcesToFileInfo14infer_or_parse0s4_00EENtNtBX_8schedule16BlockingScheduleEB2k_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0EENtNtBX_8schedule16BlockingScheduleEB2h_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58222 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0EENtNtB19_8schedule16BlockingScheduleE8shutdownB2t_(ptr noundef nonnull %0), !dbg !58224
  ret void, !dbg !58225
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB2d_9GetResult5bytes00EENtNtBX_8schedule16BlockingScheduleECsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58226 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB2p_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE8shutdownCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0), !dbg !58228
  ret void, !dbg !58229
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvMNtNtB8_2fs12open_optionsNtB1C_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00ENtNtBX_8schedule16BlockingScheduleECsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58230 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvMNtNtBb_2fs12open_optionsNtB1O_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00ENtNtB19_8schedule16BlockingScheduleE8shutdownCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0), !dbg !58232
  ret void, !dbg !58233
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtB8_2fs12canonicalize12canonicalizeReE00ENtNtBX_8schedule16BlockingScheduleECsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58234 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs12canonicalize12canonicalizeReE00ENtNtB19_8schedule16BlockingScheduleE8shutdownCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0), !dbg !58236
  ret void, !dbg !58237
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2B_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB58_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB58_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB89_4sync3ArcNtNtB3P_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBX_8schedule16BlockingScheduleEB6q_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58238 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2N_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB5k_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB5k_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB8l_4sync3ArcNtNtB41_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtB19_8schedule16BlockingScheduleE8shutdownB6C_(ptr noundef nonnull %0), !dbg !58240
  ret void, !dbg !58241
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2B_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBX_8schedule16BlockingScheduleEB3S_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58242 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2N_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtB19_8schedule16BlockingScheduleE8shutdownB44_(ptr noundef nonnull %0), !dbg !58244
  ret void, !dbg !58245
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2B_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBX_8schedule16BlockingScheduleEB3S_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58246 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2N_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtB19_8schedule16BlockingScheduleE8shutdownB44_(ptr noundef nonnull %0), !dbg !58248
  ret void, !dbg !58249
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1D_17SourcesToFileInfo14infer_or_parse0s4_00ENtNtBX_8schedule16BlockingScheduleEB1L_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58250 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scansNtB1P_17SourcesToFileInfo14infer_or_parse0s4_00ENtNtB19_8schedule16BlockingScheduleE8shutdownB1X_(ptr noundef nonnull %0), !dbg !58252
  ret void, !dbg !58253
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0ENtNtBX_8schedule16BlockingScheduleEB1I_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58254 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0ENtNtB19_8schedule16BlockingScheduleE8shutdownB1U_(ptr noundef nonnull %0), !dbg !58256
  ret void, !dbg !58257
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1E_9GetResult5bytes00ENtNtBX_8schedule16BlockingScheduleECsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58258 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8shutdownCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull %0), !dbg !58260
  ret void, !dbg !58261
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58262 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1i_(ptr noundef nonnull %0), !dbg !58264
  ret void, !dbg !58265
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB16_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58266 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info00INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1i_(ptr noundef nonnull %0), !dbg !58268
  ret void, !dbg !58269
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58270 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1i_(ptr noundef nonnull %0), !dbg !58272
  ret void, !dbg !58273
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB16_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58274 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s0_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1i_(ptr noundef nonnull %0), !dbg !58276
  ret void, !dbg !58277
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEEB16_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58278 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownB1i_(ptr noundef nonnull %0), !dbg !58280
  ret void, !dbg !58281
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime4task3raw8shutdownNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEEB16_(ptr noundef nonnull %0) unnamed_addr #1 !dbg !58282 {
bb.a:
  tail call void @_RNvMs0_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans16ndjson_file_info0s_0INtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownB1i_(ptr noundef nonnull %0), !dbg !58284
  ret void, !dbg !58285
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvMNtNtB8_2fs12open_optionsNtB1c_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB27_2fs4FileNtNtNtB27_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !58286 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !58377
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !58378 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !58378 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !58378 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !58378
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !58378 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !58378
  br label %bb.c, !dbg !58379

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !58380, !noalias !58362 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0, !dbg !58381
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !58382

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1, !dbg !58383    ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 480, i64 712, !dbg !58383
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v, !dbg !58383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !58384, !noalias !58362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !dbg !58384
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 504, i64 512, !dbg !58385
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !58385 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !58386
  %i.m = load ptr, ptr %i.l, align 8, !dbg !58387, !noalias !58362, !noundef !3007 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !58387
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !58388

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !58387
  %i.o = load ptr, ptr %i.n, align 8, !dbg !58389, !noalias !58362, !nonnull !3007, !align !3097, !noundef !3007
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !58390, !noalias !58362
  %i.q = icmp slt i64 %i.p, 0, !dbg !58391
  br i1 %i.q, label %bb.f, label %bb.g, !dbg !58391

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !58392
  unreachable, !dbg !58392

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ], !dbg !58393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !58394, !noalias !58362
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvMNtNtB6_2fs12open_optionsNtB1w_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00ENtNtBR_8schedule16BlockingScheduleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q, !dbg !58394

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !dbg !58395, !noalias !58362, !nonnull !3007, !noundef !3007
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !58396
  %i.t = load ptr, ptr %i.s, align 8, !dbg !58396, !noalias !58362, !nonnull !3007, !noundef !3007 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58397, !noalias !58362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !58398, !noalias !58362
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.h, !dbg !58399, !noalias !58364 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !dbg !58400, !noalias !58364

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body, !dbg !58401

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !dbg !58402, !noalias !58364

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !58403, !noalias !58364
  unreachable, !dbg !58403

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !58404
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !58404 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !58405
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !58405, !prof !3110
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58405, !prof !3110

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !58406, !noalias !58365
  store ptr %i.z, ptr %i.d, align 8, !dbg !58406, !noalias !58365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !58407, !noalias !58365
  store ptr %i.d, ptr %i.c, align 8, !dbg !58407, !noalias !58365
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !58407
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !58407, !noalias !58365
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #49
          to label %bb.m unwind label %bb.l, !dbg !58408, !noalias !58367

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !58409, !noalias !58365, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val.i) #51
          to label %bb.o unwind label %bb.n, !dbg !58409, !noalias !58367

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !58410, !noalias !58367
  unreachable, !dbg !58410

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !dbg !58411, !noalias !58367

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body, !dbg !58412

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !dbg !58413, !noalias !58367

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !58414

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16) %i.e) #51
          to label %.thread unwind label %bb.v, !dbg !58414

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvMNtNtBc_2fs12open_optionsNtB1z_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2u_2fs4FileNtNtNtB2u_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !58368), !dbg !58414
  call void @llvm.experimental.noalias.scope.decl(metadata !58369), !dbg !58415
  %i.af = load i64, ptr %i.e, align 8, !dbg !58416, !range !3059, !alias.scope !58370, !noundef !3007
  %i.ag = icmp eq i64 %i.af, 0, !dbg !58416
  br i1 %i.ag, label %bb.r, label %bb.t, !dbg !58416

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !58371), !dbg !58416
  call void @llvm.experimental.noalias.scope.decl(metadata !58372), !dbg !58417
  %i.ah = load ptr, ptr %i.i, align 8, !dbg !58418, !alias.scope !58373, !nonnull !3007, !noundef !3007
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !58419, !noalias !58373
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !58420
  br i1 %i.aj, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58420

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !58421
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #52, !dbg !58422
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58422

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvMNtNtBc_2fs12open_optionsNtB1t_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtB2o_2fs4FileNtNtNtB2o_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !58374), !dbg !58416
  call void @llvm.experimental.noalias.scope.decl(metadata !58375), !dbg !58423
  %i.ak = load ptr, ptr %i.i, align 8, !dbg !58424, !alias.scope !58376, !nonnull !3007, !noundef !3007
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !dbg !58425, !noalias !58376
  %i.am = icmp eq i64 %i.al, 1, !dbg !58426
  br i1 %i.am, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58426

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !58427
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #52, !dbg !58428
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58428

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !58414
  ret ptr %i.t, !dbg !58429

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !58430
  unreachable, !dbg !58430

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8, !dbg !58430

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCINvMNtNtCskmDBXs7hs3c_5tokio2fs12open_optionsNtBO_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(40) %0) #51
          to label %.thread unwind label %bb.v, !dbg !58414
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2y_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !58431 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !58522
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w, !dbg !58523 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0, !dbg !58523 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1, !dbg !58523 ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !58523
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !58523 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !dbg !58523
  br label %bb.c, !dbg !58524

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !58525, !noalias !58507 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0, !dbg !58526
  br i1 %.not.i.i, label %bb.c, label %bb.d, !dbg !58527

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1, !dbg !58528    ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 480, i64 712, !dbg !58528
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v, !dbg !58528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !58529, !noalias !58507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !58529
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 504, i64 512, !dbg !58530
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i, !dbg !58530 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16, !dbg !58531
  %i.m = load ptr, ptr %i.l, align 8, !dbg !58532, !noalias !58507, !noundef !3007 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null, !dbg !58532
  br i1 %.not.i.i.i, label %bb.g, label %bb.e, !dbg !58533

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24, !dbg !58532
  %i.o = load ptr, ptr %i.n, align 8, !dbg !58534, !noalias !58507, !nonnull !3007, !align !3097, !noundef !3007
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !58535, !noalias !58507
  %i.q = icmp slt i64 %i.p, 0, !dbg !58536
  br i1 %i.q, label %bb.f, label %bb.g, !dbg !58536

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !58537
  unreachable, !dbg !58537

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ], !dbg !58538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !58539, !noalias !58507
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtB6_2fs12canonicalize12canonicalizeReE00ENtNtBR_8schedule16BlockingScheduleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q, !dbg !58539

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !dbg !58540, !noalias !58507, !nonnull !3007, !noundef !3007
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !58541
  %i.t = load ptr, ptr %i.s, align 8, !dbg !58541, !noalias !58507, !nonnull !3007, !noundef !3007 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58542, !noalias !58507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !58543, !noalias !58507
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.h, !dbg !58544, !noalias !58509 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !dbg !58545, !noalias !58509

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body, !dbg !58546

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !dbg !58547, !noalias !58509

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !58548, !noalias !58509
  unreachable, !dbg !58548

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0, !dbg !58549
  %i.z = extractvalue { i64, ptr } %i.u, 1, !dbg !58549 ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1, !dbg !58550
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !dbg !58550, !prof !3110
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58550, !prof !3110

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !58551, !noalias !58510
  store ptr %i.z, ptr %i.d, align 8, !dbg !58551, !noalias !58510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !58552, !noalias !58510
  store ptr %i.d, ptr %i.c, align 8, !dbg !58552, !noalias !58510
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !58552
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !dbg !58552, !noalias !58510
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #49
          to label %bb.m unwind label %bb.l, !dbg !58553, !noalias !58512

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !58554, !noalias !58510, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val.i) #51
          to label %bb.o unwind label %bb.n, !dbg !58554, !noalias !58512

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !58555, !noalias !58512
  unreachable, !dbg !58555

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !dbg !58556, !noalias !58512

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body, !dbg !58557

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !dbg !58558, !noalias !58512

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !58559

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16) %i.e) #51
          to label %.thread unwind label %bb.v, !dbg !58559

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2V_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !58513), !dbg !58559
  call void @llvm.experimental.noalias.scope.decl(metadata !58514), !dbg !58560
  %i.af = load i64, ptr %i.e, align 8, !dbg !58561, !range !3059, !alias.scope !58515, !noundef !3007
  %i.ag = icmp eq i64 %i.af, 0, !dbg !58561
  br i1 %i.ag, label %bb.r, label %bb.t, !dbg !58561

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !58516), !dbg !58561
  call void @llvm.experimental.noalias.scope.decl(metadata !58517), !dbg !58562
  %i.ah = load ptr, ptr %i.i, align 8, !dbg !58563, !alias.scope !58518, !nonnull !3007, !noundef !3007
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !58564, !noalias !58518
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !58565
  br i1 %i.aj, label %bb.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58565

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !58566
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #52, !dbg !58567
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58567

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtBc_2fs12canonicalize12canonicalizeReE00INtNtCscgRAwXFJnXP_4core6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtNtB2P_2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !58519), !dbg !58561
  call void @llvm.experimental.noalias.scope.decl(metadata !58520), !dbg !58568
  %i.ak = load ptr, ptr %i.i, align 8, !dbg !58569, !alias.scope !58521, !nonnull !3007, !noundef !3007
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !dbg !58570, !noalias !58521
  %i.am = icmp eq i64 %i.al, 1, !dbg !58571
  br i1 %i.am, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58571

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !58572
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #52, !dbg !58573
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58573

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !58559
  ret ptr %i.t, !dbg !58574

bb.v:                                             ; preds = %bb.w, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !58575
  unreachable, !dbg !58575

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8, !dbg !58575

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCINvNtNtCskmDBXs7hs3c_5tokio2fs12canonicalize12canonicalizeReE00ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %0) #51
          to label %.thread unwind label %bb.v, !dbg !58559
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file18read_file_metadataINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !58576 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [10 x i8], align 1                ; 4 uses
  %i.f = alloca [10 x i8], align 1                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !58684
  %.val = load i64, ptr %i.j, align 8, !dbg !58684, !noundef !3007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !58663
  %i.k = tail call { i64, ptr } @_RNvXs2_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtB7_4Seek4seekCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 1, i64 noundef -10), !dbg !58685, !noalias !58657 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0, !dbg !58685
  %i.m = extractvalue { i64, ptr } %i.k, 1, !dbg !58685 ; 2 uses
  %i.n = trunc nuw i64 %i.l to i1, !dbg !58686
  br i1 %i.n, label %bb.b, label %bb.c, !dbg !58686

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull %i.m), !dbg !58687, !noalias !3007
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file15read_footer_lenINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58688

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !58689, !noalias !58660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.f, i8 0, i64 10, i1 false), !dbg !58690, !noalias !58660
  %i.o = call noundef ptr @_RNvXs3_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtB7_4Read10read_exactCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull %i.f, i64 noundef 10), !dbg !58691, !noalias !58657 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null, !dbg !58692
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !58693

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull %i.o), !dbg !58694, !noalias !3007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !58695, !noalias !58660
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file15read_footer_lenINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58696

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.m to i64, !dbg !58685
  %i.q = add i64 %i.p, 10, !dbg !58697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !58698, !noalias !58660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 1 dereferenceable(10) %i.f, i64 10, i1 false), !dbg !58698, !noalias !58660
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file17decode_footer_len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(10) %i.e, i64 noundef %i.q), !dbg !58699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !58700, !noalias !58660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !58695, !noalias !58660
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file15read_footer_lenINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58701

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file15read_footer_lenINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.r = load i64, ptr %i.i, align 8, !dbg !58702, !range !3393, !noundef !3007 ; 2 uses
  %.not = icmp eq i64 %i.r, 18, !dbg !58702
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !58703
  %i.t = load i64, ptr %i.s, align 8, !dbg !58703 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !58703
  %i.v = load i64, ptr %i.u, align 8, !dbg !58703 ; 5 uses
  br i1 %.not, label %bb.g, label %bb.f, !dbg !58704

bb.f:                                             ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file15read_footer_lenINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !58705
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !58706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !58705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !58707
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58706
  store i64 %i.r, ptr %i.w, align 8, !dbg !58706
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !58706
  store i64 %i.t, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !58706
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !58706
  store i64 %i.v, ptr %.sroa.330.0..sroa_idx, align 8, !dbg !58706
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !58706
  br label %bb.ab, !dbg !58708

bb.g:                                             ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file15read_footer_lenINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !58707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !58709
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614), !dbg !58674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !58674
  %i.x = sub i64 -10, %i.v, !dbg !58710
  %i.y = call { i64, ptr } @_RNvXs2_NtNtCsh8eZTKRCwoO_3std2io6cursorINtB5_6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtB7_4Seek4seekCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 1, i64 noundef %i.x), !dbg !58711, !noalias !58667 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0, !dbg !58711
  %i.aa = trunc nuw i64 %i.z to i1, !dbg !58712
  br i1 %i.aa, label %bb.h, label %bb.i, !dbg !58712

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { i64, ptr } %i.y, 1, !dbg !58711
  call void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %i.ab), !dbg !58713
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file11read_footerINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !58714

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !58715, !noalias !58670
  store i64 0, ptr %i.d, align 8, !dbg !58716, !noalias !58670
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !58716
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8, !dbg !58716, !noalias !58670
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !58716
  store i64 0, ptr %i.ad, align 8, !dbg !58716, !noalias !58670
  %i.ae = invoke { i64, i64 } @_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef 0, i64 noundef %i.v, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j, !dbg !58717, !noalias !58667 ; 2 uses

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB1t_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB40_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB40_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB71_4sync3ArcNtNtB2H_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB5i_:bb.a
bb.b:                                             ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.p, %.noexc ], [ %i.m, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 70, !dbg !70832
  %i.s = load i8, ptr %i.r, align 1, !dbg !70833, !range !3157, !noalias !70791, !noundef !3007
  %.not6.i.i.i = icmp eq i8 %i.s, 2, !dbg !70834
  br i1 %.not6.i.i.i, label %bb.at, label %bb.c, !dbg !70835

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 40, !dbg !70836
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !dbg !70837, !noalias !70791, !noundef !3007 ; 6 uses
  %i.u = icmp eq ptr %.val.i.i.i, null, !dbg !70838
  br i1 %i.u, label %bb.d, label %bb.e, !dbg !70838

bb.d:                                             ; preds = %bb.c
  %i.v = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc9 unwind label %.thread38, !dbg !70839

.noexc9:                                          ; preds = %bb.d
  switch i8 %i.v, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0B3T_.exit
    i8 0, label %bb.au
  ], !dbg !70840

bb.e:                                             ; preds = %bb.c
  %i.w = load i64, ptr %.val.i.i.i, align 8, !dbg !70841, !range !3059, !noalias !70792, !noundef !3007
  %i.x = trunc nuw i64 %i.w to i1, !dbg !70842
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !70842

bb.f:                                             ; preds = %bb.e
  %i.y = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc10 unwind label %.thread38, !dbg !70843

.noexc10:                                         ; preds = %bb.f
  switch i8 %i.y, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0B3T_.exit
    i8 0, label %bb.au
  ], !dbg !70844

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8, !dbg !70845 ; 4 uses
  %i.aa = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc11 unwind label %.thread38, !dbg !70846

.noexc11:                                         ; preds = %bb.g
  %i.ab = icmp eq i8 %i.aa, 2, !dbg !70847
  br i1 %i.ab, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0B3T_.exit, label %bb.h, !dbg !70848

bb.h:                                             ; preds = %.noexc11
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32, !dbg !70849
  invoke void @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler5deferNtB2_5Defer4wake(ptr noundef nonnull align 8 %i.ac)
          to label %.noexc12 unwind label %.thread38, !dbg !70850

.noexc12:                                         ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16, !dbg !70851 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !70852, !noalias !70793, !noundef !3007
  %i.af = icmp eq i64 %i.ae, 0, !dbg !70853
  br i1 %i.af, label %bb.i, label %bb.j, !dbg !70853, !prof !3151

bb.i:                                             ; preds = %.noexc12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24, !dbg !70854
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !70855, !noalias !70793, !align !3097, !noundef !3007 ; 8 uses
  %.not13.i.i.i = icmp eq ptr %i.ah, null, !dbg !70856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !dbg !70857, !noalias !70792
  br i1 %.not13.i.i.i, label %bb.aw, label %bb.k, !dbg !70858

bb.j:                                             ; preds = %.noexc12
  invoke void @_RNvNtCscgRAwXFJnXP_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #53
          to label %.noexc13 unwind label %.thread38, !dbg !70859

.noexc13:                                         ; preds = %bb.j
  unreachable, !dbg !70859

bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !70860, !noalias !70793, !noundef !3007 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !dbg !70861, !noalias !70793
  %.not14.i.i.i = icmp eq ptr %i.ai, null, !dbg !70862
  br i1 %.not14.i.i.i, label %bb.m, label %bb.l, !dbg !70863

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !70864
  %i.ak = load ptr, ptr %i.z, align 8, !dbg !70865, !noalias !70793, !nonnull !3007, !noundef !3007
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !70866
  %i.am = load ptr, ptr %i.al, align 8, !dbg !70866, !noalias !70793, !nonnull !3007, !noundef !3007
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !70867
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !70868
  invoke void @_RINvMs0_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB8_6handle6HandleEE21push_back_or_overflowB1U_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.ai, ptr noundef nonnull align 8 %i.an, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ao)
          to label %bb.m unwind label %bb.ar, !dbg !70869, !noalias !70793

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !70870
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !70870, !noalias !70793, !noundef !3007
  %.not15.i.i.i = icmp eq ptr %i.aq, null, !dbg !70870
  br i1 %.not15.i.i.i, label %bb.o, label %bb.n, !dbg !70871, !prof !3061

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.z, align 8, !dbg !70872, !noalias !70793, !nonnull !3007, !noundef !3007
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !70873
  %i.at = invoke noundef align 8 ptr @_RNvMs0_NtNtCskmDBXs7hs3c_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtNtB9_7runtime9scheduler12multi_thread6worker4CoreE4swapCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.as, ptr noalias noundef nonnull align 8 %i.ah)
          to label %.noexc14 unwind label %.thread38, !dbg !70874 ; 2 uses

.noexc14:                                         ; preds = %bb.n
  %i.au = icmp eq ptr %i.at, null, !dbg !70875
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.p, !dbg !70875

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #49
          to label %bb.aq unwind label %bb.ar, !dbg !70876, !noalias !70793

bb.p:                                             ; preds = %.noexc14
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.at)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %.thread38, !dbg !70875

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.p, %.noexc14
  %i.av = load ptr, ptr %i.z, align 8, !dbg !70877, !noalias !70793, !nonnull !3007, !noundef !3007
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !dbg !70878, !noalias !70793
  %i.ax = icmp slt i64 %i.aw, 0, !dbg !70879
  br i1 %i.ax, label %bb.ao, label %bb.q, !dbg !70879

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.ay = load ptr, ptr %i.z, align 8, !dbg !70880, !noalias !70793, !nonnull !3007, !noundef !3007 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !70793
  store ptr %i.ay, ptr %i.g, align 8, !noalias !70793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !70881, !noalias !70793
  %i.az = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236)
          to label %bb.r unwind label %bb.am, !dbg !70882, !noalias !70793 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = extractvalue { i64, ptr } %i.az, 0, !dbg !70882 ; 2 uses
  %i.bb = extractvalue { i64, ptr } %i.az, 1, !dbg !70882 ; 4 uses
  store i64 %i.ba, ptr %i.f, align 8, !dbg !70882, !noalias !70793
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !70882 ; 5 uses
  store ptr %i.bb, ptr %i.bc, align 8, !dbg !70882, !noalias !70793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ], !dbg !70883, !noalias !70801
  br label %bb.s, !dbg !70884

bb.s:                                             ; preds = %bb.s, %bb.r
  %i.bd = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !70885, !noalias !70802 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 0, !dbg !70886
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.t, !dbg !70887

bb.t:                                             ; preds = %bb.s
  %i.be = trunc nuw i64 %i.ba to i1, !dbg !70888  ; 2 uses
  %..i.i.i.i = select i1 %i.be, i64 480, i64 712, !dbg !70889
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %..i.i.i.i, !dbg !70890
  %.sroa.01.0.v.i.i.i.i.i.i.i = select i1 %i.be, i64 504, i64 512, !dbg !70891
  %.sroa.01.0.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.01.0.v.i.i.i.i.i.i.i, !dbg !70891 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 16, !dbg !70892
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !70893, !noalias !70802, !noundef !3007 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null, !dbg !70893
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.u, !dbg !70894

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 24, !dbg !70893
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !70895, !noalias !70802, !nonnull !3007, !align !3097, !noundef !3007
  %i.bk = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !dbg !70896, !noalias !70802
  %i.bl = icmp slt i64 %i.bk, 0, !dbg !70897
  br i1 %i.bl, label %bb.v, label %bb.w, !dbg !70897

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.trap(), !dbg !70898, !noalias !70801
  unreachable, !dbg !70898

bb.w:                                             ; preds = %bb.u, %bb.t
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.t ], [ %i.bj, %bb.u ], !dbg !70899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !70900, !noalias !70802
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB52_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB52_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB83_4sync3ArcNtNtB3J_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB6k_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.ay, ptr noundef %i.bh, ptr %.sroa.5.0.i.i.i.i.i.i.i, i64 noundef %i.bd)
          to label %.noexc.i.i.i.i unwind label %bb.ag, !dbg !70900, !noalias !70793

.noexc.i.i.i.i:                                   ; preds = %bb.w
  %i.bm = load ptr, ptr %i.c, align 8, !dbg !70901, !noalias !70802, !nonnull !3007, !noundef !3007
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !70902
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !70902, !noalias !70802, !nonnull !3007, !noundef !3007 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !70903, !noalias !70802
  %i.bp = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noundef nonnull %i.bm, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB55_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB55_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB86_4sync3ArcNtNtB3M_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6n_.exit.i.i.i.i.i unwind label %bb.x, !dbg !70904, !noalias !70803 ; 2 uses

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.z, !dbg !70905, !noalias !70803

.noexc.i.i.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.br, label %bb.y, label %.body.i.i.i.i, !dbg !70906

bb.y:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bo)
          to label %.body.i.i.i.i unwind label %bb.z, !dbg !70907, !noalias !70803

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !70908, !noalias !70803
  unreachable, !dbg !70908

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB55_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB55_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB86_4sync3ArcNtNtB3M_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6n_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.bt = extractvalue { i64, ptr } %i.bp, 0, !dbg !70909
  %i.bu = extractvalue { i64, ptr } %i.bp, 1, !dbg !70909 ; 2 uses
  %i.bv = trunc nuw i64 %i.bt to i1, !dbg !70910
  %.not.i.i.i.i.i = icmp ne ptr %i.bu, null
  %or.cond.not.i.i.i.i.i = select i1 %i.bv, i1 %.not.i.i.i.i.i, i1 false, !dbg !70910, !prof !3110
  br i1 %or.cond.not.i.i.i.i.i, label %bb.aa, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4Z_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB4Z_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB80_4sync3ArcNtNtB3G_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6h_.exit.i.i.i.i, !dbg !70910, !prof !3110

bb.aa:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB55_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB55_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB86_4sync3ArcNtNtB3M_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6n_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !70911, !noalias !70804
  store ptr %i.bu, ptr %i.e, align 8, !dbg !70911, !noalias !70804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !70912, !noalias !70804
  store ptr %i.e, ptr %i.d, align 8, !dbg !70912, !noalias !70804
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !70912
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !dbg !70912, !noalias !70804
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #49
          to label %bb.ac unwind label %bb.ab, !dbg !70913, !noalias !70793

bb.ab:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !70914, !noalias !70804, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val.i.i.i.i.i) #51
          to label %bb.ae unwind label %bb.ad, !dbg !70914, !noalias !70793

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !70915, !noalias !70793
  unreachable, !dbg !70915

bb.ae:                                            ; preds = %bb.ab
  %i.by = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc.i.i.i.i.i unwind label %bb.ad, !dbg !70916, !noalias !70793

.noexc.i.i.i.i.i:                                 ; preds = %bb.ae
  br i1 %i.by, label %bb.af, label %.body.i.i.i.i, !dbg !70917

bb.af:                                            ; preds = %.noexc.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bo)
          to label %.body.i.i.i.i unwind label %bb.ad, !dbg !70918, !noalias !70793

bb.ag:                                            ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !70919

.body.i.i.i.i:                                    ; preds = %bb.ag, %bb.af, %.noexc.i.i.i.i.i, %bb.y, %.noexc.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %i.bq, %.noexc.i.i.i.i.i.i ], [ %i.bq, %bb.y ], [ %i.bw, %.noexc.i.i.i.i.i ], [ %i.bw, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16) %i.f) #51
          to label %.thread33 unwind label %bb.al, !dbg !70919, !noalias !70793

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4Z_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB4Z_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB80_4sync3ArcNtNtB3G_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6h_.exit.i.i.i.i: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB55_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB55_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB86_4sync3ArcNtNtB3M_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6n_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !70806), !dbg !70919, !noalias !70801
  call void @llvm.experimental.noalias.scope.decl(metadata !70807), !dbg !70920, !noalias !70801
  %i.ca = load i64, ptr %i.f, align 8, !dbg !70921, !range !3059, !alias.scope !70808, !noalias !70793, !noundef !3007
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !70921
  br i1 %i.cb, label %bb.ah, label %bb.aj, !dbg !70921

bb.ah:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4Z_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB4Z_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB80_4sync3ArcNtNtB3G_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6h_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !70809), !dbg !70921, !noalias !70801
  call void @llvm.experimental.noalias.scope.decl(metadata !70810), !dbg !70922, !noalias !70801
  %i.cc = load ptr, ptr %i.bc, align 8, !dbg !70923, !alias.scope !70811, !noalias !70793, !nonnull !3007, !noundef !3007
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !70924, !noalias !70812
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !70925
  br i1 %i.ce, label %bb.ai, label %.noexc22.i.i.i, !dbg !70925

bb.ai:                                            ; preds = %bb.ah
  fence acquire, !dbg !70926, !noalias !70801
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #52
          to label %.noexc22.i.i.i unwind label %.thread38, !dbg !70927

bb.aj:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4Z_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB4Z_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB80_4sync3ArcNtNtB3G_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB6h_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !70813), !dbg !70921, !noalias !70801
  call void @llvm.experimental.noalias.scope.decl(metadata !70814), !dbg !70928, !noalias !70801
  %i.cf = load ptr, ptr %i.bc, align 8, !dbg !70929, !alias.scope !70815, !noalias !70793, !nonnull !3007, !noundef !3007
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !70930, !noalias !70816
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !70931
  br i1 %i.ch, label %bb.ak, label %.noexc22.i.i.i, !dbg !70931

bb.ak:                                            ; preds = %bb.aj
  fence acquire, !dbg !70932, !noalias !70801
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #52
          to label %.noexc22.i.i.i unwind label %.thread38, !dbg !70933

bb.al:                                            ; preds = %bb.an, %.body.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !70934, !noalias !70793
  unreachable, !dbg !70934

bb.am:                                            ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !70935, !noalias !70817
  %i.ck = icmp eq i64 %i.cj, 1, !dbg !70936
  br i1 %i.ck, label %bb.an, label %.thread33, !dbg !70936

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !70937, !noalias !70801
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #52
          to label %.thread33 unwind label %bb.al, !dbg !70938, !noalias !70793

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  tail call void @llvm.trap(), !dbg !70939, !noalias !70801
  unreachable, !dbg !70939

.noexc22.i.i.i:                                   ; preds = %bb.ak, %bb.ai, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !70919, !noalias !70793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !70940, !noalias !70793
  %i.cl = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc18 unwind label %.thread38, !dbg !70941

.noexc18:                                         ; preds = %.noexc22.i.i.i
  br i1 %i.cl, label %bb.ap, label %bb.aw, !dbg !70942

bb.ap:                                            ; preds = %.noexc18
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bo)
          to label %bb.aw unwind label %.thread38, !dbg !70943

bb.aq:                                            ; preds = %bb.o
  unreachable

bb.ar:                                            ; preds = %bb.o, %bb.l
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.ah) #51
          to label %.thread33 unwind label %bb.as, !dbg !70944, !noalias !70793

bb.as:                                            ; preds = %bb.ar
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !70945, !noalias !70793
  unreachable, !dbg !70945

bb.at:                                            ; preds = %bb.b
  %i.cn = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc20 unwind label %.thread38, !dbg !70946

.noexc20:                                         ; preds = %bb.at
  switch i8 %i.cn, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0B3T_.exit
    i8 0, label %bb.au
  ], !dbg !70947

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtB2l_4iter8adapters3map3MapINtNtNtB2l_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0IB2h_INtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB9t_4sync3ArcNtNtB5G_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB82_.exit.i: ; preds = %.noexc, %bb.a
  %i.co = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc21 unwind label %.thread38, !dbg !70948

.noexc21:                                         ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtB2l_4iter8adapters3map3MapINtNtNtB2l_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0IB2h_INtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB9t_4sync3ArcNtNtB5G_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB82_.exit.i
  switch i8 %i.co, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0B3T_.exit
    i8 0, label %bb.au
  ], !dbg !70949

.thread38:                                        ; preds = %bb.au, %bb.aw, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtB2l_4iter8adapters3map3MapINtNtNtB2l_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0IB2h_INtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB9t_4sync3ArcNtNtB5G_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB82_.exit.i, %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.n, %bb.p, %bb.ai, %bb.ak, %.noexc22.i.i.i, %bb.ap, %bb.at
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread33, !dbg !70950

bb.au:                                            ; preds = %.noexc21, %.noexc20, %.noexc10, %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !70951
  store ptr @234, ptr %i.l, align 8, !dbg !70951
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !70951
  store i64 65, ptr %i.cp, align 8, !dbg !70951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !70952
  store ptr %i.l, ptr %i.h, align 8, !dbg !70952
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !70952
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !70952
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #49
          to label %bb.av unwind label %.thread38, !dbg !70953

bb.av:                                            ; preds = %bb.au
  unreachable

_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0B3T_.exit: ; preds = %.noexc10, %.noexc11, %.noexc21, %.noexc9, %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !70954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2584) %i.i, ptr noundef nonnull align 8 dereferenceable(2584) %1, i64 2584, i1 false), !dbg !70954
  %i.cq = load ptr, ptr %i.i, align 8, !dbg !70955, !alias.scope !70819, !noalias !70820, !nonnull !3007, !align !3097, !noundef !3007
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !70956
  call fastcc void @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2t_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0EB3L_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %i.cq, ptr noalias noundef readonly align 8 captures(address) dereferenceable(2576) %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230), !dbg !70957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !70958
  br label %bb.ax, !dbg !70959

bb.aw:                                            ; preds = %.noexc21, %.noexc20, %.noexc10, %.noexc9, %bb.ap, %.noexc18, %bb.i
  %.sroa.029.0.ph.ph = phi i8 [ 0, %.noexc20 ], [ 0, %.noexc10 ], [ 1, %bb.ap ], [ 0, %bb.i ], [ 1, %.noexc18 ], [ 0, %.noexc9 ], [ 0, %.noexc21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !70960
  %i.cs = invoke { i1, i8 } @_RNvNtNtCskmDBXs7hs3c_5tokio4task4coop4stop()
          to label %bb.ay unwind label %.thread38, !dbg !70961 ; 2 uses

bb.ax:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECsfcROwRM8ZtH_11polars_plan.exit28, %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2B_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0B3T_.exit
  ret void, !dbg !70962

bb.ay:                                            ; preds = %bb.aw
  %i.ct = extractvalue { i1, i8 } %i.cs, 0, !dbg !70961
  %i.cu = extractvalue { i1, i8 } %i.cs, 1, !dbg !70961
  store i8 %.sroa.029.0.ph.ph, ptr %i.k, align 1, !dbg !70963
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !70963
  %i.cw = zext i1 %i.ct to i8, !dbg !70963
  store i8 %i.cw, ptr %i.cv, align 1, !dbg !70963
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !70963
  store i8 %i.cu, ptr %i.cx, align 1, !dbg !70963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !70964
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB1t_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2K_:bb.a
bb.b:                                             ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.p, %.noexc ], [ %i.m, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 70, !dbg !71263
  %i.s = load i8, ptr %i.r, align 1, !dbg !71264, !range !3157, !noalias !71222, !noundef !3007
  %.not6.i.i.i = icmp eq i8 %i.s, 2, !dbg !71265
  br i1 %.not6.i.i.i, label %bb.at, label %bb.c, !dbg !71266

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 40, !dbg !71267
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !dbg !71268, !noalias !71222, !noundef !3007 ; 6 uses
  %i.u = icmp eq ptr %.val.i.i.i, null, !dbg !71269
  br i1 %i.u, label %bb.d, label %bb.e, !dbg !71269

bb.d:                                             ; preds = %bb.c
  %i.v = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc9 unwind label %.thread39, !dbg !71270

.noexc9:                                          ; preds = %bb.d
  switch i8 %i.v, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0B1l_.exit
    i8 0, label %bb.au
  ], !dbg !71271

bb.e:                                             ; preds = %bb.c
  %i.w = load i64, ptr %.val.i.i.i, align 8, !dbg !71272, !range !3059, !noalias !71223, !noundef !3007
  %i.x = trunc nuw i64 %i.w to i1, !dbg !71273
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !71273

bb.f:                                             ; preds = %bb.e
  %i.y = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc10 unwind label %.thread39, !dbg !71274

.noexc10:                                         ; preds = %bb.f
  switch i8 %i.y, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0B1l_.exit
    i8 0, label %bb.au
  ], !dbg !71275

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8, !dbg !71276 ; 4 uses
  %i.aa = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc11 unwind label %.thread39, !dbg !71277

.noexc11:                                         ; preds = %bb.g
  %i.ab = icmp eq i8 %i.aa, 2, !dbg !71278
  br i1 %i.ab, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0B1l_.exit, label %bb.h, !dbg !71279

bb.h:                                             ; preds = %.noexc11
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32, !dbg !71280
  invoke void @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler5deferNtB2_5Defer4wake(ptr noundef nonnull align 8 %i.ac)
          to label %.noexc12 unwind label %.thread39, !dbg !71281

.noexc12:                                         ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16, !dbg !71282 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !71283, !noalias !71224, !noundef !3007
  %i.af = icmp eq i64 %i.ae, 0, !dbg !71284
  br i1 %i.af, label %bb.i, label %bb.j, !dbg !71284, !prof !3151

bb.i:                                             ; preds = %.noexc12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24, !dbg !71285
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !71286, !noalias !71224, !align !3097, !noundef !3007 ; 8 uses
  %.not13.i.i.i = icmp eq ptr %i.ah, null, !dbg !71287
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !dbg !71288, !noalias !71223
  br i1 %.not13.i.i.i, label %bb.aw, label %bb.k, !dbg !71289

bb.j:                                             ; preds = %.noexc12
  invoke void @_RNvNtCscgRAwXFJnXP_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #53
          to label %.noexc13 unwind label %.thread39, !dbg !71290

.noexc13:                                         ; preds = %bb.j
  unreachable, !dbg !71290

bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !71291, !noalias !71224, !noundef !3007 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !dbg !71292, !noalias !71224
  %.not14.i.i.i = icmp eq ptr %i.ai, null, !dbg !71293
  br i1 %.not14.i.i.i, label %bb.m, label %bb.l, !dbg !71294

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !71295
  %i.ak = load ptr, ptr %i.z, align 8, !dbg !71296, !noalias !71224, !nonnull !3007, !noundef !3007
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !71297
  %i.am = load ptr, ptr %i.al, align 8, !dbg !71297, !noalias !71224, !nonnull !3007, !noundef !3007
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !71298
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !71299
  invoke void @_RINvMs0_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB8_6handle6HandleEE21push_back_or_overflowB1U_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.ai, ptr noundef nonnull align 8 %i.an, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ao)
          to label %bb.m unwind label %bb.ar, !dbg !71300, !noalias !71224

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !71301
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !71301, !noalias !71224, !noundef !3007
  %.not15.i.i.i = icmp eq ptr %i.aq, null, !dbg !71301
  br i1 %.not15.i.i.i, label %bb.o, label %bb.n, !dbg !71302, !prof !3061

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.z, align 8, !dbg !71303, !noalias !71224, !nonnull !3007, !noundef !3007
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !71304
  %i.at = invoke noundef align 8 ptr @_RNvMs0_NtNtCskmDBXs7hs3c_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtNtB9_7runtime9scheduler12multi_thread6worker4CoreE4swapCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.as, ptr noalias noundef nonnull align 8 %i.ah)
          to label %.noexc14 unwind label %.thread39, !dbg !71305 ; 2 uses

.noexc14:                                         ; preds = %bb.n
  %i.au = icmp eq ptr %i.at, null, !dbg !71306
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.p, !dbg !71306

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #49
          to label %bb.aq unwind label %bb.ar, !dbg !71307, !noalias !71224

bb.p:                                             ; preds = %.noexc14
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.at)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %.thread39, !dbg !71306

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.p, %.noexc14
  %i.av = load ptr, ptr %i.z, align 8, !dbg !71308, !noalias !71224, !nonnull !3007, !noundef !3007
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !dbg !71309, !noalias !71224
  %i.ax = icmp slt i64 %i.aw, 0, !dbg !71310
  br i1 %i.ax, label %bb.ao, label %bb.q, !dbg !71310

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.ay = load ptr, ptr %i.z, align 8, !dbg !71311, !noalias !71224, !nonnull !3007, !noundef !3007 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !71224
  store ptr %i.ay, ptr %i.g, align 8, !noalias !71224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !71312, !noalias !71224
  %i.az = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236)
          to label %bb.r unwind label %bb.am, !dbg !71313, !noalias !71224 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ba = extractvalue { i64, ptr } %i.az, 0, !dbg !71313 ; 2 uses
  %i.bb = extractvalue { i64, ptr } %i.az, 1, !dbg !71313 ; 4 uses
  store i64 %i.ba, ptr %i.f, align 8, !dbg !71313, !noalias !71224
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !71313 ; 5 uses
  store ptr %i.bb, ptr %i.bc, align 8, !dbg !71313, !noalias !71224
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ], !dbg !71314, !noalias !71232
  br label %bb.s, !dbg !71315

bb.s:                                             ; preds = %bb.s, %bb.r
  %i.bd = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !71316, !noalias !71233 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 0, !dbg !71317
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.t, !dbg !71318

bb.t:                                             ; preds = %bb.s
  %i.be = trunc nuw i64 %i.ba to i1, !dbg !71319  ; 2 uses
  %..i.i.i.i = select i1 %i.be, i64 480, i64 712, !dbg !71320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %..i.i.i.i, !dbg !71321
  %.sroa.01.0.v.i.i.i.i.i.i.i = select i1 %i.be, i64 504, i64 512, !dbg !71322
  %.sroa.01.0.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.01.0.v.i.i.i.i.i.i.i, !dbg !71322 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 16, !dbg !71323
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !71324, !noalias !71233, !noundef !3007 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null, !dbg !71324
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.u, !dbg !71325

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 24, !dbg !71324
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !71326, !noalias !71233, !nonnull !3007, !align !3097, !noundef !3007
  %i.bk = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !dbg !71327, !noalias !71233
  %i.bl = icmp slt i64 %i.bk, 0, !dbg !71328
  br i1 %i.bl, label %bb.v, label %bb.w, !dbg !71328

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.trap(), !dbg !71329, !noalias !71232
  unreachable, !dbg !71329

bb.w:                                             ; preds = %bb.u, %bb.t
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.t ], [ %i.bj, %bb.u ], !dbg !71330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !71331, !noalias !71233
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3M_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.ay, ptr noundef %i.bh, ptr %.sroa.5.0.i.i.i.i.i.i.i, i64 noundef %i.bd)
          to label %.noexc.i.i.i.i unwind label %bb.ag, !dbg !71331, !noalias !71224

.noexc.i.i.i.i:                                   ; preds = %bb.w
  %i.bm = load ptr, ptr %i.c, align 8, !dbg !71332, !noalias !71233, !nonnull !3007, !noundef !3007
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !71333
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !71333, !noalias !71233, !nonnull !3007, !noundef !3007 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !71334, !noalias !71233
  %i.bp = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf, ptr noundef nonnull %i.bm, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i unwind label %bb.x, !dbg !71335, !noalias !71234 ; 2 uses

bb.x:                                             ; preds = %.noexc.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.z, !dbg !71336, !noalias !71234

.noexc.i.i.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.br, label %bb.y, label %.body.i.i.i.i, !dbg !71337

bb.y:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bo)
          to label %.body.i.i.i.i unwind label %bb.z, !dbg !71338, !noalias !71234

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71339, !noalias !71234
  unreachable, !dbg !71339

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.bt = extractvalue { i64, ptr } %i.bp, 0, !dbg !71340
  %i.bu = extractvalue { i64, ptr } %i.bp, 1, !dbg !71340 ; 2 uses
  %i.bv = trunc nuw i64 %i.bt to i1, !dbg !71341
  %.not.i.i.i.i.i = icmp ne ptr %i.bu, null
  %or.cond.not.i.i.i.i.i = select i1 %i.bv, i1 %.not.i.i.i.i.i, i1 false, !dbg !71341, !prof !3110
  br i1 %or.cond.not.i.i.i.i.i, label %bb.aa, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i, !dbg !71341, !prof !3110

bb.aa:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !71342, !noalias !71235
  store ptr %i.bu, ptr %i.e, align 8, !dbg !71342, !noalias !71235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71343, !noalias !71235
  store ptr %i.e, ptr %i.d, align 8, !dbg !71343, !noalias !71235
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !71343
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !dbg !71343, !noalias !71235
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #49
          to label %bb.ac unwind label %bb.ab, !dbg !71344, !noalias !71224

bb.ab:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !71345, !noalias !71235, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val.i.i.i.i.i) #51
          to label %bb.ae unwind label %bb.ad, !dbg !71345, !noalias !71224

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ae, %bb.ab
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71346, !noalias !71224
  unreachable, !dbg !71346

bb.ae:                                            ; preds = %bb.ab
  %i.by = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc.i.i.i.i.i unwind label %bb.ad, !dbg !71347, !noalias !71224

.noexc.i.i.i.i.i:                                 ; preds = %bb.ae
  br i1 %i.by, label %bb.af, label %.body.i.i.i.i, !dbg !71348

bb.af:                                            ; preds = %.noexc.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bo)
          to label %.body.i.i.i.i unwind label %bb.ad, !dbg !71349, !noalias !71224

bb.ag:                                            ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !71350

.body.i.i.i.i:                                    ; preds = %bb.ag, %bb.af, %.noexc.i.i.i.i.i, %bb.y, %.noexc.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %i.bq, %.noexc.i.i.i.i.i.i ], [ %i.bq, %bb.y ], [ %i.bw, %.noexc.i.i.i.i.i ], [ %i.bw, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16) %i.f) #51
          to label %.thread34 unwind label %bb.al, !dbg !71350, !noalias !71224

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !71237), !dbg !71350, !noalias !71232
  call void @llvm.experimental.noalias.scope.decl(metadata !71238), !dbg !71351, !noalias !71232
  %i.ca = load i64, ptr %i.f, align 8, !dbg !71352, !range !3059, !alias.scope !71239, !noalias !71224, !noundef !3007
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !71352
  br i1 %i.cb, label %bb.ah, label %bb.aj, !dbg !71352

bb.ah:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !71240), !dbg !71352, !noalias !71232
  call void @llvm.experimental.noalias.scope.decl(metadata !71241), !dbg !71353, !noalias !71232
  %i.cc = load ptr, ptr %i.bc, align 8, !dbg !71354, !alias.scope !71242, !noalias !71224, !nonnull !3007, !noundef !3007
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !71355, !noalias !71243
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !71356
  br i1 %i.ce, label %bb.ai, label %.noexc22.i.i.i, !dbg !71356

bb.ai:                                            ; preds = %bb.ah
  fence acquire, !dbg !71357, !noalias !71232
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #52
          to label %.noexc22.i.i.i unwind label %.thread39, !dbg !71358

bb.aj:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !71244), !dbg !71352, !noalias !71232
  call void @llvm.experimental.noalias.scope.decl(metadata !71245), !dbg !71359, !noalias !71232
  %i.cf = load ptr, ptr %i.bc, align 8, !dbg !71360, !alias.scope !71246, !noalias !71224, !nonnull !3007, !noundef !3007
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !71361, !noalias !71247
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !71362
  br i1 %i.ch, label %bb.ak, label %.noexc22.i.i.i, !dbg !71362

bb.ak:                                            ; preds = %bb.aj
  fence acquire, !dbg !71363, !noalias !71232
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #52
          to label %.noexc22.i.i.i unwind label %.thread39, !dbg !71364

bb.al:                                            ; preds = %bb.an, %.body.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71365, !noalias !71224
  unreachable, !dbg !71365

bb.am:                                            ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !71366, !noalias !71248
  %i.ck = icmp eq i64 %i.cj, 1, !dbg !71367
  br i1 %i.ck, label %bb.an, label %.thread34, !dbg !71367

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !71368, !noalias !71232
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #52
          to label %.thread34 unwind label %bb.al, !dbg !71369, !noalias !71224

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  tail call void @llvm.trap(), !dbg !71370, !noalias !71232
  unreachable, !dbg !71370

.noexc22.i.i.i:                                   ; preds = %bb.ak, %bb.ai, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71350, !noalias !71224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71371, !noalias !71224
  %i.cl = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc18 unwind label %.thread39, !dbg !71372

.noexc18:                                         ; preds = %.noexc22.i.i.i
  br i1 %i.cl, label %bb.ap, label %bb.aw, !dbg !71373

bb.ap:                                            ; preds = %.noexc18
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bo)
          to label %bb.aw unwind label %.thread39, !dbg !71374

bb.aq:                                            ; preds = %bb.o
  unreachable

bb.ar:                                            ; preds = %bb.o, %bb.l
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.ah) #51
          to label %.thread34 unwind label %bb.as, !dbg !71375, !noalias !71224

bb.as:                                            ; preds = %bb.ar
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71376, !noalias !71224
  unreachable, !dbg !71376

bb.at:                                            ; preds = %bb.b
  %i.cn = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc20 unwind label %.thread39, !dbg !71377

.noexc20:                                         ; preds = %bb.at
  switch i8 %i.cn, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0B1l_.exit
    i8 0, label %bb.au
  ], !dbg !71378

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i: ; preds = %.noexc, %bb.a
  %i.co = invoke noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context()
          to label %.noexc21 unwind label %.thread39, !dbg !71379

.noexc21:                                         ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i
  switch i8 %i.co, label %bb.aw [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0B1l_.exit
    i8 0, label %bb.au
  ], !dbg !71380

.thread39:                                        ; preds = %bb.au, %bb.aw, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i, %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.n, %bb.p, %bb.ai, %bb.ak, %.noexc22.i.i.i, %bb.ap, %bb.at
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread34, !dbg !71381

bb.au:                                            ; preds = %.noexc21, %.noexc20, %.noexc10, %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !71382
  store ptr @234, ptr %i.l, align 8, !dbg !71382
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !71382
  store i64 65, ptr %i.cp, align 8, !dbg !71382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !71383
  store ptr %i.l, ptr %i.h, align 8, !dbg !71383
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !71383
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !71383
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #49
          to label %bb.av unwind label %.thread39, !dbg !71384

bb.av:                                            ; preds = %bb.au
  unreachable

_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0B1l_.exit: ; preds = %.noexc10, %.noexc11, %.noexc21, %.noexc9, %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !71385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !dbg !71385
  %i.cq = load ptr, ptr %i.i, align 8, !dbg !71386, !alias.scope !71250, !noalias !71251, !nonnull !3007, !align !3097, !noundef !3007
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !71387
  call fastcc void @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0EB1d_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %i.cq, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230), !dbg !71388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !71389
  br label %bb.ax, !dbg !71390

bb.aw:                                            ; preds = %.noexc21, %.noexc20, %.noexc10, %.noexc9, %bb.ap, %.noexc18, %bb.i
  %.sroa.030.0.ph.ph = phi i8 [ 0, %.noexc20 ], [ 0, %.noexc10 ], [ 1, %bb.ap ], [ 0, %bb.i ], [ 1, %.noexc18 ], [ 0, %.noexc9 ], [ 0, %.noexc21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !71391
  %i.cs = invoke { i1, i8 } @_RNvNtNtCskmDBXs7hs3c_5tokio4task4coop4stop()
          to label %bb.ay unwind label %.thread39, !dbg !71392 ; 2 uses

bb.ax:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECsfcROwRM8ZtH_11polars_plan.exit28, %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14fetch_metadata0Es_0B1l_.exit
  ret void, !dbg !71393

bb.ay:                                            ; preds = %bb.aw
  %i.ct = extractvalue { i1, i8 } %i.cs, 0, !dbg !71392
  %i.cu = extractvalue { i1, i8 } %i.cs, 1, !dbg !71392
  store i8 %.sroa.030.0.ph.ph, ptr %i.k, align 1, !dbg !71394
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !71394
  %i.cw = zext i1 %i.ct to i8, !dbg !71394
  store i8 %i.cw, ptr %i.cv, align 1, !dbg !71394
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !71394
  store i8 %i.cu, ptr %i.cx, align 1, !dbg !71394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !71395
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB1t_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2K_:bb.a
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL), !dbg !71685 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !71686
  %i.l = load i8, ptr %i.k, align 8, !dbg !71687, !range !3157, !noalias !71649, !noundef !3007
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i
    i8 1, label %bb.b
    i8 2, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i
  ], !dbg !71688, !prof !3193

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE10initializeCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.j), !dbg !71689 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !71690
  br i1 %i.n, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i, label %bb.b, !dbg !71690

bb.b:                                             ; preds = %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i, %bb.a
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.m, %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 70, !dbg !71691
  %i.p = load i8, ptr %i.o, align 1, !dbg !71692, !range !3157, !noalias !71651, !noundef !3007
  %.not6.i.i.i = icmp eq i8 %i.p, 2, !dbg !71693
  br i1 %.not6.i.i.i, label %.noexc20, label %bb.c, !dbg !71694

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 40, !dbg !71695
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !dbg !71696, !noalias !71651, !noundef !3007 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i.i, null, !dbg !71697
  br i1 %i.r, label %.noexc9, label %bb.d, !dbg !71697

.noexc9:                                          ; preds = %bb.c
  %i.s = tail call noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context(), !dbg !71698
  switch i8 %i.s, label %bb.ao [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit
    i8 0, label %bb.an
  ], !dbg !71699

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %.val.i.i.i, align 8, !dbg !71700, !range !3059, !noalias !71652, !noundef !3007
  %i.u = trunc nuw i64 %i.t to i1, !dbg !71701
  br i1 %i.u, label %.noexc11, label %.noexc10, !dbg !71701

.noexc10:                                         ; preds = %bb.d
  %i.v = tail call noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context(), !dbg !71702
  switch i8 %i.v, label %bb.ao [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit
    i8 0, label %bb.an
  ], !dbg !71703

.noexc11:                                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8, !dbg !71704 ; 4 uses
  %i.x = tail call noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context(), !dbg !71705
  %i.y = icmp eq i8 %i.x, 2, !dbg !71706
  br i1 %i.y, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit, label %.noexc12, !dbg !71707

.noexc12:                                         ; preds = %.noexc11
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32, !dbg !71708
  tail call void @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler5deferNtB2_5Defer4wake(ptr noundef nonnull align 8 %i.z), !dbg !71709
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16, !dbg !71710 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !71711, !noalias !71653, !noundef !3007
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !71712
  br i1 %i.ac, label %bb.e, label %.noexc13, !dbg !71712, !prof !3151

bb.e:                                             ; preds = %.noexc12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24, !dbg !71713
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !71714, !noalias !71653, !align !3097, !noundef !3007 ; 8 uses
  %.not13.i.i.i = icmp eq ptr %i.ae, null, !dbg !71715
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !dbg !71716, !noalias !71652
  br i1 %.not13.i.i.i, label %bb.ao, label %bb.f, !dbg !71717

.noexc13:                                         ; preds = %.noexc12
  tail call void @_RNvNtCscgRAwXFJnXP_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #53, !dbg !71718
  unreachable, !dbg !71718

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !71719, !noalias !71653, !noundef !3007 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !dbg !71720, !noalias !71653
  %.not14.i.i.i = icmp eq ptr %i.af, null, !dbg !71721
  br i1 %.not14.i.i.i, label %bb.h, label %bb.g, !dbg !71722

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !71723
  %i.ah = load ptr, ptr %i.w, align 8, !dbg !71724, !noalias !71653, !nonnull !3007, !noundef !3007
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !71725
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !71725, !noalias !71653, !nonnull !3007, !noundef !3007
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !71726
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !71727
  invoke void @_RINvMs0_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB8_6handle6HandleEE21push_back_or_overflowB1U_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.af, ptr noundef nonnull align 8 %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %bb.h unwind label %bb.al, !dbg !71728, !noalias !71653

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !71729
  %i.an = load ptr, ptr %i.am, align 8, !dbg !71729, !noalias !71653, !noundef !3007
  %.not15.i.i.i = icmp eq ptr %i.an, null, !dbg !71729
  br i1 %.not15.i.i.i, label %bb.i, label %.noexc14, !dbg !71730, !prof !3061

.noexc14:                                         ; preds = %bb.h
  %i.ao = load ptr, ptr %i.w, align 8, !dbg !71731, !noalias !71653, !nonnull !3007, !noundef !3007
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32, !dbg !71732
  %i.aq = tail call noundef align 8 ptr @_RNvMs0_NtNtCskmDBXs7hs3c_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtNtB9_7runtime9scheduler12multi_thread6worker4CoreE4swapCsfcROwRM8ZtH_11polars_plan(ptr noundef nonnull align 8 %i.ap, ptr noalias noundef nonnull align 8 %i.ae), !dbg !71733 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null, !dbg !71734
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.j, !dbg !71734

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #49
          to label %bb.ak unwind label %bb.al, !dbg !71735, !noalias !71653

bb.j:                                             ; preds = %.noexc14
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.aq), !dbg !71734
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !71734

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.j, %.noexc14
  %i.as = load ptr, ptr %i.w, align 8, !dbg !71736, !noalias !71653, !nonnull !3007, !noundef !3007
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !dbg !71737, !noalias !71653
  %i.au = icmp slt i64 %i.at, 0, !dbg !71738
  br i1 %i.au, label %bb.ai, label %bb.k, !dbg !71738

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  %i.av = load ptr, ptr %i.w, align 8, !dbg !71739, !noalias !71653, !nonnull !3007, !noundef !3007 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !71653
  store ptr %i.av, ptr %i.f, align 8, !noalias !71653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !71740, !noalias !71653
  %i.aw = invoke { i64, ptr } @_RNvMNtNtCskmDBXs7hs3c_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236)
          to label %bb.l unwind label %bb.ag, !dbg !71741, !noalias !71653 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ax = extractvalue { i64, ptr } %i.aw, 0, !dbg !71741 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.aw, 1, !dbg !71741 ; 4 uses
  store i64 %i.ax, ptr %i.e, align 8, !dbg !71741, !noalias !71653
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !71741 ; 5 uses
  store ptr %i.ay, ptr %i.az, align 8, !dbg !71741, !noalias !71653
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ], !dbg !71742, !noalias !71661
  br label %bb.m, !dbg !71743

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.ba = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !71744, !noalias !71662 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ba, 0, !dbg !71745
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.n, !dbg !71746

bb.n:                                             ; preds = %bb.m
  %i.bb = trunc nuw i64 %i.ax to i1, !dbg !71747  ; 2 uses
  %..i.i.i.i = select i1 %i.bb, i64 480, i64 712, !dbg !71748
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %..i.i.i.i, !dbg !71749
  %.sroa.01.0.v.i.i.i.i.i.i.i = select i1 %i.bb, i64 504, i64 512, !dbg !71750
  %.sroa.01.0.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.01.0.v.i.i.i.i.i.i.i, !dbg !71750 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 16, !dbg !71751
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !71752, !noalias !71662, !noundef !3007 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.be, null, !dbg !71752
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.o, !dbg !71753

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 24, !dbg !71752
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !71754, !noalias !71662, !nonnull !3007, !align !3097, !noundef !3007
  %i.bh = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !dbg !71755, !noalias !71662
  %i.bi = icmp slt i64 %i.bh, 0, !dbg !71756
  br i1 %i.bi, label %bb.p, label %bb.q, !dbg !71756

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap(), !dbg !71757, !noalias !71661
  unreachable, !dbg !71757

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.n ], [ %i.bg, %bb.o ], !dbg !71758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71759, !noalias !71662
  invoke void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2v_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00ENtNtBR_8schedule16BlockingScheduleEB3M_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.av, ptr noundef %i.be, ptr %.sroa.5.0.i.i.i.i.i.i.i, i64 noundef %i.ba)
          to label %.noexc.i.i.i.i unwind label %bb.aa, !dbg !71759, !noalias !71653

.noexc.i.i.i.i:                                   ; preds = %bb.q
  %i.bj = load ptr, ptr %i.b, align 8, !dbg !71760, !noalias !71662, !nonnull !3007, !noundef !3007
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !71761
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !71761, !noalias !71662, !nonnull !3007, !noundef !3007 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71762, !noalias !71662
  %i.bm = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, ptr noundef nonnull %i.bj, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i unwind label %bb.r, !dbg !71763, !noalias !71663 ; 2 uses

bb.r:                                             ; preds = %.noexc.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bl)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.t, !dbg !71764, !noalias !71663

.noexc.i.i.i.i.i.i:                               ; preds = %bb.r
  br i1 %i.bo, label %bb.s, label %.body.i.i.i.i, !dbg !71765

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bl)
          to label %.body.i.i.i.i unwind label %bb.t, !dbg !71766, !noalias !71663

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71767, !noalias !71663
  unreachable, !dbg !71767

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.bq = extractvalue { i64, ptr } %i.bm, 0, !dbg !71768
  %i.br = extractvalue { i64, ptr } %i.bm, 1, !dbg !71768 ; 2 uses
  %i.bs = trunc nuw i64 %i.bq to i1, !dbg !71769
  %.not.i.i.i.i.i = icmp ne ptr %i.br, null
  %or.cond.not.i.i.i.i.i = select i1 %i.bs, i1 %.not.i.i.i.i.i, i1 false, !dbg !71769, !prof !3110
  br i1 %or.cond.not.i.i.i.i.i, label %bb.u, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i, !dbg !71769, !prof !3110

bb.u:                                             ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71770, !noalias !71664
  store ptr %i.br, ptr %i.d, align 8, !dbg !71770, !noalias !71664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !71771, !noalias !71664
  store ptr %i.d, ptr %i.c, align 8, !dbg !71771, !noalias !71664
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !71771
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !dbg !71771, !noalias !71664
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #49
          to label %bb.w unwind label %bb.v, !dbg !71772, !noalias !71653

bb.v:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !71773, !noalias !71664, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val.i.i.i.i.i) #51
          to label %bb.y unwind label %bb.x, !dbg !71773, !noalias !71653

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.z, %bb.y, %bb.v
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71774, !noalias !71653
  unreachable, !dbg !71774

bb.y:                                             ; preds = %bb.v
  %i.bv = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bl)
          to label %.noexc.i.i.i.i.i unwind label %bb.x, !dbg !71775, !noalias !71653

.noexc.i.i.i.i.i:                                 ; preds = %bb.y
  br i1 %i.bv, label %bb.z, label %.body.i.i.i.i, !dbg !71776

bb.z:                                             ; preds = %.noexc.i.i.i.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bl)
          to label %.body.i.i.i.i unwind label %bb.x, !dbg !71777, !noalias !71653

bb.aa:                                            ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !71778

.body.i.i.i.i:                                    ; preds = %bb.aa, %bb.z, %.noexc.i.i.i.i.i, %bb.s, %.noexc.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.aa ], [ %i.bn, %.noexc.i.i.i.i.i.i ], [ %i.bn, %bb.s ], [ %i.bt, %.noexc.i.i.i.i.i ], [ %i.bt, %bb.z ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio7runtime6handle6HandleECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(16) %i.e) #51
          to label %.thread unwind label %bb.af, !dbg !71778, !noalias !71653

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2y_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3P_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !71666), !dbg !71778, !noalias !71661
  call void @llvm.experimental.noalias.scope.decl(metadata !71667), !dbg !71779, !noalias !71661
  %i.bx = load i64, ptr %i.e, align 8, !dbg !71780, !range !3059, !alias.scope !71668, !noalias !71653, !noundef !3007
  %i.by = icmp eq i64 %i.bx, 0, !dbg !71780
  br i1 %i.by, label %bb.ab, label %bb.ad, !dbg !71780

bb.ab:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !71669), !dbg !71780, !noalias !71661
  call void @llvm.experimental.noalias.scope.decl(metadata !71670), !dbg !71781, !noalias !71661
  %i.bz = load ptr, ptr %i.az, align 8, !dbg !71782, !alias.scope !71671, !noalias !71653, !nonnull !3007, !noundef !3007
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !71783, !noalias !71672
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !71784
  br i1 %i.cb, label %bb.ac, label %.noexc22.i.i.i, !dbg !71784

bb.ac:                                            ; preds = %bb.ab
  fence acquire, !dbg !71785, !noalias !71661
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az) #52, !dbg !71786
  br label %.noexc22.i.i.i, !dbg !71786

bb.ad:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00uEB3J_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !71673), !dbg !71780, !noalias !71661
  call void @llvm.experimental.noalias.scope.decl(metadata !71674), !dbg !71787, !noalias !71661
  %i.cc = load ptr, ptr %i.az, align 8, !dbg !71788, !alias.scope !71675, !noalias !71653, !nonnull !3007, !noundef !3007
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !71789, !noalias !71676
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !71790
  br i1 %i.ce, label %bb.ae, label %.noexc22.i.i.i, !dbg !71790

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !dbg !71791, !noalias !71661
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az) #52, !dbg !71792
  br label %.noexc22.i.i.i, !dbg !71792

bb.af:                                            ; preds = %bb.ah, %.body.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71793, !noalias !71653
  unreachable, !dbg !71793

bb.ag:                                            ; preds = %bb.k
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = atomicrmw sub ptr %i.av, i64 1 release, align 8, !dbg !71794, !noalias !71677
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !71795
  br i1 %i.ch, label %bb.ah, label %.thread, !dbg !71795

bb.ah:                                            ; preds = %bb.ag
  fence acquire, !dbg !71796, !noalias !71661
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #52
          to label %.thread unwind label %bb.af, !dbg !71797, !noalias !71653

bb.ai:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  tail call void @llvm.trap(), !dbg !71798, !noalias !71661
  unreachable, !dbg !71798

.noexc22.i.i.i:                                   ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !71778, !noalias !71653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71799, !noalias !71653
  %i.ci = call noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.bl), !dbg !71800
  br i1 %i.ci, label %bb.aj, label %bb.ao, !dbg !71801

bb.aj:                                            ; preds = %.noexc22.i.i.i
  call void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.bl), !dbg !71802
  br label %bb.ao, !dbg !71802

bb.ak:                                            ; preds = %bb.i
  unreachable

bb.al:                                            ; preds = %bb.i, %bb.g
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsfcROwRM8ZtH_11polars_plan(ptr nonnull %i.ae) #51
          to label %.thread unwind label %bb.am, !dbg !71803, !noalias !71653

bb.am:                                            ; preds = %bb.al
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !71804, !noalias !71653
  unreachable, !dbg !71804

.noexc20:                                         ; preds = %bb.b
  %i.ck = tail call noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context(), !dbg !71805
  switch i8 %i.ck, label %bb.ao [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit
    i8 0, label %bb.an
  ], !dbg !71806

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i: ; preds = %_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit.i.i, %bb.a
  %i.cl = tail call noundef i8 @_RNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt21current_enter_context(), !dbg !71807
  switch i8 %i.cl, label %bb.ao [
    i8 2, label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit
    i8 0, label %bb.an
  ], !dbg !71808

bb.an:                                            ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i, %.noexc20, %.noexc10, %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !71809
  store ptr @234, ptr %i.i, align 8, !dbg !71809
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !71809
  store i64 65, ptr %i.cm, align 8, !dbg !71809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !71810
  store ptr %i.i, ptr %i.g, align 8, !dbg !71810
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !71810
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !71810
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #49, !dbg !71811
  unreachable

_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit: ; preds = %.noexc10, %.noexc11, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i, %.noexc9, %.noexc20
  %i.cn = load ptr, ptr %1, align 8, !dbg !71812, !alias.scope !71679, !noalias !71680, !nonnull !3007, !align !3097, !noundef !3007
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !71813
  tail call fastcc void @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0EB1d_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %i.cn, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230), !dbg !71814
  br label %bb.ap, !dbg !71815

bb.ao:                                            ; preds = %bb.aj, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i, %.noexc20, %.noexc10, %.noexc9, %.noexc22.i.i.i, %bb.e
  %.sroa.030.0.ph.ph = phi i8 [ 0, %.noexc20 ], [ 0, %.noexc10 ], [ 1, %bb.aj ], [ 0, %bb.e ], [ 1, %.noexc22.i.i.i ], [ 0, %.noexc9 ], [ 0, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE8try_withNCINvBW_14with_schedulerINtNtCscgRAwXFJnXP_4core6result6ResultuReENCINvNtNtNtBY_9scheduler12multi_thread6worker12with_currentB2g_NCINvB31_14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB4s_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0IB2h_uNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0E0E0B2g_EB5J_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !71816
  %i.cp = call { i1, i8 } @_RNvNtNtCskmDBXs7hs3c_5tokio4task4coop4stop(), !dbg !71817 ; 2 uses
  %i.cq = extractvalue { i1, i8 } %i.cp, 0, !dbg !71817
  %i.cr = extractvalue { i1, i8 } %i.cp, 1, !dbg !71817
  store i8 %.sroa.030.0.ph.ph, ptr %i.h, align 1, !dbg !71818
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !71818
  %i.ct = zext i1 %i.cq to i8, !dbg !71818
  store i8 %i.ct, ptr %i.cs, align 1, !dbg !71818
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 2, !dbg !71818
  store i8 %i.cr, ptr %i.cu, align 1, !dbg !71818
  call void @llvm.experimental.noalias.scope.decl(metadata !71681), !dbg !71819
  %i.cv = invoke noundef i8 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE4withNCINvNtBW_10runtime_mt12exit_runtimeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2u_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0INtNtCscgRAwXFJnXP_4core6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE0NtNtBW_7runtime12EnterRuntimeEB3L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @17)
          to label %.noexc23 unwind label %bb.as, !dbg !71820

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECsfcROwRM8ZtH_11polars_plan.exit29, %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit
  ret void, !dbg !71821

.noexc23:                                         ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71822, !noalias !71682
  store i8 %i.cv, ptr %i.a, align 1, !dbg !71823, !noalias !71682
  %i.cw = load ptr, ptr %1, align 8, !dbg !71824, !alias.scope !71683, !noalias !71684, !nonnull !3007, !align !3097, !noundef !3007
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !71825
  invoke fastcc void @_RINvMNtNtCskmDBXs7hs3c_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0EB1d_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %i.cw, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230)
          to label %_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit.i unwind label %bb.aq, !dbg !71826

bb.aq:                                            ; preds = %.noexc23
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.a)
          to label %.body25 unwind label %bb.ar, !dbg !71827, !noalias !71682

_RNCINvMCsidoPH4Qgqxm_12polars_asyncNtB5_14RuntimeManager17block_in_place_onNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss2_0Es_0B1l_.exit.i: ; preds = %.noexc23
  invoke void @_RNvXNvNtNtNtCskmDBXs7hs3c_5tokio7runtime7context10runtime_mt12exit_runtimeNtB2_5ResetNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(1) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_place5ResetECsfcROwRM8ZtH_11polars_plan.exit29 unwind label %bb.as, !dbg !71828

bb.ar:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sortNtB2_12CollapseSortNtNtB4_9stack_opt16OptimizationRule13optimize_plan:bb.a
  store ptr %i.hd, ptr %i.e, align 8, !dbg !136755, !noalias !136499
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !136755
  store ptr %i.hg, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !136755, !noalias !136499
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !136755
  store ptr %3, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !136755, !noalias !136499
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1G_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBN_IB1d_bEB3K_EEINtB5_7ZipImplBW_B3G_E3newB1I_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !dbg !136756, !noalias !136500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !136757, !noalias !136497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !136757, !noalias !136497
  %.sroa.023.0.copyload.i = load ptr, ptr %i.h, align 8, !dbg !136758, !noalias !136498 ; 2 uses
  %.sroa.225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !136758
  %.sroa.225.0.copyload.i = load ptr, ptr %.sroa.225.0..sroa_idx.i, align 8, !dbg !136758, !noalias !136498 ; 4 uses
  %.sroa.326.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !136758
  %.sroa.326.0.copyload.i = load ptr, ptr %.sroa.326.0..sroa_idx.i, align 8, !dbg !136758, !noalias !136498 ; 2 uses
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !136758
  %.sroa.428.0.copyload.i = load ptr, ptr %.sroa.428.0..sroa_idx.i, align 8, !dbg !136758, !noalias !136498 ; 2 uses
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56, !dbg !136758
  %.sroa.529.0.copyload.i = load i64, ptr %.sroa.529.0..sroa_idx.i, align 8, !dbg !136758, !noalias !136498
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !136758
  %.sroa.631.0.copyload.i = load i64, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !136758, !noalias !136498
  %.sroa.7.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.h, i64 80, !dbg !136758
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i3, align 8, !dbg !136758, !noalias !136498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !136759, !noalias !136498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !136760, !noalias !136498
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 128, !dbg !136761 ; 3 uses
  %i.ih = load i64, ptr %i.ig, align 16, !dbg !136761, !noalias !136475, !noundef !3007
  %i.ii = call { ptr, i64 } @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness9is_sorted(i64 noundef %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3), !dbg !136762, !noalias !136475 ; 2 uses
  %i.ij = extractvalue { ptr, i64 } %i.ii, 0, !dbg !136762 ; 6 uses
  %.not.i = icmp eq ptr %i.ij, null, !dbg !136763
  br i1 %.not.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i, label %bb.br, !dbg !136764

bb.br:                                            ; preds = %._crit_edge
  %i.ik = extractvalue { ptr, i64 } %i.ii, 1, !dbg !136762 ; 2 uses
  store ptr %i.ij, ptr %i.g, align 8, !dbg !136765, !noalias !136498
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !136765
  store i64 %i.ik, ptr %i.il, align 8, !dbg !136765, !noalias !136498
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16, !dbg !136766 ; 2 uses
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.im, i64 %i.ik, !dbg !136767
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.225.0.copyload.i, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.225.0.copyload.i, i64 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 31 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i, !dbg !136768

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i, %bb.br
  %.sroa.821.0.i.i = phi i64 [ %.sroa.631.0.copyload.i, %bb.br ], [ %.sroa.821.1.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i ], !dbg !136769 ; 5 uses
  %.sroa.0.026.i.i = phi ptr [ %i.im, %bb.br ], [ %spec.select32.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i ], !dbg !136770 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !136771, !noalias !136505
  %i.iu = icmp eq ptr %.sroa.0.026.i.i, %i.in, !dbg !136772 ; 2 uses
  %spec.select32.idx.i.i = select i1 %i.iu, i64 0, i64 32, !dbg !136773
  %spec.select32.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 %spec.select32.idx.i.i, !dbg !136773
  %spec.select33.i.i = select i1 %i.iu, ptr null, ptr %.sroa.0.026.i.i, !dbg !136773 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.022.i.i), !dbg !136774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !136775, !noalias !136506
  %i.iv = icmp ult i64 %.sroa.821.0.i.i, %.sroa.7.0.copyload.i, !dbg !136776
  br i1 %i.iv, label %bb.bs, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1K_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBX_IB1h_bEB3O_EENCB2B_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i, !dbg !136776

bb.bs:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i
  %i.iw = add nuw i64 %.sroa.821.0.i.i, 1, !dbg !136777 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.225.0.copyload.i) ]
  %i.ix = getelementptr inbounds nuw [112 x i8], ptr %.sroa.023.0.copyload.i, i64 %.sroa.821.0.i.i, !dbg !136778
  %i.iy = getelementptr i8, ptr %i.ix, i64 96, !dbg !136779
  %.val2.i.i.i.i.i.i = load i64, ptr %i.iy, align 16, !dbg !136779, !noalias !136508, !noundef !3007 ; 2 uses
  %i.iz = load i64, ptr %i.io, align 8, !dbg !136780, !noalias !136509, !noundef !3007
  %i.ja = icmp ult i64 %.val2.i.i.i.i.i.i, %i.iz, !dbg !136781
  br i1 %i.ja, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1F_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBM_IB1c_bEB3J_EENtNtNtB8_6traits8iterator8Iterator4nextB1H_.exit.i.i.i, label %bb.bt, !dbg !136781, !prof !3151

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53
          to label %.noexc.i8 unwind label %.loopexit.split-lp.i, !dbg !136782, !noalias !136475

.noexc.i8:                                        ; preds = %bb.bt
  unreachable, !dbg !136782

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1F_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBM_IB1c_bEB3J_EENtNtNtB8_6traits8iterator8Iterator4nextB1H_.exit.i.i.i: ; preds = %bb.bs
  %i.jb = load ptr, ptr %i.ip, align 8, !dbg !136783, !noalias !136509, !nonnull !3007, !noundef !3007
  %i.jc = getelementptr inbounds nuw [144 x i8], ptr %i.jb, i64 %.val2.i.i.i.i.i.i, !dbg !136784
  invoke void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6schemaNtB6_5AExpr7to_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 16 %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.225.0.copyload.i)
          to label %.noexc16.i unwind label %.loopexit.i6, !dbg !136785, !noalias !136475

.noexc16.i:                                       ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1F_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBM_IB1c_bEB3J_EENtNtNtB8_6traits8iterator8Iterator4nextB1H_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.326.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.428.0.copyload.i) ]
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !dbg !136786, !range !3328, !noalias !136506
  %i.jd = icmp eq i8 %.pre.i.i.i, -38, !dbg !136786
  br i1 %i.jd, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1K_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBX_IB1h_bEB3O_EENCB2B_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i, label %bb.bu, !dbg !136787

bb.bu:                                            ; preds = %.noexc16.i
  %i.je = add i64 %.sroa.821.0.i.i, %.sroa.529.0.copyload.i, !dbg !136788 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.428.0.copyload.i, i64 %i.je, !dbg !136789
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.326.0.copyload.i, i64 %i.je, !dbg !136790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !136791, !noalias !136510
  %i.jh = load i8, ptr %i.jg, align 1, !dbg !136792, !range !3175, !noalias !136511, !noundef !3007
  %i.ji = load i8, ptr %i.jf, align 1, !dbg !136793, !range !3175, !noalias !136511, !noundef !3007
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1K_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBX_IB1h_bEB3O_EENCB2B_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i, !dbg !136794

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1K_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBX_IB1h_bEB3O_EENCB2B_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i: ; preds = %bb.bu, %.noexc16.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i
  %.sroa.423.0.i.i = phi i8 [ undef, %.noexc16.i ], [ %i.jh, %bb.bu ], [ undef, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i ], !dbg !136795 ; 2 uses
  %.sroa.821.1.i.i = phi i64 [ %i.iw, %.noexc16.i ], [ %i.iw, %bb.bu ], [ %.sroa.821.0.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i ], !dbg !136769
  %i.jj = phi i8 [ 3, %.noexc16.i ], [ %i.ji, %bb.bu ], [ 3, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i ], !dbg !136796 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !136797, !noalias !136506
  store ptr %spec.select33.i.i, ptr %i.c, align 8, !dbg !136771, !noalias !136505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022.i.i, i64 24, i1 false), !dbg !136771, !noalias !136505
  store i8 %.sroa.423.0.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !dbg !136771, !noalias !136505
  store i8 %i.jj, ptr %.sroa.524.0..sroa_idx.i.i, align 1, !dbg !136771, !noalias !136505
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022.i.i), !dbg !136798
  %.not.i.i = icmp eq ptr %spec.select33.i.i, null, !dbg !136771
  %.not8.i.i = icmp eq i8 %i.jj, 3                ; 2 uses
  %or.cond.i.i = or i1 %.not.i.i, %.not8.i.i, !dbg !136799
  br i1 %or.cond.i.i, label %bb.bv, label %bb.bw, !dbg !136799

bb.bv:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1K_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBX_IB1h_bEB3O_EENCB2B_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i
  %.pre.i.i = load i8, ptr %i.ir, align 1, !range !3309, !noalias !136505
  br label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i, !dbg !136799

bb.bw:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipIBN_INtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1K_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBX_IB1h_bEB3O_EENCB2B_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136512), !dbg !136800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select33.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !136513), !dbg !136801
  call void @llvm.experimental.noalias.scope.decl(metadata !136514), !dbg !136801
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 23, !dbg !136802
  %i.jl = load i8, ptr %i.jk, align 1, !dbg !136802, !range !3309, !alias.scope !136516, !noalias !136517, !noundef !3007 ; 2 uses
  %i.jm = icmp ugt i8 %i.jl, -41, !dbg !136803
  br i1 %i.jm, label %bb.by, label %bb.bx, !dbg !136803

bb.bx:                                            ; preds = %bb.bw
  %i.jn = add i8 %i.jl, 64, !dbg !136804
  %i.jo = call i8 @llvm.umin.i8(i8 %i.jn, i8 24), !dbg !136805
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.jo to i64, !dbg !136805
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !136806

bb.by:                                            ; preds = %bb.bw
  %i.jp = load ptr, ptr %.sroa.0.026.i.i, align 8, !dbg !136807, !alias.scope !136516, !noalias !136517, !noundef !3007
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 8, !dbg !136808
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !136808, !alias.scope !136516, !noalias !136517, !noundef !3007
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i, !dbg !136809

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i: ; preds = %bb.by, %bb.bx
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.jr, %bb.by ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.bx ], !dbg !136810 ; 2 uses
  %.sroa.0.0.i5.i.i.i.i = phi ptr [ %i.jp, %bb.by ], [ %.sroa.0.026.i.i, %bb.bx ], !dbg !136811
  %i.js = load i8, ptr %i.ir, align 1, !dbg !136812, !range !3309, !alias.scope !136518, !noalias !136519, !noundef !3007 ; 6 uses
  %i.jt = icmp ugt i8 %i.js, -41, !dbg !136813
  br i1 %i.jt, label %bb.ca, label %bb.bz, !dbg !136813

bb.bz:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.ju = add i8 %i.js, 64, !dbg !136814
  %i.jv = call i8 @llvm.umin.i8(i8 %i.ju, i8 24), !dbg !136815
  %.sroa.0.0.i.i6.i.i.i.i = zext nneg i8 %i.jv to i64, !dbg !136815
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i, !dbg !136816

bb.ca:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i.i.i
  %i.jw = load ptr, ptr %i.iq, align 8, !dbg !136817, !alias.scope !136518, !noalias !136519, !noundef !3007
  %i.jx = load i64, ptr %i.is, align 8, !dbg !136818, !alias.scope !136518, !noalias !136519, !noundef !3007
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i, !dbg !136819

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %.sroa.01.0.i7.i.i.i.i = phi i64 [ %i.jx, %bb.ca ], [ %.sroa.0.0.i.i6.i.i.i.i, %bb.bz ], !dbg !136820
  %.sroa.0.0.i8.i.i.i.i = phi ptr [ %i.jw, %bb.ca ], [ %i.iq, %bb.bz ], !dbg !136821
  %i.jy = icmp eq i64 %.sroa.01.0.i.i.i.i.i, %.sroa.01.0.i7.i.i.i.i, !dbg !136822
  br i1 %i.jy, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i, !dbg !136822

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.0.0.i5.i.i.i.i, ptr %.sroa.0.0.i8.i.i.i.i, i64 %.sroa.01.0.i.i.i.i.i), !dbg !136823, !noalias !136520
  %i.jz = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !136823
  br i1 %i.jz, label %bb.cb, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i, !dbg !136824

bb.cb:                                            ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 24, !dbg !136825
  %i.kb = load i8, ptr %i.ka, align 8, !dbg !136825, !range !3157, !alias.scope !136513, !noalias !136521, !noundef !3007 ; 2 uses
  %.not.i.i.i.i = icmp ne i8 %i.kb, 2, !dbg !136825
  %i.kc = icmp eq i8 %i.kb, %.sroa.423.0.i.i
  %or.cond35.i.i = and i1 %.not.i.i.i.i, %i.kc, !dbg !136826
  br i1 %or.cond35.i.i, label %bb.cc, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i, !dbg !136826

bb.cc:                                            ; preds = %bb.cb
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i, i64 25, !dbg !136827
  %i.ke = load i8, ptr %i.kd, align 1, !dbg !136827, !range !3157, !alias.scope !136513, !noalias !136521, !noundef !3007
  %i.kf = icmp eq i8 %i.ke, %i.jj
  br i1 %i.kf, label %bb.cd, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i, !dbg !136828

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !136829, !noalias !136505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.iq, i64 32, i1 false), !dbg !136829, !noalias !136505
  %i.kg = load i8, ptr %i.it, align 1, !dbg !136830, !range !3309, !alias.scope !136522, !noalias !136505, !noundef !3007
  %i.kh = icmp eq i8 %i.kg, -40, !dbg !136831
  br i1 %i.kh, label %bb.ce, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i, !dbg !136831, !prof !3061

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i unwind label %.loopexit.i6, !dbg !136832, !noalias !136475

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i: ; preds = %bb.cc, %bb.cb, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i, %bb.bv
  %.not8.i35.i = phi i1 [ %.not8.i.i, %bb.bv ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i ], [ false, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i ], [ false, %bb.cb ], [ false, %bb.cc ] ; 2 uses
  %i.ki = phi i8 [ %.pre.i.i, %bb.bv ], [ %i.js, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit9.i.i.i.i ], [ %i.js, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i ], [ %i.js, %bb.cb ], [ %i.js, %bb.cc ]
  %i.kj = icmp ne i8 %i.ki, -40
  %or.cond39.not.i.i = select i1 %.not8.i35.i, i1 true, i1 %i.kj, !dbg !136833, !prof !136523
  br i1 %or.cond39.not.i.i, label %bb.ci, label %bb.cf, !dbg !136833, !prof !136523

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEBO_.exit.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !136834, !noalias !136505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !136833, !noalias !136505
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_.exit.i.i, !dbg !136835

bb.cf:                                            ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iq)
          to label %bb.ci unwind label %.loopexit.split-lp.i, !dbg !136836, !noalias !136475

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i: ; preds = %._crit_edge, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !136837, !noalias !136498
  br label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread, !dbg !136838

.loopexit.i6:                                     ; preds = %bb.ce, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNvNtNtB1F_9optimizer13collapse_sort30try_prune_sort_with_sortednesss_0EIBM_IB1c_bEB3J_EENtNtNtB8_6traits8iterator8Iterator4nextB1H_.exit.i.i.i
  %lpad.loopexit.i7 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp.i:                             ; preds = %bb.cr, %bb.cq, %bb.cf, %bb.bt
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i6
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i7, %.loopexit.i6 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.kk = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !dbg !136839, !noalias !136525
  %i.kl = icmp eq i64 %i.kk, 1, !dbg !136840
  br i1 %i.kl, label %bb.ch, label %common.resume, !dbg !136840

bb.ch:                                            ; preds = %bb.cg
  fence acquire, !dbg !136841
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g) #52
          to label %common.resume unwind label %bb.cu, !dbg !136842, !noalias !136475

bb.ci:                                            ; preds = %bb.cf, %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortednesss1_0B9_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !136833, !noalias !136505
  br i1 %.not8.i35.i, label %bb.cl, label %bb.cj, !dbg !136843

bb.cj:                                            ; preds = %bb.ci
  %i.km = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !dbg !136844, !noalias !136526
  %i.kn = icmp eq i64 %i.km, 1, !dbg !136845
  br i1 %i.kn, label %bb.ck, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i, !dbg !136845

bb.ck:                                            ; preds = %bb.cj
  fence acquire, !dbg !136846
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g) #52, !dbg !136847, !noalias !136475
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i, !dbg !136847

bb.cl:                                            ; preds = %bb.ci
  %i.ko = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !136848
  %i.kp = load i64, ptr %i.ko, align 8, !dbg !136848, !range !3059, !noalias !136475, !noundef !3007
  %i.kq = trunc nuw i64 %i.kp to i1, !dbg !136849
  br i1 %i.kq, label %bb.cm, label %bb.cn, !dbg !136849

bb.cm:                                            ; preds = %bb.cl
  %i.kr = load i64, ptr %i.ig, align 16, !dbg !136850, !noalias !136475, !noundef !3007
  %i.ks = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !136851
  %i.kt = load i64, ptr %i.ks, align 16, !dbg !136851, !noalias !136475, !noundef !3007
  %i.ku = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !136852
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !136852, !noalias !136475, !noundef !3007
  %i.kw = trunc i64 %i.kv to i32, !dbg !136852
  br label %bb.co, !dbg !136853

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !136854, !noalias !136498
  %i.kx = load i64, ptr %i.ig, align 16, !dbg !136855, !noalias !136475, !noundef !3007 ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %.val2, !dbg !136856
  br i1 %i.ky, label %bb.cr, label %bb.cq, !dbg !136856, !prof !3151

bb.co:                                            ; preds = %bb.ct, %bb.cm
  %.sroa.1018.0 = phi i32 [ %i.kw, %bb.cm ], [ %.sroa.1018.0.copyload20, %bb.ct ], !dbg !136857
  %.sroa.915.0 = phi i64 [ %i.kt, %bb.cm ], [ %.sroa.915.0.copyload17, %bb.ct ], !dbg !136857
  %.sroa.812.0 = phi i64 [ %i.kr, %bb.cm ], [ %.sroa.812.0.copyload14, %bb.ct ], !dbg !136857
  %.sroa.010.1 = phi i64 [ -9223372036854775803, %bb.cm ], [ %.sroa.010.0.copyload11, %bb.ct ], !dbg !136857 ; 2 uses
  %i.kz = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !dbg !136858, !noalias !136529
  %i.la = icmp eq i64 %i.kz, 1, !dbg !136859
  br i1 %i.la, label %bb.cp, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit, !dbg !136859

bb.cp:                                            ; preds = %bb.co
  fence acquire, !dbg !136860
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g) #52, !dbg !136861, !noalias !136475
  br label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit, !dbg !136861

bb.cq:                                            ; preds = %bb.cn
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #49
          to label %bb.cs unwind label %.loopexit.split-lp.i, !dbg !136862, !noalias !136475

bb.cr:                                            ; preds = %bb.cn
  %i.lb = getelementptr inbounds nuw [368 x i8], ptr %.val, i64 %i.kx, !dbg !136863
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans2irNtB5_2IRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(368) %i.f, ptr noundef nonnull align 16 %i.lb)
          to label %bb.ct unwind label %.loopexit.split-lp.i, !dbg !136864, !noalias !136475

bb.cs:                                            ; preds = %bb.cq
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %.sroa.010.0.copyload11 = load i64, ptr %i.f, align 16, !dbg !136865, !noalias !136530
  %.sroa.812.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !136865
  %.sroa.812.0.copyload14 = load i64, ptr %.sroa.812.0..sroa_idx13, align 8, !dbg !136865, !noalias !136530
  %.sroa.915.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !136865
  %.sroa.915.0.copyload17 = load i64, ptr %.sroa.915.0..sroa_idx16, align 16, !dbg !136865, !noalias !136530
  %.sroa.1018.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !136865
  %.sroa.1018.0.copyload20 = load i32, ptr %.sroa.1018.0..sroa_idx19, align 8, !dbg !136865, !noalias !136530
  %.sroa.1121.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.f, i64 28, !dbg !136865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121, ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121.0..sroa_idx22, i64 340, i1 false), !dbg !136865, !noalias !136530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !136866, !noalias !136498
  br label %bb.co, !dbg !136853

bb.cu:                                            ; preds = %bb.ch
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !136867, !noalias !136475
  unreachable, !dbg !136867

_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !136837, !noalias !136498
  %.not1 = icmp eq i64 %.sroa.010.1, -9223372036854775781, !dbg !136731
  br i1 %.not1, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread, label %bb.cw, !dbg !136868

bb.cv:                                            ; preds = %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread, %bb.cw, %bb.bm
  ret void, !dbg !136869

bb.cw:                                            ; preds = %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit
  store i64 %.sroa.010.1, ptr %0, align 16, !dbg !136870
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !136870
  store i64 %.sroa.812.0, ptr %.sroa.812.0..sroa_idx, align 8, !dbg !136870
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !136870
  store i64 %.sroa.915.0, ptr %.sroa.915.0..sroa_idx, align 16, !dbg !136870
  %.sroa.1018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !136870
  store i32 %.sroa.1018.0, ptr %.sroa.1018.0..sroa_idx, align 8, !dbg !136870
  %.sroa.1121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !136870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(340) %.sroa.1121, i64 340, i1 false), !dbg !136870
  br label %bb.cv, !dbg !136730

_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit.thread: ; preds = %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness0B9_.exit.i.i, %bb.bn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit20.i, %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13collapse_sort30try_prune_sort_with_sortedness.exit
  store i64 -9223372036854775781, ptr %0, align 16, !dbg !136871
  br label %bb.cv, !dbg !136869
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_exprNtB2_19SimplifyBooleanRuleNtNtB4_9stack_opt16OptimizationRule13optimize_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %4, i32 noundef %5) unnamed_addr #1 !dbg !136872 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 15 uses
  %i.b = alloca [17 x i8], align 1                ; 4 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !137159 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !137160 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !137160, !noundef !3007 ; 9 uses
  %i.h = icmp ult i64 %3, %i.g, !dbg !137161
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !137161, !prof !3151

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !137162
  unreachable, !dbg !137162

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !dbg !137159, !nonnull !3007, !noundef !3007 ; 9 uses
  %i.j = getelementptr inbounds nuw [144 x i8], ptr %i.i, i64 %3, !dbg !137163 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112, !dbg !137164
  %i.l = load i64, ptr %i.k, align 16, !dbg !137164, !range !3500, !noundef !3007 ; 3 uses
  %i.m = icmp ne i64 %i.l, -9223372036854775791, !dbg !137164
  tail call void @llvm.assume(i1 %i.m), !dbg !137164
  %i.n = xor i64 %i.l, -9223372036854775808, !dbg !137164
  %i.o = icmp slt i64 %i.l, 0, !dbg !137164
  %i.p = select i1 %i.o, i64 %i.n, i64 17, !dbg !137164
  switch i64 %i.p, label %_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr11eval_negate.exit [
    i64 5, label %bb.d
    i64 12, label %bb.be
    i64 17, label %bb.bv
  ], !dbg !137165

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !137166
  %i.q = load i64, ptr %i.j, align 16, !dbg !137167, !noundef !3007 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !137168
  %i.s = load i8, ptr %i.r, align 16, !dbg !137168, !range !4288, !noundef !3007
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !137169
  %i.u = load i64, ptr %i.t, align 8, !dbg !137169, !noundef !3007 ; 6 uses
  %i.v = load i8, ptr %1, align 1, !dbg !137170, !range !3175, !noundef !3007
  %i.w = trunc nuw i8 %i.v to i1, !dbg !137170    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137078), !dbg !137166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137079), !dbg !137166
  %i.x = and i32 %5, 65536, !dbg !137171
  %i.y = icmp ne i32 %i.x, 0, !dbg !137171        ; 6 uses
  switch i8 %i.s, label %.thread.i [
    i8 15, label %bb.e
    i8 16, label %bb.f
  ], !dbg !137172

.thread.i:                                        ; preds = %bb.bc, %bb.bb, %bb.ay, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.w, %bb.r, %bb.o, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !137173
  store i64 -9223372036854775786, ptr %i.z, align 16, !dbg !137173, !alias.scope !137078, !noalias !137079
  br label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer13simplify_expr5arity15simplify_binary.exit, !dbg !137174

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %i.q, %i.g, !dbg !137175
  br i1 %i.aa, label %bb.h, label %bb.g, !dbg !137175, !prof !3151
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan9traversal7visitorINtB4_10FnVisitorsNtNtCs2mZqlW55729_12polars_utils5arena4NodeNtNtNtNtNtB8_5plans9optimizer12ir_traversal7storage18IRTraversalStorageuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvNtB1W_15expand_datasets15expand_datasets0NCB3J_s_0NCB3J_s0_0ENtB4_11NodeVisitor9pre_visitB8_:bb.a
  %i.ef = load i64, ptr %i.ak, align 8, !dbg !151760, !noalias !151544, !noundef !3007
  %i.eg = icmp ult i64 %2, %i.ef, !dbg !151761
  br i1 %i.eg, label %bb.ba, label %bb.az, !dbg !151761, !prof !3151

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #49
          to label %bb.ar unwind label %bb.ax, !dbg !151762, !noalias !151544

bb.ba:                                            ; preds = %bb.ay
  %i.eh = load ptr, ptr %i.an, align 8, !dbg !151763, !noalias !151544, !nonnull !3007, !noundef !3007
  %i.ei = getelementptr inbounds nuw [368 x i8], ptr %i.eh, i64 %2, !dbg !151764 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.r, ptr noundef nonnull align 16 dereferenceable(368) %i.ei, i64 368, i1 false), !dbg !151765, !noalias !151544
  store i64 -9223372036854775782, ptr %i.ei, align 16, !dbg !151766, !noalias !151544
  %i.ej = load i64, ptr %i.r, align 16, !dbg !151767, !range !3497, !noalias !151544, !noundef !3007 ; 2 uses
  %i.ek = icmp ne i64 %i.ej, -9223372036854775786, !dbg !151767
  call void @llvm.assume(i1 %i.ek), !dbg !151767
  %i.el = icmp eq i64 %i.ej, -9223372036854775801, !dbg !151768
  br i1 %i.el, label %bb.bb, label %bb.bg, !dbg !151768, !prof !3151

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !151769, !noalias !151544
  call void @llvm.experimental.noalias.scope.decl(metadata !151587), !dbg !151770
  %i.em = load ptr, ptr %i.af, align 8, !dbg !151771, !alias.scope !151587, !noalias !151544, !noundef !3007 ; 2 uses
  %.not.i63.i.i = icmp eq ptr %i.em, null, !dbg !151771
  br i1 %.not.i63.i.i, label %bb.bc, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEE18get_or_insert_withNCNCNCNvB1i_15expand_datasetss_00s1_0EB1o_.exit.i.i, !dbg !151772

bb.bc:                                            ; preds = %bb.bb
  %i.en = invoke noundef nonnull ptr @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasetsNtB4_23PyScanResolveThreadPool3new()
          to label %.noexc64.i.i unwind label %bb.bh, !dbg !151773, !noalias !151544 ; 2 uses

.noexc64.i.i:                                     ; preds = %bb.bc
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !dbg !151774, !noalias !151588
  %i.eo = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !dbg !151775, !noalias !151588 ; 6 uses
  %i.ep = icmp eq ptr %i.eo, null, !dbg !151776
  br i1 %i.ep, label %bb.bd, label %_RNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s1_0Bd_.exit.i.i.i, !dbg !151777, !prof !3061

bb.bd:                                            ; preds = %.noexc64.i.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc.i.i.i.i unwind label %bb.be, !dbg !151778, !noalias !151589

.noexc.i.i.i.i:                                   ; preds = %bb.bd
  unreachable, !dbg !151778

bb.be:                                            ; preds = %bb.bd
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEEB1r_(ptr nonnull %i.en) #51
          to label %bb.ca unwind label %bb.bf, !dbg !151779, !noalias !151589

bb.bf:                                            ; preds = %bb.be
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !151780, !noalias !151589
  unreachable, !dbg !151780

_RNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s1_0Bd_.exit.i.i.i: ; preds = %.noexc64.i.i
  store i64 1, ptr %i.eo, align 8, !dbg !151781, !noalias !151589
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8, !dbg !151781
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !151781, !noalias !151589
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 16, !dbg !151781
  store ptr %i.en, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !151781, !noalias !151589
  store ptr %i.eo, ptr %i.af, align 8, !dbg !151782, !alias.scope !151587, !noalias !151544
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEE18get_or_insert_withNCNCNCNvB1i_15expand_datasetss_00s1_0EB1o_.exit.i.i, !dbg !151783

bb.bg:                                            ; preds = %bb.ba
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #49
          to label %bb.ar unwind label %bb.bh, !dbg !151784, !noalias !151544

bb.bh:                                            ; preds = %bb.bg, %bb.bc
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEE18get_or_insert_withNCNCNCNvB1i_15expand_datasetss_00s1_0EB1o_.exit.i.i: ; preds = %_RNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s1_0Bd_.exit.i.i.i, %bb.bb
  %i.et = phi ptr [ %i.eo, %_RNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s1_0Bd_.exit.i.i.i ], [ %i.em, %bb.bb ], !dbg !151785
  %i.eu = atomicrmw add ptr %i.et, i64 1 monotonic, align 8, !dbg !151786, !noalias !151544
  %i.ev = icmp slt i64 %i.eu, 0, !dbg !151787
  br i1 %i.ev, label %bb.bk, label %bb.bi, !dbg !151787

bb.bi:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEE18get_or_insert_withNCNCNCNvB1i_15expand_datasetss_00s1_0EB1o_.exit.i.i
  %i.ew = load ptr, ptr %i.af, align 8, !dbg !151788, !noalias !151544, !nonnull !3007, !noundef !3007 ; 3 uses
  store ptr %i.ew, ptr %i.q, align 8, !dbg !151789, !noalias !151544
  %i.ex = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !151790, !noalias !151544
  %i.ey = icmp eq i32 %i.ex, 0, !dbg !151791
  br i1 %i.ey, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.bj, !dbg !151791, !prof !3151

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !151792, !noalias !151544
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.g, align 8, !dbg !151793, !noalias !151544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !151794, !noalias !151544
  store ptr %i.g, ptr %i.f, align 8, !dbg !151794, !noalias !151544
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc67.i.i unwind label %bb.by, !dbg !151795, !noalias !151544

.noexc67.i.i:                                     ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !151796, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !151797, !noalias !151544
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit.i.i, !dbg !151797

bb.bk:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolEE18get_or_insert_withNCNCNCNvB1i_15expand_datasetss_00s1_0EB1o_.exit.i.i
  call void @llvm.trap(), !dbg !151798
  unreachable, !dbg !151798

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %.noexc67.i.i, %bb.bi
  %i.ez = load ptr, ptr %i.ac, align 8, !dbg !151799, !noalias !151544, !noundef !3007
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !151799
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !151799, !noalias !151544
  %i.fc = load ptr, ptr %i.z, align 8, !dbg !151799, !noalias !151544, !noundef !3007
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !151799
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !151799, !noalias !151544
  %i.ff = load i8, ptr %i.aa, align 1, !dbg !151799, !range !3175, !noalias !151544, !noundef !3007
  %i.fg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 48), align 8, !dbg !151800, !range !3059, !noalias !151544, !noundef !3007
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 56), align 8, !dbg !151801, !noalias !151544 ; 2 uses
  br label %bb.bl, !dbg !151802

bb.bl:                                            ; preds = %bb.bl, %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.fi = atomicrmw add ptr @_RNvNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !dbg !151803, !noalias !151595 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fi, 0, !dbg !151804
  br i1 %.not.i.i.i.i, label %bb.bl, label %bb.bm, !dbg !151805

bb.bm:                                            ; preds = %bb.bl
  %i.fj = trunc nuw i64 %i.fg to i1, !dbg !151801 ; 2 uses
  %.sroa.023.0.v.i.i = select i1 %i.fj, i64 480, i64 712, !dbg !151801
  %.sroa.023.0.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sroa.023.0.v.i.i, !dbg !151801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !151806, !noalias !151595
  store i64 %.sroa.02.0.i.i, ptr %i.c, align 16, !dbg !151806, !noalias !151596
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !151806
  store i64 %.sroa.53.0.i.i, ptr %.sroa.490.0..sroa_idx.i.i, align 8, !dbg !151806, !noalias !151596
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !151806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %.sroa.591.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(368) %i.r, i64 368, i1 false), !dbg !151806, !noalias !151544
  %.sroa.692.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 384, !dbg !151806
  store ptr %i.ez, ptr %.sroa.692.0..sroa_idx.i.i, align 16, !dbg !151806, !noalias !151596
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 392, !dbg !151806
  store i64 %i.fb, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !151806, !noalias !151596
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 400, !dbg !151806
  store ptr %i.fc, ptr %.sroa.8.0..sroa_idx.i.i, align 16, !dbg !151806, !noalias !151596
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408, !dbg !151806
  store i64 %i.fe, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !151806, !noalias !151596
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 416, !dbg !151806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !151806, !noalias !151544
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 440, !dbg !151806
  store ptr %i.ew, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !151806, !noalias !151596
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 448, !dbg !151806
  store i64 %2, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !dbg !151806, !noalias !151596
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 456, !dbg !151806
  store i8 %i.ff, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !dbg !151806, !noalias !151596
  %.sroa.01.0.v.i.i.i.i.i = select i1 %i.fj, i64 504, i64 512, !dbg !151807
  %.sroa.01.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sroa.01.0.v.i.i.i.i.i, !dbg !151807 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 16, !dbg !151808
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !151809, !noalias !151595, !noundef !3007 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null, !dbg !151809
  br i1 %.not.i.i.i.i.i, label %.noexc70.i.i, label %bb.bn, !dbg !151810

bb.bn:                                            ; preds = %bb.bm
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 24, !dbg !151809
  %i.fn = load ptr, ptr %i.fm, align 8, !dbg !151811, !noalias !151595, !nonnull !3007, !align !3097, !noundef !3007
  %i.fo = atomicrmw add ptr %i.fl, i64 1 monotonic, align 8, !dbg !151812, !noalias !151595
  %i.fp = icmp slt i64 %i.fo, 0, !dbg !151813
  br i1 %i.fp, label %bb.bo, label %.noexc70.i.i, !dbg !151813

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.trap(), !dbg !151814
  unreachable, !dbg !151814

.noexc70.i.i:                                     ; preds = %bb.bn, %bb.bm
  %.sroa.5.0.i.i.i.i.i = phi ptr [ undef, %bb.bm ], [ %i.fn, %bb.bn ], !dbg !151815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !151816, !noalias !151595
  call void @_RINvNtNtCskmDBXs7hs3c_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0ENtNtBR_8schedule16BlockingScheduleEB1C_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(464) %i.c, ptr noundef %i.fl, ptr %.sroa.5.0.i.i.i.i.i, i64 noundef %i.fi), !dbg !151816, !noalias !151544
  %i.fq = load ptr, ptr %i.b, align 8, !dbg !151817, !noalias !151595, !nonnull !3007, !noundef !3007
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !151818
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !151818, !noalias !151595, !nonnull !3007, !noundef !3007 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !151819, !noalias !151595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !151820, !noalias !151595
  %i.ft = invoke { i64, ptr } @_RNvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.023.0.i.i, ptr noundef nonnull %i.fq, i1 noundef zeroext true, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 48))
          to label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0TNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB1D_2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1F_.exit.i.i.i unwind label %bb.bp, !dbg !151821, !noalias !151597 ; 2 uses

bb.bp:                                            ; preds = %.noexc70.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.fs)
          to label %.noexc.i.i68.i.i unwind label %bb.br, !dbg !151822, !noalias !151597

.noexc.i.i68.i.i:                                 ; preds = %bb.bp
  br i1 %i.fv, label %bb.bq, label %.body71.thread.i.i, !dbg !151823

bb.bq:                                            ; preds = %.noexc.i.i68.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.fs)
          to label %.body71.thread.i.i unwind label %bb.br, !dbg !151824, !noalias !151597

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !151825, !noalias !151597
  unreachable, !dbg !151825

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0TNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB1D_2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1F_.exit.i.i.i: ; preds = %.noexc70.i.i
  %i.fx = extractvalue { i64, ptr } %i.ft, 0, !dbg !151826
  %i.fy = extractvalue { i64, ptr } %i.ft, 1, !dbg !151826 ; 2 uses
  %i.fz = trunc nuw i64 %i.fx to i1, !dbg !151827
  %.not.i69.i.i = icmp ne ptr %i.fy, null
  %or.cond.not.i.i.i = select i1 %i.fz, i1 %.not.i69.i.i, i1 false, !dbg !151827, !prof !3110
  br i1 %or.cond.not.i.i.i, label %bb.bs, label %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0TNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB1x_2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1z_.exit.i.i, !dbg !151827, !prof !3110

bb.bs:                                            ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0TNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB1D_2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1F_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !151828, !noalias !151598
  store ptr %i.fy, ptr %i.e, align 8, !dbg !151828, !noalias !151598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !151829, !noalias !151598
  store ptr %i.e, ptr %i.d, align 8, !dbg !151829, !noalias !151598
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !151829
  store ptr @_RNvXs7_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !dbg !151829, !noalias !151598
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #49
          to label %bb.bu unwind label %bb.bt, !dbg !151830, !noalias !151600

bb.bt:                                            ; preds = %bb.bs
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !dbg !151831, !noalias !151598, !nonnull !3007, !noundef !3007
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val.i.i.i) #51
          to label %bb.bw unwind label %bb.bv, !dbg !151831, !noalias !151600

bb.bu:                                            ; preds = %bb.bs
  unreachable

bb.bv:                                            ; preds = %bb.bx, %bb.bw, %bb.bt
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !151832, !noalias !151600
  unreachable, !dbg !151832

bb.bw:                                            ; preds = %bb.bt
  %i.gc = invoke noundef zeroext i1 @_RNvMNtNtNtCskmDBXs7hs3c_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.fs)
          to label %.noexc.i.i.i unwind label %bb.bv, !dbg !151833, !noalias !151600

.noexc.i.i.i:                                     ; preds = %bb.bw
  br i1 %i.gc, label %bb.bx, label %.body71.thread.i.i, !dbg !151834

bb.bx:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtNtCskmDBXs7hs3c_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.fs)
          to label %.body71.thread.i.i unwind label %bb.bv, !dbg !151835, !noalias !151600

_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0TNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB1x_2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1z_.exit.i.i: ; preds = %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0TNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB1D_2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1F_.exit.i.i.i
  call void @_RNvMs4_NtNtCslt8cbK4E2O5_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleTNtNtB1w_5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEE4pushB3O_(ptr noundef nonnull align 8 %i.ah, ptr noundef nonnull %i.fs), !dbg !151836, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !151837, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !151838, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !151839, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !151840, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !151841, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !151842, !noalias !151544
  br label %bb.cj, !dbg !151842

bb.by:                                            ; preds = %bb.bj
  %lpad.thr_comm.split-lp131.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !dbg !151843, !noalias !151601
  %i.ge = icmp eq i64 %i.gd, 1, !dbg !151844
  br i1 %i.ge, label %bb.bz, label %bb.ca, !dbg !151844

bb.bz:                                            ; preds = %bb.by
  fence acquire, !dbg !151845
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets23PyScanResolveThreadPoolE9drop_slowBO_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.q) #52
          to label %bb.ca unwind label %bb.as, !dbg !151846, !noalias !151544

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bh, %bb.be
  %.pn36.ph.i.i = phi { ptr, i32 } [ %i.eq, %bb.be ], [ %i.es, %bb.bh ], [ %lpad.thr_comm.split-lp131.i.i, %bb.bz ], [ %lpad.thr_comm.split-lp131.i.i, %bb.by ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREBM_(ptr noalias noundef align 16 dereferenceable(368) %i.r) #51
          to label %bb.cb unwind label %bb.as, !dbg !151838, !noalias !151544

bb.cb:                                            ; preds = %bb.ca, %bb.ax
  %.pn36.pn.ph.i.i = phi { ptr, i32 } [ %i.ee, %bb.ax ], [ %.pn36.ph.i.i, %bb.ca ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #51
          to label %._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109_crit_edge.i.i unwind label %bb.as, !dbg !151839, !noalias !151544

._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109_crit_edge.i.i: ; preds = %bb.cb
  %.pre135.i.i = load ptr, ptr %i.z, align 8, !dbg !151847, !alias.scope !151602, !noalias !151544
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109.i.i, !dbg !151839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109.i.i: ; preds = %._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109_crit_edge.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.i.i, %bb.ap, %bb.am, %bb.ad
  %i.gf = phi ptr [ %i.dd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.dd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ], [ %.pre135.i.i, %._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109_crit_edge.i.i ], [ %i.dd, %bb.ad ], [ %i.dd, %bb.am ], [ %i.dd, %bb.ap ], !dbg !151847 ; 2 uses
  %.pn36.pn.pn.ph.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %.pn108.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ], [ %.pn36.pn.ph.i.i, %._RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109_crit_edge.i.i ], [ %i.dc, %bb.ad ], [ %i.dx, %bb.am ], [ %i.dz, %bb.ap ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151602), !dbg !151840
  %i.gg = icmp eq ptr %i.gf, null, !dbg !151847
  br i1 %i.gg, label %thread-pre-split.i.i, label %bb.cc, !dbg !151847

bb.cc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109.i.i
  %i.gh = atomicrmw sub ptr %i.gf, i64 1 release, align 8, !dbg !151848, !noalias !151603
  %i.gi = icmp eq i64 %i.gh, 1, !dbg !151849
  br i1 %i.gi, label %bb.cd, label %thread-pre-split.i.i, !dbg !151849

bb.cd:                                            ; preds = %bb.cc
  fence acquire, !dbg !151850
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #52
          to label %thread-pre-split.i.i unwind label %bb.as, !dbg !151851, !noalias !151544

.body71.thread.i.i:                               ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.bx, %.noexc.i.i.i, %bb.bq, %.noexc.i.i68.i.i
  %.pn36.pn.pn.pn97.i.i = phi { ptr, i32 } [ %i.ga, %bb.bx ], [ %.pn36.pn.pn.pn.ph.i.i, %bb.cf ], [ %i.fu, %.noexc.i.i68.i.i ], [ %i.fu, %bb.bq ], [ %i.ga, %.noexc.i.i.i ], [ %.pn36.pn.pn.pn.ph.i.i, %bb.cg ], [ %.pn36.pn.pn.pn.ph.i.i, %bb.ce ]
  resume { ptr, i32 } %.pn36.pn.pn.pn97.i.i, !dbg !151748

thread-pre-split.i.i:                             ; preds = %bb.cd, %bb.cc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109.i.i, %bb.u, %bb.t, %bb.k
  %.pn36.pn.pn.pn.ph.ph.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.ph.i.i, %bb.cc ], [ %.pn36.pn.pn.ph.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtBN_6string6StringEECsfcROwRM8ZtH_11polars_plan.exit.thread109.i.i ], [ %.pn36.pn.pn.ph.i.i, %bb.cd ], [ %i.cp, %bb.u ], [ %i.bu, %bb.k ], [ %i.cp, %bb.t ]
  %.pr.i.i = load ptr, ptr %i.ac, align 8, !dbg !151852, !alias.scope !151604, !noalias !151544
  br label %bb.ce, !dbg !151842

bb.ce:                                            ; preds = %thread-pre-split.i.i, %bb.o
  %i.gj = phi ptr [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bw, %bb.o ], !dbg !151852 ; 2 uses
  %.pn36.pn.pn.pn.ph.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.ph.ph.i.i, %thread-pre-split.i.i ], [ %i.cb, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151604), !dbg !151842
  %i.gk = icmp eq ptr %i.gj, null, !dbg !151852
  br i1 %i.gk, label %.body71.thread.i.i, label %bb.cf, !dbg !151852

bb.cf:                                            ; preds = %bb.ce
  %i.gl = atomicrmw sub ptr %i.gj, i64 1 release, align 8, !dbg !151853, !noalias !151605
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !151854
  br i1 %i.gm, label %bb.cg, label %.body71.thread.i.i, !dbg !151854

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !dbg !151855
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #52
          to label %.body71.thread.i.i unwind label %bb.as, !dbg !151856, !noalias !151544

bb.ch:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !151857, !noalias !151544
  br label %bb.cj, !dbg !151857

bb.ci:                                            ; preds = %bb.f
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !151858
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !151859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx2.i, i64 64, i1 false), !dbg !151858, !noalias !151606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !151857, !noalias !151544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !151860, !noalias !151542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !151860, !noalias !151542
  br label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_0B9_.exit, !dbg !151861

bb.cj:                                            ; preds = %bb.ch, %_RINvMs4_NtNtNtCskmDBXs7hs3c_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_00s2_0TNtNtCs2mZqlW55729_12polars_utils5arena4NodeINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB1x_2ir2IRNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB1z_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !151860, !noalias !151542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !151860, !noalias !151542
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !151862
  store i8 0, ptr %i.gn, align 8, !dbg !151862, !alias.scope !151538, !noalias !151606
  br label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_0B9_.exit, !dbg !151863

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer15expand_datasets15expand_datasetss_0B9_.exit: ; preds = %bb.ci, %bb.cj
  %.sink.i = phi i64 [ 18, %bb.cj ], [ %i.be, %bb.ci ]
  store i64 %.sink.i, ptr %0, align 8, !dbg !151864, !alias.scope !151538, !noalias !151606
  ret void, !dbg !151865
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan9traversal7visitorINtB4_10FnVisitorsNtNtCs2mZqlW55729_12polars_utils5arena4NodeRINtB1b_5ArenaNtNtNtB8_5plans2ir2IREuuNCINvNtNtB28_9optimizer12ir_traversal17get_ir_cache_hitsjE0NCB2u_s_0NCB2u_s0_0ENtB4_11NodeVisitor10post_visitB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readnone captures(none) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %4) unnamed_addr #5 !dbg !151866 {
bb.a:
  ret i1 false, !dbg !151867
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan9traversal7visitorINtB4_10FnVisitorsNtNtCs2mZqlW55729_12polars_utils5arena4NodeRINtB1b_5ArenaNtNtNtB8_5plans2ir2IREuuNCINvNtNtB28_9optimizer12ir_traversal17get_ir_cache_hitsjE0NCB2u_s_0NCB2u_s0_0ENtB4_11NodeVisitor12default_edgeB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !151868 {
bb.a:
  ret void, !dbg !151869
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 2) i8 @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan9traversal7visitorINtB4_10FnVisitorsNtNtCs2mZqlW55729_12polars_utils5arena4NodeRINtB1b_5ArenaNtNtNtB8_5plans2ir2IREuuNCINvNtNtB28_9optimizer12ir_traversal17get_ir_cache_hitsjE0NCB2u_s_0NCB2u_s0_0ENtB4_11NodeVisitor9pre_visitB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readnone captures(none) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %4) unnamed_addr #1 !dbg !151870 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !dbg !151926 ; 2 uses
  %.val1 = load ptr, ptr %2, align 8, !dbg !151926, !nonnull !3007, !align !3097, !noundef !3007 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !151927
  %i.e = load i64, ptr %i.d, align 8, !dbg !151927, !noundef !3007
  %i.f = icmp ult i64 %1, %i.e, !dbg !151928
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !151928, !prof !3151

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #53, !dbg !151929
  unreachable, !dbg !151929

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !151930
  %i.h = load ptr, ptr %i.g, align 8, !dbg !151930, !nonnull !3007, !noundef !3007
  %i.i = getelementptr inbounds nuw [368 x i8], ptr %i.h, i64 %1, !dbg !151931 ; 2 uses
  %i.j = load i64, ptr %i.i, align 16, !dbg !151932, !range !3497, !noundef !3007 ; 2 uses
  %i.k = icmp ne i64 %i.j, -9223372036854775786, !dbg !151932
  tail call void @llvm.assume(i1 %i.k), !dbg !151932
  %i.l = icmp eq i64 %i.j, -9223372036854775796, !dbg !151933
  br i1 %i.l, label %bb.d, label %_RNCINvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal17get_ir_cache_hitsjEs_0Ba_.exit, !dbg !151933

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !151934
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !151934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !dbg !151934
  call void @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdINtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer12ir_traversal16IRCacheNodeVisitjENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE5entryB1L_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.c), !dbg !151935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !151936
  %i.n = load ptr, ptr %i.a, align 8, !dbg !151937, !noundef !3007 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null, !dbg !151937
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !151938 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !151938 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e, !dbg !151939

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !dbg !151940, !noundef !3007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !151941
end_hunk_7
