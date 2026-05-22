inline.NumInlined: 201
inline.NumDeleted: 108
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !128, !invariant.load !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs7JU2D1aBbVY_15deltalake_mount.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !129, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #20
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs7JU2D1aBbVY_15deltalake_mount.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !128, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !129, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #20
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !128, !alias.scope !130, !noundef !3 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !137, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !138
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !range !128, !alias.scope !130, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !137, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !141
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00INtNtCsbvkFyIu7lgC_4core6result6ResultuNtB10_20LocalFileSystemErrorEEB12_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00INtNtCsbvkFyIu7lgC_4core6result6ResultuNtB1a_20LocalFileSystemErrorEEB1c_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !147

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !128, !alias.scope !144, !noundef !3 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !144
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !144
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !144, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !148, !noalias !144, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !144, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !144
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !144
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !149
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !149

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #20
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.k = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #20
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
define hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !149
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !149

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %5, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %6 = inttoptr i64 %3 to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %6, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.h = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit
  %.pn10 = phi ptr [ %i.h, %bb.g ], [ %i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.j = icmp eq ptr %.pn10, null
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.k, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %7, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.l = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.l)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn10, ptr %9, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes11static_drop(ptr noalias readnone align 8 captures(none) %0, ptr readnone captures(none) %1, i64 %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes12static_clone(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @5, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs9Ct3XQYJhun_5bytes5bytes16static_is_unique(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB3s_5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4J_21DeltaIOStorageBackendINtNtB2T_4sync3ArcDNtB3s_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4J_B5I_B6v_13put_multipart00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB3X_5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB5H_21DeltaIOStorageBackendINtNtB3o_4sync3ArcDNtB3X_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B5H_B6G_B7t_13put_multipart00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB3s_5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4J_21DeltaIOStorageBackendINtNtB2T_4sync3ArcDNtB3s_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4J_B5I_B6v_18put_multipart_opts00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB3X_5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB5H_21DeltaIOStorageBackendINtNtB3o_4sync3ArcDNtB3X_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B5H_B6G_B7t_18put_multipart_opts00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2Q_5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3R_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2Q_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3R_B4Q_B5T_4head00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3l_5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4P_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3l_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4P_B5O_B6R_4head00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2Q_5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3P_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2Q_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3P_B4O_B5R_3get00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB3l_5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4N_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3l_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4N_B5M_B6P_3get00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2Q_5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3P_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2Q_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3P_B4O_B5R_8get_opts00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB3l_5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4N_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3l_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4N_B5M_B6P_8get_opts00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2Q_5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3P_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2Q_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3P_B4O_B5R_3put00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB3l_5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4N_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3l_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4N_B5M_B6P_3put00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2Q_5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3P_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2Q_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3P_B4O_B5R_8put_opts00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB3l_5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4N_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3l_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4N_B5M_B6P_8put_opts00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB49_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3q_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B49_B58_B6b_9get_range00B2O_Es_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB57_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3V_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B57_B66_B79_9get_range00B3j_Es_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3A_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2R_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B3A_B4z_B5C_6delete00uEs_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4y_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3m_11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_B4y_B5x_B6A_6delete00uEs_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3A_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2R_11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B3A_B4z_B5C_18copy_if_not_exists00uEs_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4y_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3m_11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B4y_B5x_B6A_18copy_if_not_exists00uEs_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3A_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2R_11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B3A_B4z_B5C_20rename_if_not_exists00uEs_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4y_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3m_11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B4y_B5x_B6A_20rename_if_not_exists00uEs_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs17_NtNtCs8CRAYtH5WmW_12futures_util6future10try_futureINtB6_12UnwrapOrElseINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB3A_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2R_11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B3A_B4z_B5C_4copy00uEs_0ENtNtNtB2h_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEINtNtB9_3fns14UnwrapOrElseFnNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB4y_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3m_11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_B4y_B5x_B6A_4copy00uEs_0EENtNtNtB2M_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !128, !noundef !3 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = mul nuw i64 %.val, 80
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !128, !noundef !3 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = mul nuw i64 %.val, 80
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !128, !noundef !3 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !128, !noundef !3 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !128, !noundef !3 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_0
