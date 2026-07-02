inline.NumInlined: 6674
inline.NumDeleted: 2611
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE3newCs7p2uQeJxui2_9deltalake:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameNtNtBY_5value11HeaderValueEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTRexEE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val3 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val3, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %i.b, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11196)
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11205
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !11205
  %i.e = load i64, ptr %i.a, align 8, !range !3, !noalias !11205, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !2006, !noalias !11205, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, !prof !1649

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !11205
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #42, !noalias !11205
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !11205, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11205
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !11212
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  store i64 %i.h, ptr %0, align 8, !alias.scope !11213, !noalias !11214
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !11213, !noalias !11214
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !11213, !noalias !11214
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !noalias !11215
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef range(i64 8, 17) %0, i64 noundef range(i64 16, 3025) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.a = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #33 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !1649

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 24, 225) %2) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %2, 7                            ; 2 uses
  %i.b = lshr i64 %2, 3
  tail call void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %2, 248                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 4 uses
  %i.f = icmp samesign ult i64 %i.a, 4
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11219)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 1, !alias.scope !11216, !noalias !11219
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.e, align 1, !alias.scope !11219, !noalias !11216
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !alias.scope !11216, !noalias !11219
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !alias.scope !11219, !noalias !11216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.g = and i64 %2, 2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11224)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.i, align 1, !alias.scope !11221, !noalias !11224
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.j, align 1, !alias.scope !11224, !noalias !11221
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.i, align 1, !alias.scope !11221, !noalias !11224
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.j, align 1, !alias.scope !11224, !noalias !11221
  %i.k = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = and i64 %2, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11229)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.n, align 1, !alias.scope !11226, !noalias !11229
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.o, align 1, !alias.scope !11229, !noalias !11226
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.n, align 1, !alias.scope !11226, !noalias !11229
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.o, align 1, !alias.scope !11229, !noalias !11226
  br label %_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownReINtB2_10EquivalentBq_E10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  %.val.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val2 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.a, ptr nonnull readonly %.val2, i64 %.val1), !alias.scope !11231
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs7p2uQeJxui2_9deltalake.exit

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !11235
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !11239
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @218, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine16DataFusionEngineNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @219, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @220, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine12file_formats27DataFusionFileFormatHandlerNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @221, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage24DataFusionStorageHandlerNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @222, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11243)
  %i.f = load i64, ptr %1, align 8, !range !15, !alias.scope !11243, !noundef !4
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !11243, !align !1674, !noundef !4 ; 3 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11243
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  store ptr %i.m, ptr %i.d, align 8, !noalias !11243
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !11243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11243
  store ptr %i.d, ptr %i.c, align 8, !noalias !11243
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !11243
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 21, ptr noundef nonnull @196, ptr noundef nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11243
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %bb.c, %bb.d, %bb.e
  invoke fastcc void @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(address) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.e, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake(ptr nonnull %1) #37
          to label %bb.m unwind label %bb.l

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !11246)
  %i.r = load i64, ptr %1, align 8, !range !15, !alias.scope !11246, !noalias !11249, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !noalias !11249
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !11249
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !11246, !noalias !11249, !align !1674, !noundef !4 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not4.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11252
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !11249, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !11249, !noundef !4
  store ptr %i.y, ptr %i.b, align 8, !noalias !11252
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !11252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11252
  store ptr %i.b, ptr %i.a, align 8, !noalias !11252
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !11252
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 21, ptr noundef nonnull @194, ptr noundef nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11252
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.m:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol14log_compaction16compact_logs_for00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
begin_hunk_1_@_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session16window_functions:bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session17table_options_mut(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(1680) %0) unnamed_addr #12 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session19aggregate_functions(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1680) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1256
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %0) unnamed_addr #12 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @270, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsc_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session6config(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(1680) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1416
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14531
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.c) #40
          to label %bb.b unwind label %bb.c, !inline_history !14534

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !14531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14531
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #33
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14535
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.c) #40
          to label %bb.b unwind label %bb.c, !inline_history !14538

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !14535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14535
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #33
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #18 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !15, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0                     ; 3 uses
  switch i64 %i.a, label %default.unreachable6 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable6:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.sink.split:                                      ; preds = %bb.g, %bb.n
  %.sink18 = phi i64 [ 24, %bb.n ], [ 8, %bb.g ]
  %.sink16 = phi ptr [ %i.s, %bb.n ], [ %i.c, %bb.g ]
  %.sink15 = phi i64 [ 32, %bb.n ], [ 16, %bb.g ]
  %.sink13 = phi i64 [ %i.u, %bb.n ], [ %i.e, %bb.g ]
  %.sink12.ph = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph = phi ptr [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %.sink9.ph = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph = phi i64 [ %i.aa, %bb.n ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink18
  store ptr %.sink16, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink13, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.sink12 = phi i64 [ 8, %bb.b ], [ %.sink12.ph, %.sink.split ]
  %.sink10 = phi ptr [ %i.c, %bb.b ], [ %.sink10.ph, %.sink.split ]
  %.sink9 = phi i64 [ 16, %bb.b ], [ %.sink9.ph, %.sink.split ]
  %.sink7 = phi i64 [ %i.e, %bb.b ], [ %.sink7.ph, %.sink.split ]
  %.sink = phi i64 [ 0, %bb.b ], [ %i.a, %.sink.split ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store ptr %.sink10, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store i64 %.sink7, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.ae, align 8
  br label %.sink.split

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14539)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val2.i.i = load ptr, ptr %0, align 8, !alias.scope !14539, !noalias !14542, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !14539, !noalias !14542, !noundef !4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i, %.lr.ph.i
  %i.c = phi ptr [ %1, %.lr.ph.i ], [ %i.d, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val4.i = load i64, ptr %i.e, align 8, !noalias !14544, !noundef !4
  %i.f = icmp eq i64 %.val4.i, %.val3.i.i
  br i1 %i.f, label %bb.c, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i

bb.c:                                             ; preds = %bb.b
  %.val3.i = load ptr, ptr %i.c, align 8, !noalias !14544, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !alias.scope !14545, !noalias !14544
  %i.g = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.g, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i: ; preds = %bb.c, %bb.b
  %.not8.i = icmp eq ptr %i.d, %i.a
  br i1 %.not8.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1K_13SliceContains14slice_contains0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB7_13SliceContains14slice_contains0Cs7p2uQeJxui2_9deltalake.exit.backedge.i ], [ true, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBU_6string6StringEEEuEENtNtNtB1u_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14549)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14549, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1i_6string6StringEEEuENtNtB1i_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14552)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !14555, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1f_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !14555, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !14556
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !14559
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBN_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.e, !noalias !14555

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBU_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTReINtNtB4_6option6OptionNtNtBL_6string6StringEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.f, !noalias !14555

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !14555
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTReINtNtB4_6option6OptionNtNtBL_6string6StringEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB10_6string6StringEEEuEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.w = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBU_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !14555
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1f_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1f_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBM_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1i_6string6StringEEEuENtNtB1i_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1f_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !14549, !nonnull !4, !noundef !4
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !14549
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1i_6string6StringEEEuENtNtB1i_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1i_6string6StringEEEuENtNtB1i_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB1f_6string6StringEEEuEECs7p2uQeJxui2_9deltalake.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14562)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14562, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1W_5field9SpanMatchEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14565)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !14568, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1T_5field9SpanMatchEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !14568, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !14569
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.not12.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !14572
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8704 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [544 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -536
  tail call void @_RNvXsw_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env5field9SpanMatchj8_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(536) %i.w), !noalias !14568
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1T_5field9SpanMatchEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.d

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1T_5field9SpanMatchEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1E_5field9SpanMatchEEE9next_implKb0_ECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 544                        ; 2 uses
  %i.z = add i64 %i.y, 544                        ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1W_5field9SpanMatchEENtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.e

end_hunk_1
