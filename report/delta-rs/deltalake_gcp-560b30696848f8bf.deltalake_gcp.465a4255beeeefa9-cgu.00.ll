inline.NumInlined: 309
inline.NumDeleted: 157
begin_hunk_0_@_RNvXs_NtCs62u4JVtZyFF_13deltalake_gcp7storageNtB4_17GcsStorageBackendNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_rangesB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %4 = alloca [264 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  store i8 0, ptr %8, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !246
  %i.a = tail call noundef align 8 dereferenceable_or_null(264) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 40, 265) 264, i64 noundef 8) #15, !noalias !246 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %9, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges0E3newBN_.exit, !prof !132

9:                                                ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 264) #21
          to label %.noexc unwind label %10

.noexc:                                           ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = load i8, ptr %8, align 8, !range !48, !noundef !3
  %cond.i = icmp eq i8 %12, 3
  br i1 %cond.i, label %13, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges0EBP_.exit

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtBN_11ObjectStore10get_ranges00NtBN_5ErrorINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3c_ENtNtB4_6marker4SendEL_EEE0EB1M_(ptr noundef nonnull align 8 %14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges0EBP_.exit unwind label %.noexc.a

.noexc.a:                                         ; preds = %13
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges0EBP_.exit: ; preds = %10, %13
  resume { ptr, i32 } %11

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges0E3newBN_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(264) %4, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @41, 1
  ret { ptr, ptr } %i.d
end_hunk_0
