Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_dtype-1a69546bcdb44d93.polars_dtype.5d47620fe5dcef62-cgu.07?download=true
inline.NumInlined: 75
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs80wj1cxFixi_12polars_dtype:bb.a

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ], !dbg !538
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ %2, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator6shrink.exit ], [ -9223372036854775807, %bb.a ], !dbg !538
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !505
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1, !dbg !505
  ret { i64, i64 } %i.m, !dbg !505
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecOINtNtNtCs2mZqlW55729_12polars_utils5parma3raw11AllocHeaderemEE8grow_oneCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !539 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !dbg !541, !range !263, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545), !dbg !548
  %i.c = shl nuw i64 %i.b, 1, !dbg !549
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4), !dbg !551 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !554, !noalias !545
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !555 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !dbg !555, !alias.scope !545
  call fastcc void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !dbg !555, !noalias !545
  %i.f = load i64, ptr %i.a, align 8, !dbg !556, !range !286, !noalias !545, !noundef !15
  %i.g = trunc nuw i64 %i.f to i1, !dbg !558
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !559 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !558

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !560, !range !290, !noalias !545, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !560
  %i.k = load i64, ptr %i.j, align 8, !dbg !560, !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !561, !noalias !545
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !dbg !562
  unreachable, !dbg !562

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !dbg !563, !noalias !545, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !561, !noalias !545
  store ptr %i.l, ptr %i.e, align 8, !dbg !564, !alias.scope !545
  %i.m = icmp sgt i64 %i.d, -1, !dbg !566
  tail call void @llvm.assume(i1 %i.m), !dbg !566
  store i64 %i.d, ptr %0, align 8, !dbg !568, !alias.scope !545
  ret void, !dbg !569
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 !dbg !570 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1), !dbg !571 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !571 ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !571
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !581, !prof !585
  br i1 %or.cond, label %bb.g, label %bb.b, !dbg !581, !prof !585

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit, !dbg !586

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val, !dbg !590       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f, !dbg !592
  tail call void @llvm.assume(i1 %i.g), !dbg !601
  %i.h = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #28, !dbg !604
  br label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !607

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0, !dbg !608
  br i1 %i.i, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !608

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr, !dbg !615
  br label %bb.f, !dbg !620

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !622
  %i.k = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #28, !dbg !624
  br label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !627

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null, !dbg !628
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !620

bb.e:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !629
  store i64 %2, ptr %i.m, align 8, !dbg !629
  br label %bb.g, !dbg !630

bb.f:                                             ; preds = %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !631
  store ptr %.pn810, ptr %i.n, align 8, !dbg !631
  br label %bb.g, !dbg !633

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ], !dbg !634
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12, !dbg !634
  store i64 %.sink, ptr %i.o, align 8, !dbg !634
  store i64 %storemerge13, ptr %0, align 8, !dbg !634
  ret void, !dbg !635
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !636 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !637 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !637 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !637
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !647, !prof !585
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !647, !prof !585

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0, !dbg !651
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !651

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !653
  store i64 0, ptr %i.f, align 8, !dbg !653
  br label %bb.f, !dbg !654

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !656
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !661
  store i64 0, ptr %i.h, align 8, !dbg !661
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !661
  store ptr %i.g, ptr %i.i, align 8, !dbg !661
  br label %bb.f, !dbg !662

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !663
  br i1 %2, label %bb.g, label %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit, !dbg !664

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !665
  ret void, !dbg !666

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28, !dbg !667
  br label %bb.h, !dbg !675

_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28, !dbg !676
  br label %bb.h, !dbg !681

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn10, null, !dbg !682
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !684

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !685
  store i64 %3, ptr %i.m, align 8, !dbg !685
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !685
  store i64 %i.b, ptr %i.n, align 8, !dbg !685
  br label %bb.f, !dbg !686

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1, !dbg !688
  tail call void @llvm.assume(i1 %i.o), !dbg !688
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !692
  store i64 %1, ptr %i.p, align 8, !dbg !692
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !692
  store ptr %.pn10, ptr %i.q, align 8, !dbg !692
  br label %bb.f, !dbg !662
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterE17new_with_validityCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !693 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %2, null, !dbg !700
  br i1 %.not, label %bb.c, label %bb.b, !dbg !706

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %2), !dbg !707
  %.not4 = icmp eq i64 %i.d, 0, !dbg !713
  br i1 %.not4, label %bb.c, label %bb.d, !dbg !714

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !720
  store ptr null, ptr %0, align 8, !dbg !720
  br label %bb.f, !dbg !721

bb.d:                                             ; preds = %bb.b
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %2), !dbg !722
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !726
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !726 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !726
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !726 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !727
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !727 ; 2 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !727
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !727 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !729
  %i.f = sub i64 %.sroa.516.0.copyload, %.sroa.414.0.copyload, !dbg !733 ; 3 uses
  store i64 %i.f, ptr %i.b, align 8, !dbg !740, !alias.scope !741, !noalias !744
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !740
  store i64 1, ptr %i.g, align 8, !dbg !740, !alias.scope !741, !noalias !744
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !740
  store i64 %i.f, ptr %i.h, align 8, !dbg !740, !alias.scope !741, !noalias !744
  %i.i = add i64 %.sroa.5.0.copyload, %.sroa.4.0.copyload, !dbg !749 ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !dbg !758, !alias.scope !760, !noalias !744
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !758
  store i64 1, ptr %i.j, align 8, !dbg !758, !alias.scope !760, !noalias !744
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !758
  store i64 %i.i, ptr %i.k, align 8, !dbg !758, !alias.scope !760, !noalias !744
  %i.l = icmp eq i64 %i.f, %i.i, !dbg !763
  br i1 %i.l, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCs80wj1cxFixi_12polars_dtype.exit, label %bb.e, !dbg !776, !prof !182

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27, !dbg !777, !noalias !744
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.d
  %.sroa.010.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !782
  %3 = load i64, ptr %1, align 8, !dbg !780
  store i64 %3, ptr %0, align 8, !dbg !780
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !780
  store i64 %.sroa.414.0.copyload, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8, !dbg !780
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !780
  store i64 %.sroa.516.0.copyload, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8, !dbg !780
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !780
  store i64 %.sroa.4.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !780
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !780
  store i64 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !780
  br label %bb.f, !dbg !783

bb.f:                                             ; preds = %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCs80wj1cxFixi_12polars_dtype.exit, %bb.c
  ret void, !dbg !784
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 32, -9223372036854775808) i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCs80wj1cxFixi_12polars_dtype(i64 noundef %0) unnamed_addr #6 !dbg !785 {
bb.a:
  %i.a = icmp ult i64 %0, 9223372036854775776, !dbg !786
  tail call void @llvm.assume(i1 %i.a), !dbg !786
  %i.b = add nuw nsw i64 %0, 32, !dbg !787
  ret i64 %i.b, !dbg !790
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1E_NtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs80wj1cxFixi_12polars_dtype(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #7 !dbg !791 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !797, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !798
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !800
  %i.d = load i64, ptr %i.c, align 8, !dbg !800, !noundef !15 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11, !dbg !801
  tail call void @llvm.assume(i1 %i.e), !dbg !806
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d, !dbg !807
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !808
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d, !dbg !810
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0, !dbg !814
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1, !dbg !814
  ret { ptr, ptr } %i.j, !dbg !814
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMsh_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_4LeafENtB1y_4EdgeE7next_kvCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 !dbg !815 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !817
  %i.b = load i64, ptr %i.a, align 8, !dbg !817, !noundef !15 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !817, !nonnull !15, !noundef !15 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !817
  %i.e = load i64, ptr %i.d, align 8, !dbg !817, !noundef !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 538, !dbg !818
  %i.g = load i16, ptr %i.f, align 2, !dbg !818, !noundef !15
  %i.h = zext i16 %i.g to i64, !dbg !825
  %i.i = icmp ult i64 %i.e, %i.h, !dbg !833
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !dbg !833

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.020 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.5.019 = phi i64 [ %i.n, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.020, align 8, !dbg !834, !noalias !839, !noundef !15 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null, !dbg !842
  br i1 %.not.i, label %bb.b, label %bb.c, !dbg !845

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.k = zext i16 %i.p to i64, !dbg !846
  br label %._crit_edge, !dbg !856

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ], !dbg !858
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.n, %._crit_edge.loopexit ], !dbg !858
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ], !dbg !858
  store ptr %.sroa.0.0.lcssa, ptr %0, align 8, !dbg !856
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !856
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !856
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !856
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !856
  br label %bb.d, !dbg !859

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !861
  store ptr %.sroa.0.020, ptr %i.l, align 8, !dbg !861
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !861
  store i64 %.sroa.5.019, ptr %i.m, align 8, !dbg !861
  store ptr null, ptr %0, align 8, !dbg !861
  br label %bb.d, !dbg !859

bb.c:                                             ; preds = %.lr.ph
  %i.n = add i64 %.sroa.5.019, 1, !dbg !863       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 536, !dbg !864
  %i.p = load i16, ptr %i.o, align 8, !dbg !864, !noalias !839 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 538, !dbg !818
  %i.r = load i16, ptr %i.q, align 2, !dbg !818, !noundef !15
  %i.s = icmp ult i16 %i.p, %i.r, !dbg !833
  br i1 %i.s, label %._crit_edge.loopexit, label %.lr.ph, !dbg !833

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void, !dbg !865
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsp_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1R_NtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs80wj1cxFixi_12polars_dtype(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #9 !dbg !866 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !867
  %i.b = load i64, ptr %i.a, align 8, !dbg !867, !noundef !15 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !dbg !867, !nonnull !15, !noundef !15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !867
  %i.e = load i64, ptr %i.d, align 8, !dbg !867, !noundef !15 ; 3 uses
  %i.f = icmp eq i64 %i.b, 0, !dbg !868
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !868

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1, !dbg !873
  store ptr %i.c, ptr %0, align 8, !dbg !877
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !877
  store i64 0, ptr %i.h, align 8, !dbg !877
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !877
  store i64 %i.g, ptr %i.i, align 8, !dbg !877
  br label %bb.d, !dbg !881

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.e, 11, !dbg !882
  tail call void @llvm.assume(i1 %i.j), !dbg !892
  %i.k = getelementptr i8, ptr %i.c, i64 552, !dbg !893
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.e, !dbg !893 ; 2 uses
  %xtraiter = and i64 %i.b, 7, !dbg !894          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !894
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !dbg !894

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.prol = phi ptr [ %i.m, %.prol.preheader ], [ %i.l, %bb.c ]
  %.sroa.019.0.in.prol = phi i64 [ %.sroa.019.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.prol = add i64 %.sroa.019.0.in.prol, -1, !dbg !898 ; 2 uses
  %.sroa.017.0.prol = load ptr, ptr %.sroa.017.0.in.prol, align 8, !dbg !898, !nonnull !15, !noundef !15 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.0.prol, i64 544, !dbg !899 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !903 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !903
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !dbg !903, !llvm.loop !905

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.prol, %.prol.preheader ]
  %.sroa.017.0.in.unr = phi ptr [ %i.l, %bb.c ], [ %i.m, %.prol.preheader ]
  %.sroa.019.0.in.unr = phi i64 [ %i.b, %bb.c ], [ %.sroa.019.0.prol, %.prol.preheader ]
  %i.n = icmp ult i64 %i.b, 8, !dbg !894
  br i1 %i.n, label %.unr-lcssa, label %.new, !dbg !894

bb.d:                                             ; preds = %.unr-lcssa, %bb.b
  ret void, !dbg !907

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in = phi ptr [ %i.w, %.new ], [ %.sroa.017.0.in.unr, %.prol.loopexit ]
  %.sroa.019.0.in = phi i64 [ %.sroa.019.0.7, %.new ], [ %.sroa.019.0.in.unr, %.prol.loopexit ]
  %.sroa.017.0 = load ptr, ptr %.sroa.017.0.in, align 8, !dbg !898, !nonnull !15, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 544, !dbg !899
  %.sroa.017.0.1 = load ptr, ptr %i.o, align 8, !dbg !898, !nonnull !15, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.0.1, i64 544, !dbg !899
  %.sroa.017.0.2 = load ptr, ptr %i.p, align 8, !dbg !898, !nonnull !15, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.0.2, i64 544, !dbg !899
  %.sroa.017.0.3 = load ptr, ptr %i.q, align 8, !dbg !898, !nonnull !15, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.3, i64 544, !dbg !899
  %.sroa.017.0.4 = load ptr, ptr %i.r, align 8, !dbg !898, !nonnull !15, !noundef !15
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.0.4, i64 544, !dbg !899
  %.sroa.017.0.5 = load ptr, ptr %i.s, align 8, !dbg !898, !nonnull !15, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.0.5, i64 544, !dbg !899
  %.sroa.017.0.6 = load ptr, ptr %i.t, align 8, !dbg !898, !nonnull !15, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.0.6, i64 544, !dbg !899
  %.sroa.019.0.7 = add i64 %.sroa.019.0.in, -8, !dbg !898 ; 2 uses
  %.sroa.017.0.7 = load ptr, ptr %i.u, align 8, !dbg !898, !nonnull !15, !noundef !15 ; 2 uses
  %i.v = icmp eq i64 %.sroa.019.0.7, 0, !dbg !903
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.7, i64 544, !dbg !899
  br i1 %i.v, label %.unr-lcssa, label %.new, !dbg !903

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.sroa.017.0.lcssa = phi ptr [ %.sroa.017.0.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.7, %.new ], !dbg !898
  store ptr %.sroa.017.0.lcssa, ptr %0, align 8, !dbg !908
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !908
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !dbg !908
  br label %bb.d, !dbg !914
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !915 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !917    ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs80wj1cxFixi_12polars_dtype.exit, label %bb.b, !dbg !918

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !917
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !917, !nonnull !15, !noundef !15
  %i.c = mul nuw i64 %.val, 24, !dbg !923
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !925
  br label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs80wj1cxFixi_12polars_dtype.exit, !dbg !930

_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !931
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtNtCsaIrsFcbE0XP_6boxcar3vec3raw5EntryTReyEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !932 {
bb.a:
  %.val = load i64, ptr %0, align 8, !dbg !933    ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs80wj1cxFixi_12polars_dtype.exit, label %bb.b, !dbg !934
end_hunk_0
