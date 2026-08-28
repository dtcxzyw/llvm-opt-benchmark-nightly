Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_core-9d716076194cd758.wasmi_core.40db9b99ef49cf4e-cgu.0?download=true
inline.NumInlined: 96
inline.NumDeleted: 57
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4trap10TrapReasonEBF_:bb.a
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs5zeGauAcNNa_10wasmi_core10host_error9HostErrorEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit5.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #21
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs5zeGauAcNNa_10wasmi_core10host_error9HostErrorEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit5.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCs5zeGauAcNNa_10wasmi_core10host_error9HostErrorEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_.exit5.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5zeGauAcNNa_10wasmi_core10host_error9HostErrorEL_EEB1f_.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4, %bb.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %.val3, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5zeGauAcNNa_10wasmi_core10host_error9HostErrorEL_EEB1f_.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val3, i64 noundef 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5zeGauAcNNa_10wasmi_core10host_error9HostErrorEL_EEB1f_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !4, !alias.scope !10, !noundef !5 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !10
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !10
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noalias !10, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !14, !noalias !10, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !10, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !10
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !10
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table10dynamic_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.d = load i8, ptr %i.c, align 1, !range !15, !noundef !5 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %..i = select i1 %i.e, i128 18446744073709551616, i128 4294967296 ; 2 uses
  %i.l = zext nneg i64 %i.g to i128
  %.not.i = icmp samesign ult i128 %..i, %i.l
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22, !noalias !16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = trunc nuw i64 %i.i to i1
  br i1 %i.m, label %bb.d, label %_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp ugt i64 %i.g, %i.k
  %i.n = zext i64 %i.k to i128
  %.not1.i.i.i = icmp samesign ult i128 %..i, %i.n
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not1.i.i.i, !prof !20
  br i1 %or.cond.i.i.i, label %bb.e, label %_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !16
  unreachable

_RNvMNtNtCs5zeGauAcNNa_10wasmi_core5table2tyNtB2_9TableType8new_impl.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.b, ptr %i.o, align 8, !alias.scope !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.p, align 8, !alias.scope !16
  store i64 %i.i, ptr %0, align 8, !alias.scope !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.q, align 8, !alias.scope !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.d, ptr %i.r, align 1, !alias.scope !16
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table11copy_within(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable_or_null(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.a, align 8
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = add i64 %..i, %3                         ; 2 uses
  %i.c = icmp ult i64 %i.b, %..i
  br i1 %i.c, label %.critedge, label %.split19, !prof !19

.split19:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.d, align 8             ; 6 uses
  %i.e = icmp ult i64 %.val, 2305843009213693952
  tail call void @llvm.assume(i1 %i.e)
  %.not.i.not = icmp ugt i64 %i.b, %.val
  br i1 %.not.i.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.split19
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call { i64, i64 } @_RINvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB6_4Fuel15consume_fuel_ifNCNvMNtB8_5tableNtB19_5Table11copy_withins_0EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  switch i64 %i.g, label %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit [
    i64 2, label %bb.d
    i64 0, label %bb.i
  ], !prof !21

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = add i64 %3, %2                           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.k = icmp ugt i64 %i.j, %.val
  br i1 %i.k, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef range(i64 0, 2305843009213693952) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22, !noalias !25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %2, %i.j
  br i1 %i.l, label %bb.g, label %_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5zeGauAcNNa_10wasmi_core.exit.i, !prof !19

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.j, i64 noundef range(i64 0, 2305843009213693952) %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !25
  unreachable

_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5zeGauAcNNa_10wasmi_core.exit.i: ; preds = %bb.f
  %i.m = sub nuw nsw i64 %.val, %3
  %.not.i23 = icmp ugt i64 %1, %i.m
  br i1 %.not.i23, label %bb.h, label %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRef11copy_withinINtNtNtB5_3ops5range5RangejEEBB_.exit, !prof !19

bb.h:                                             ; preds = %_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5zeGauAcNNa_10wasmi_core.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22, !noalias !22
  unreachable

_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRef11copy_withinINtNtNtB5_3ops5range5RangejEEBB_.exit: ; preds = %_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5zeGauAcNNa_10wasmi_core.exit.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %2
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1
  %i.p = shl nuw nsw i64 %3, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull align 4 %i.n, i64 %i.p, i1 false), !alias.scope !22
  br label %.critedge

bb.i:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22
  unreachable

_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit: ; preds = %bb.c
  %i.q = extractvalue { i64, i64 } %i.f, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.split19, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit, %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRef11copy_withinINtNtNtB5_3ops5range5RangejEEBB_.exit
  %.sroa.4.0 = phi i64 [ %i.q, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit ], [ undef, %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRef11copy_withinINtNtNtB5_3ops5range5RangejEEBB_.exit ], [ undef, %.split19 ], [ undef, %bb.a ]
  %.sroa.02.0 = phi i64 [ 10, %_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core5table5errorNtB5_10TableErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtB9_4fuel9FuelErrorE4from.exit ], [ -1, %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRef11copy_withinINtNtNtB5_3ops5range5RangejEEBB_.exit ], [ 8, %.split19 ], [ 8, %bb.a ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.02.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !15, !noundef !5
  %i.g = zext i1 %3 to i8
  %.not = icmp eq i8 %i.f, %i.g
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !noundef !5   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %.not23, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.l, align 8
  store i64 2, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %.sroa.54.0 = select i1 %i.n, i64 %i.p, i64 undef
  %i.q = load ptr, ptr %i.k, align 8, !nonnull !5, !align !7, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !5, !nonnull !5
  %i.t = tail call noundef i8 %i.s(ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef %i.i, i64 noundef %i.m, i64 %.sroa.54.0) #24
  switch i8 %i.t, label %bb.e [
    i8 2, label %bb.g
    i8 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %.not30 = icmp eq i64 %i.i, 0
  br i1 %.not30, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %..i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 range(i64 0, -1) 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 0, ptr nonnull inttoptr (i64 4 to ptr), i64 noundef %..i14.i.i, i64 noundef range(i64 1, -9223372036854775807) 4, i64 noundef 4), !noalias !34
  %i.w = load i64, ptr %i.a, align 8, !range !13, !noalias !34, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.j, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !34, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  store ptr %i.z, ptr %i.u, align 8, !alias.scope !34
  %i.aa = icmp sgt i64 %..i14.i.i, -1
  tail call void @llvm.assume(i1 %i.aa)
  store i64 %..i14.i.i, ptr %i.d, align 8, !alias.scope !34
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ab, align 8
  store i64 2, ptr %0, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.m, %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.t

bb.i:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i, %bb.e
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNBG_EEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.i, i32 %2)
          to label %bb.k unwind label %bb.h

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  br i1 %.not23, label %bb.o, label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEEB1e_.exit, %bb.k, %bb.c
  ret void

bb.m:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.k, align 8, !nonnull !5, !align !7, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %spec.select = select i1 %i.ah, i64 3, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.sink = phi i64 [ 0, %bb.j ], [ %spec.select, %bb.n ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.ai, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.d, align 8, !range !4, !alias.scope !35, !noundef !5 ; 2 uses
  %i.ak = icmp eq i64 %.val2.i, 0
  br i1 %i.ak, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !35, !nonnull !5, !noundef !5
  %i.al = shl nuw i64 %.val2.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 4) #21
  br label %common.resume

bb.r:                                             ; preds = %bb.o
  %.val.i = load i64, ptr %i.d, align 8, !range !4, !alias.scope !35, !noundef !5 ; 2 uses
  %i.am = icmp eq i64 %.val.i, 0
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEEB1e_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !35, !nonnull !5, !noundef !5
  %i.an = shl nuw i64 %.val.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 4) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEEB1e_.exit

common.resume:                                    ; preds = %bb.h, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.aj, %bb.q ], [ %i.ac, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEEB1e_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.t:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_RNvMNtCs5zeGauAcNNa_10wasmi_core5tableNtB2_5Table3set(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core5table7elementNtB5_17ElementSegmentRef4size:bb.a
bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #22
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory2tyNtB5_17MemoryTypeBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !90, !noundef !5 ; 2 uses
  switch i8 %i.b, label %select.unfold [
    i8 0, label %bb.b
    i8 16, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !90, !noundef !5 ; 2 uses
  %i.e = zext i64 %i.d to i128
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !range !15, !alias.scope !90, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  %..i = select i1 %i.h, i128 18446744073709551616, i128 4294967296
  %i.i = zext nneg i8 %i.b to i128
  %i.j = lshr i128 %..i, %i.i                     ; 2 uses
  %i.k = icmp samesign ult i128 %i.j, %i.e
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %1, align 8, !range !13, !alias.scope !90, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !90, !noundef !5 ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = icmp samesign ult i128 %i.j, %i.p
  %i.r = icmp ugt i64 %i.d, %i.o
  %or.cond = or i1 %i.r, %i.q
  br i1 %or.cond, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.b, %bb.a, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.s, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %..i14.i.i = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 range(i64 0, -1) 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 0, ptr nonnull inttoptr (i64 1 to ptr), i64 noundef %..i14.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef 1), !noalias !99
  %i.e = load i64, ptr %i.a, align 8, !range !13, !noalias !99, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !99, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  store ptr %i.h, ptr %i.c, align 8, !alias.scope !99
  %i.i = icmp sgt i64 %..i14.i.i, -1
  tail call void @llvm.assume(i1 %i.i)
  store i64 %..i14.i.i, ptr %i.b, align 8, !alias.scope !99
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume unwind label %bb.k

bb.d:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i, %bb.a
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNhEECs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1, i8 0)
          to label %bb.j unwind label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.k, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !range !4, !alias.scope !100, !noundef !5 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !100, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.b, align 8, !range !4, !alias.scope !100, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5zeGauAcNNa_10wasmi_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !100, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5zeGauAcNNa_10wasmi_core.exit

common.resume:                                    ; preds = %bb.c, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.p = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.q = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  store ptr %i.o, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5zeGauAcNNa_10wasmi_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5zeGauAcNNa_10wasmi_core.exit: ; preds = %bb.i, %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer4grow(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 7 uses
  %.not = icmp ugt i64 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !15, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !noundef !5 ; 5 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.i, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.510.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.l = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw i64 %1, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.n = sub nsw i64 %i.j, %i.d
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.p = shl nuw i64 %i.j, 1
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 range(i64 0, -1) %i.p)
  %..i14.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i.i.i, i64 range(i64 0, -1) 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.j, ptr nonnull %i.i, i64 noundef %..i14.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef 1), !noalias !114
  %i.q = load i64, ptr %i.a, align 8, !range !13, !noalias !114, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  br label %_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer8grow_vec.exit

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !114, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  store ptr %i.t, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !115, !noalias !103
  %i.u = icmp sgt i64 %..i14.i.i.i, -1
  tail call void @llvm.assume(i1 %i.u)
  store i64 %..i14.i.i.i, ptr %i.b, align 8, !alias.scope !115, !noalias !103
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5zeGauAcNNa_10wasmi_core.exit.i.i, %bb.d
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs5zeGauAcNNa_10wasmi_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1, i8 noundef 0), !noalias !103
  %.sroa.01.0.copyload.i = load i64, ptr %i.b, align 8, !alias.scope !106, !noalias !103 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.49.0..sroa_idx, align 8, !alias.scope !106, !noalias !103, !nonnull !5, !noundef !5
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !106, !noalias !103 ; 2 uses
  %i.v = icmp sgt i64 %.sroa.5.0.copyload.i, -1
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp sgt i64 %.sroa.01.0.copyload.i, -1
  call void @llvm.assume(i1 %i.w)
  store ptr %.sroa.4.0.copyload.i, ptr %0, align 8, !alias.scope !103, !noalias !106
  store i64 %.sroa.5.0.copyload.i, ptr %i.c, align 8, !alias.scope !103, !noalias !106
  store i64 %.sroa.01.0.copyload.i, ptr %i.h, align 8, !alias.scope !103, !noalias !106
  br label %_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer8grow_vec.exit

_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer8grow_vec.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i64 [ -1, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer11grow_static.exit

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.x = load i64, ptr %i.h, align 8, !alias.scope !116, !noundef !5
  %i.y = icmp ult i64 %i.x, %1
  br i1 %i.y, label %_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer11grow_static.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %1, ptr %i.c, align 8, !alias.scope !116
  %i.z = load ptr, ptr %0, align 8, !alias.scope !116, !noundef !5
  %i.aa = sub nuw i64 %1, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.aa, i1 false), !noalias !116
  br label %_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer11grow_static.exit

_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer11grow_static.exit: ; preds = %bb.i, %bb.h, %_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer8grow_vec.exit
  %.sroa.0.0.i12.pn = phi i64 [ %.sroa.0.0.i, %_RNvMs0_NtNtCs5zeGauAcNNa_10wasmi_core6memory6bufferNtB5_10ByteBuffer8grow_vec.exit ], [ -1, %bb.i ], [ 4, %bb.h ]
  %.pn13 = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i12.pn, 0
  %i.ac = insertvalue { i64, i64 } %.pn13, i64 undef, 1
  ret { i64, i64 } %i.ac
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5zeGauAcNNa_10wasmi_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !119
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #21
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #21
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtCs5zeGauAcNNa_10wasmi_core4trapNtB4_4Trap11with_reason(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !120
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !120 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs5zeGauAcNNa_10wasmi_core4trap10TrapReasonE3newBI_.exit, !prof !123

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4trap10TrapReasonEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #25
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs5zeGauAcNNa_10wasmi_core4trap10TrapReasonE3newBI_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtCs5zeGauAcNNa_10wasmi_core4trapNtB4_4Trap8i32_exit(i32 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.b, align 4
  store i8 1, ptr %i.a, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !124
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !124 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs5zeGauAcNNa_10wasmi_core4trapNtB4_4Trap11with_reason.exit, !prof !123

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
          to label %.noexc.i unwind label %bb.c, !noalias !129

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5zeGauAcNNa_10wasmi_core4trap10TrapReasonEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #25
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !129
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_1
