inline.NumInlined: 238
inline.NumDeleted: 109
begin_hunk_0_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !10, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !noalias !112, !nonnull !4
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.e
}

end_hunk_0
begin_hunk_1_@_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjyY8HP3IvQ6_12object_store5local6ConfigENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store ptr %i.c, ptr %i.a, align 8, !noalias !115
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  ret i1 %i.d
}

end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2r_6future6future6Futurep6OutputINtNtB2r_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2r_6marker4SendEL_EEEENtNtNtB2r_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !119
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs7JU2D1aBbVY_15deltalake_mount.exit

end_hunk_2
begin_hunk_3_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4r_13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !124
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount.exit

end_hunk_3
begin_hunk_4_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !129
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit

end_hunk_4
begin_hunk_5_@_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2x_11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -16 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !134
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount.exit

end_hunk_5
begin_hunk_6_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [176 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !144
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std2fs8metadataRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.c unwind label %bb.b, !noalias !139

bb.b:                                             ; preds = %bb.r, %bb.q, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount.exit34.i, %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !range !43, !noalias !144, !noundef !4
  %.not.i = icmp eq i64 %i.k, 2
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount.exit34.i unwind label %bb.b, !noalias !139

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 24, i1 false), !noalias !139
  %i.m = invoke noundef nonnull ptr @_RINvMs5_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 14)
          to label %bb.g unwind label %bb.f, !noalias !139 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
.body28.i:                                        ; preds = %bb.i, %bb.f
  %eh.lpad-body29.i = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.q, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %bb.ak unwind label %bb.n, !noalias !139

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !144
  store ptr %i.m, ptr %i.a, align 8, !noalias !144
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !139
  %i.o = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #17, !noalias !139 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %bb.k, !prof !145

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc35.i unwind label %bb.i, !noalias !139

.noexc35.i:                                       ; preds = %bb.h
  unreachable
end_hunk_8
begin_hunk_9_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %.body28.i unwind label %bb.j, !noalias !139

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !139
  unreachable

bb.k:                                             ; preds = %bb.g
  store ptr %i.m, ptr %i.o, align 8, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !144
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !144
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !139, !noalias !142
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @2, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit46.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit46.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.l, !noalias !139

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit46.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.ao unwind label %bb.m, !noalias !139

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !139
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit46.i
end_hunk_9
begin_hunk_10_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
bb.n:                                             ; preds = %bb.al, %bb.ak, %.body43.i, %.body25.i, %.body28.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !139
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount.exit34.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !144
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !142, !noalias !139, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !142, !noalias !139, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !144
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std2fs8metadataRNtNtB4_4path4PathECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %bb.o unwind label %bb.b, !noalias !139

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs2pqxYH9ZEk8_3std2fs8MetadataNtNtNtB16_2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount.exit34.i
  %i.ab = load i64, ptr %i.d, align 8, !range !43, !noalias !144, !noundef !4
  %.not.i36.i = icmp eq i64 %i.ab, 2
  br i1 %.not.i36.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ac)
          to label %bb.q unwind label %bb.b, !noalias !139

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !144
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.s unwind label %bb.b, !noalias !139

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !144
  %i.ad = invoke noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2fs6renameRNtNtCs6Po7BT7Nknu_5alloc6string6StringBw_ECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.ac unwind label %bb.b, !noalias !139 ; 3 uses

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !144
  store ptr %i.w, ptr %i.e, align 8, !noalias !144
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !144
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @3, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.t, !noalias !139

bb.t:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7JU2D1aBbVY_15deltalake_mount.exit.i, %bb.s
  %i.ae = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
.body25.i:                                        ; preds = %bb.w, %bb.t
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.ae, %bb.t ], [ %i.ai, %bb.w ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %bb.al unwind label %bb.n, !noalias !139

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !144
  %i.af = invoke noundef nonnull ptr @_RINvMs5_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB6_5Error3newNtNtCs6Po7BT7Nknu_5alloc6string6StringECs27OhNon2q2q_6rustls(i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.t, !noalias !139 ; 2 uses

bb.u:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7JU2D1aBbVY_15deltalake_mount.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !144
  store ptr %i.af, ptr %i.b, align 8, !noalias !144
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !139
  %i.ag = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #17, !noalias !139 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.v, label %bb.y, !prof !145

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc40.i unwind label %bb.w, !noalias !139

.noexc40.i:                                       ; preds = %bb.v
  unreachable
end_hunk_11
begin_hunk_12_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %.body25.i unwind label %bb.x, !noalias !139

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !139
  unreachable

bb.y:                                             ; preds = %bb.u
  store ptr %i.af, ptr %i.ag, align 8, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !144
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !144
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !139, !noalias !142
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ag, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @2, ptr %.sroa.66.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  br label %bb.z

bb.z:                                             ; preds = %bb.ai, %bb.ah, %bb.y
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i unwind label %bb.aa, !noalias !139

bb.aa:                                            ; preds = %bb.z
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %.body43.i unwind label %bb.ab, !noalias !139

bb.ab:                                            ; preds = %bb.aa
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !139
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i: ; preds = %bb.z
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit46.i unwind label %bb.aj, !noalias !139

bb.ac:                                            ; preds = %bb.r
  %.not22.i = icmp eq ptr %i.ad, null
  br i1 %.not22.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !144
  store ptr %i.ad, ptr %i.c, align 8, !noalias !144
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !139
  %i.am = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #17, !noalias !139 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.ae, label %bb.ai, !prof !145

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #28
          to label %.noexc47.i unwind label %bb.af, !noalias !139

.noexc47.i:                                       ; preds = %bb.ae
  unreachable
end_hunk_12
begin_hunk_13_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %bb.al unwind label %bb.ag, !noalias !139

bb.ag:                                            ; preds = %bb.af
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !139
  unreachable

bb.ah:                                            ; preds = %bb.ac
  store i64 -9223372036854775802, ptr %0, align 8, !alias.scope !139, !noalias !142
  br label %bb.z

bb.ai:                                            ; preds = %bb.ad
  store ptr %i.ad, ptr %i.am, align 8, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !144
  store i64 -9223372036854775804, ptr %0, align 8, !alias.scope !139, !noalias !142
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @4, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 16, ptr %.sroa.511.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.am, ptr %.sroa.612.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @2, ptr %.sroa.713.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !142
  br label %bb.z

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i
end_hunk_13
begin_hunk_14_@_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBP_:bb.a
.body43.i:                                        ; preds = %bb.aj, %bb.aa
  %eh.lpad-body44.i = phi { ptr, i32 } [ %i.aq, %bb.aj ], [ %i.ak, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.w) #24
          to label %bb.ao unwind label %bb.n, !noalias !139

bb.ak:                                            ; preds = %bb.al, %.body28.i
  %.pn52.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.al ], [ %eh.lpad-body29.i, %.body28.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #24
          to label %bb.ao unwind label %bb.n, !noalias !139

bb.al:                                            ; preds = %bb.af, %.body25.i, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body26.i, %.body25.i ], [ %i.j, %bb.b ], [ %i.ao, %bb.af ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #24
          to label %bb.ak unwind label %bb.n, !noalias !139

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.as = landingpad { ptr, i32 }
end_hunk_14
begin_hunk_15_@llvm.experimental.noalias.scope.decl
!112 = !{!113}
!113 = distinct !{!113, !114, !"_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!114 = distinct !{!114, !"_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount"}
!115 = !{!116, !118}
!116 = distinct !{!116, !117, !"_RNvXsa_NtCsjyY8HP3IvQ6_12object_store5localNtB5_6ConfigNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 0"}
!117 = distinct !{!117, !"_RNvXsa_NtCsjyY8HP3IvQ6_12object_store5localNtB5_6ConfigNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt"}
!118 = distinct !{!118, !117, !"_RNvXsa_NtCsjyY8HP3IvQ6_12object_store5localNtB5_6ConfigNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 1"}
!119 = !{!120, !122}
!120 = distinct !{!120, !121, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!121 = distinct !{!121, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount"}
!122 = distinct !{!122, !123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!123 = distinct !{!123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs7JU2D1aBbVY_15deltalake_mount"}
!124 = !{!125, !127}
!125 = distinct !{!125, !126, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB45_13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!126 = distinct !{!126, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB45_13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount"}
!127 = distinct !{!127, !128, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!128 = distinct !{!128, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount"}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_: argument 0"}
!131 = distinct !{!131, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_"}
!132 = distinct !{!132, !133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_: argument 0"}
!133 = distinct !{!133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_"}
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2F_11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!136 = distinct !{!136, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2F_11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount"}
!137 = distinct !{!137, !138, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!138 = distinct !{!138, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs7JU2D1aBbVY_15deltalake_mount"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_RNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00B7_: argument 0"}
!141 = distinct !{!141, !"_RNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00B7_"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_RNCNCNvNtCs7JU2D1aBbVY_15deltalake_mount4file14regular_rename00B7_: argument 1"}
!144 = !{!140, !143}
!145 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_15
