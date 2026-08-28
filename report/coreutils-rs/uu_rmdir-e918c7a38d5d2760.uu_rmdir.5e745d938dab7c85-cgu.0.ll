Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_rmdir-e918c7a38d5d2760.uu_rmdir.5e745d938dab7c85-cgu.0?download=true
inline.NumInlined: 197
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir:bb.a
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs86MjTkXjVIv_8uu_rmdir.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs86MjTkXjVIv_8uu_rmdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !126, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs86MjTkXjVIv_8uu_rmdir.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !127
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs86MjTkXjVIv_8uu_rmdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.d = load i64, ptr %i.c, align 8, !range !133, !alias.scope !130, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs86MjTkXjVIv_8uu_rmdir.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !126, !alias.scope !130, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !130, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !134
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs86MjTkXjVIv_8uu_rmdir.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !126, !alias.scope !130, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !130, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !137
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs86MjTkXjVIv_8uu_rmdir.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !130 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !130, !nonnull !4, !align !140, !noundef !4 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #21, !noalias !130, !inline_history !141
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !40, !invariant.load !4, !noalias !130 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !142, !invariant.load !4, !noalias !130
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #19, !noalias !130
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs86MjTkXjVIv_8uu_rmdir.exit, %bb.b, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !40, !alias.scope !143, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !143
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i) #19
  %i.g = load i64, ptr %i.a, align 8, !range !146, !noalias !143, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !147, !noalias !143, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !143, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !143
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !143
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.b
    i64 0, label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit
    i64 1, label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit
  ], !prof !148

default.unreachable:                              ; preds = %.thread.i.i, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.g, 32
  %i.m = trunc nuw i64 %i.l to i32
  switch i32 %i.m, label %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i [
    i32 39, label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit
    i32 17, label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit
    i32 13, label %bb.d
    i32 16, label %bb.d
    i32 1, label %bb.d
    i32 30, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !149
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8read_dir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19, !noalias !153
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !154, !noalias !149, !noundef !4 ; 2 uses
  %.sink2.i.i = load ptr, ptr %i.e, align 8, !noalias !149, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !149
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !155
  store ptr %.sink2.i.i, ptr %i.d, align 8, !noalias !155
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.o, ptr %i.q, align 8, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !155
  call void @_RNvXsz_NtCs2vKOLqTMYjT_3std2fsNtB5_7ReadDirNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #19, !noalias !155
  %i.r = load i64, ptr %i.c, align 8, !range !146, !noalias !155, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %3 = icmp eq i64 %i.r, 0
  br i1 %3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !164, !noalias !155, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !171
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s) #18, !noalias !155
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !176, !noalias !155, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !176, !noalias !155, !noundef !4 ; 2 uses
  store i8 0, ptr %.val.i.i.i.i.i.i.i, align 1, !noalias !155
  %i.y = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #19, !noalias !155
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !164, !noalias !155, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  %i.aa = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.ab = and i64 %i.aa, 3
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i
    i64 1, label %bb.k
  ], !prof !148

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ad = and i64 %i.aa, 1095216660480
  %i.ae = icmp ne i64 %i.ad, 1095216660480
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.assume(i1 %i.ae)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !178, !noalias !177
  store i8 3, ptr %i.b, align 8, !alias.scope !178, !noalias !177
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #19, !noalias !177
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !155
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !193, !noalias !155, !nonnull !4, !noundef !4
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !194
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #18, !noalias !155
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8DirEntryNtNtNtB4_2io5error5ErrorEEECs86MjTkXjVIv_8uu_rmdir.exit.i.i.i
  %4 = icmp ne i64 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !155
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

.thread.i.i:                                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  %i.ak = ptrtoint ptr %.sink2.i.i to i64         ; 2 uses
  %i.al = and i64 %i.ak, 3
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i
    i64 1, label %bb.o
  ], !prof !148

bb.n:                                             ; preds = %.thread.i.i
  %i.am = icmp ult ptr %.sink2.i.i, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.ak, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i

bb.o:                                             ; preds = %.thread.i.i
  %i.ap = getelementptr i8, ptr %.sink2.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !198, !noalias !195
  store i8 3, ptr %i.a, align 8, !alias.scope !198, !noalias !195
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #19, !noalias !195
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i: ; preds = %bb.o, %bb.n, %.thread.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i: ; preds = %bb.c
  br label %_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit

_RNCNvCs86MjTkXjVIv_8uu_rmdir13dir_not_empty0B3_.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i, %bb.m, %bb.c, %bb.c
  %.sroa.0.0 = phi i1 [ false, %_RNvXsF_NtNtCs6JMX4GRUq9U_4core5slice3cmplNtB5_13SliceContains14slice_contains.exit4.fold.split.i ], [ %4, %bb.m ], [ true, %bb.c ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs7ReadDirNtNtNtB4_2io5error5ErrorEECs86MjTkXjVIv_8uu_rmdir.exit.i.i ], [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCs86MjTkXjVIv_8uu_rmdir13remove_single(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = and i24 %3, 65536
  %.not = icmp eq i24 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs86MjTkXjVIv_8uu_rmdir.exit41, %bb.a
  %i.n = call noundef ptr @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs10remove_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #19 ; 2 uses
  %.not19 = icmp eq ptr %i.n, null
  br i1 %.not19, label %bb.aa, label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !201
  %i.o = tail call noundef dereferenceable_or_null(5) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 5, i64 noundef 1) #19, !noalias !201 ; 8 uses
  %i.p = icmp eq ptr %i.o, null                   ; 3 uses
  %.sink6.i = select i1 %i.p, i64 1, i64 5        ; 2 uses
  %.sink.i = select i1 %i.p, ptr inttoptr (i64 5 to ptr), ptr %i.o ; 3 uses
  br i1 %i.p, label %bb.d, label %.lr.ph150.i, !prof !204

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #22
  unreachable

.lr.ph150.i:                                      ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.o, ptr noundef nonnull align 1 dereferenceable(5) @7, i64 5, i1 false)
  %i.q = load i8, ptr %i.o, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %.lr.ph150.i.1, label %.loopexit75

.lr.ph150.i.1:                                    ; preds = %.lr.ph150.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %.lr.ph150.i.2, label %.loopexit75

.lr.ph150.i.2:                                    ; preds = %.lr.ph150.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %.lr.ph150.i.3, label %.loopexit75

.lr.ph150.i.3:                                    ; preds = %.lr.ph150.i.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %.lr.ph150.i.4, label %.loopexit75

.lr.ph150.i.4:                                    ; preds = %.lr.ph150.i.3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.loopexit75

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %.lr.ph150.i.4
  %narrow = mul nuw nsw i32 %i.s, 10
  %narrow141 = add nuw nsw i32 %narrow, %i.x
  %narrow142 = mul nuw nsw i32 %narrow141, 10
  %narrow143 = add nuw nsw i32 %narrow142, %i.ac
  %narrow144 = mul nuw nsw i32 %narrow143, 10
  %narrow145 = add nuw nsw i32 %narrow144, %i.ah
  %i.ao = zext nneg i32 %narrow145 to i64
  %i.ap = mul nuw nsw i64 %i.ao, 10
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs86MjTkXjVIv_8uu_rmdir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9, i64 noundef %i.ar) #19
  br label %bb.e

.loopexit75:                                      ; preds = %.lr.ph150.i.4, %.lr.ph150.i.3, %.lr.ph150.i.2, %.lr.ph150.i.1, %.lr.ph150.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink.i, i64 noundef 5) #18
  %i.as = load i8, ptr %i.j, align 8, !range !210, !noundef !4
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.t, label %bb.u

bb.e:                                             ; preds = %bb.u, %bb.t, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.04.0 = phi i1 [ false, %bb.t ], [ true, %bb.u ], [ true, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %2, ptr %.sroa.511.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i8 1, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !211
  store i64 0, ptr %i.c, align 8, !noalias !211
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !211
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.av, align 8, !noalias !211
  store ptr %i.c, ptr %i.b, align 8, !noalias !211
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @22, ptr %i.aw, align 8, !noalias !211
  %i.ax = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19, !noalias !215
  br i1 %i.ax, label %bb.f, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit, !prof !204

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20, !noalias !215
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit: ; preds = %bb.e
  %.sroa.049.0.copyload50 = load i64, ptr %i.c, align 8, !noalias !216 ; 3 uses
  %.sroa.551.0.copyload53 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !216, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.855.0.copyload57 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !216 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  switch i64 %.sroa.855.0.copyload57, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit
  %i.ay = load i8, ptr %.sroa.551.0.copyload53, align 1, !alias.scope !217, !noalias !220, !noundef !4 ; 2 uses
  switch i8 %i.ay, label %bb.h [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs86MjTkXjVIv_8uu_rmdir.exit
  %.pr.i36 = load i8, ptr %.sroa.551.0.copyload53, align 1, !alias.scope !217, !noalias !220
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.az = phi i8 [ %.pr.i36, %thread-pre-split.i ], [ %i.ay, %bb.g ]
  switch i8 %i.az, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.551.0.copyload53, i64 1
  %i.bb = add nsw i64 %.sroa.855.0.copyload57, -1
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.551.0.copyload53, i64 1 ; 2 uses
  %i.bd = add nsw i64 %.sroa.855.0.copyload57, -1 ; 3 uses
  %i.be = icmp samesign ult i64 %.sroa.855.0.copyload57, 17
  br i1 %i.be, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.j
  %.not103137.i = icmp eq i64 %i.bd, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit37, label %.lr.ph141.i24

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1136.i = phi ptr [ %i.bf, %bb.m ], [ %i.bc, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.bg, %bb.m ], [ %i.bd, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %i.br, %bb.m ], [ 0, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.bg = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.bh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 0
  %i.bj = extractvalue { i64, i1 } %i.bh, 1
  br i1 %i.bj, label %.loopexit, label %bb.k, !prof !204

bb.k:                                             ; preds = %.lr.ph.i
  %i.bk = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !217, !noalias !220, !noundef !4
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
end_hunk_0
