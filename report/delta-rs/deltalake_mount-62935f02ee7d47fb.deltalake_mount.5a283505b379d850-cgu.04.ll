inline.NumInlined: 293
inline.NumDeleted: 120
begin_hunk_0_@_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs7JU2D1aBbVY_15deltalake_mount:bb.a
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCs7JU2D1aBbVY_15deltalake_mount.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !308
  ret i1 %i.a
}

end_hunk_0
begin_hunk_1_@_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs7JU2D1aBbVY_15deltalake_mount:bb.a
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !146, !noalias !309, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b, !prof !314

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
end_hunk_1
begin_hunk_2_@_RNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB6_11ObjectStore13delete_streamCs7JU2D1aBbVY_15deltalake_mount:bb.a
  store ptr %0, ptr %i.d, align 8
  call void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1z_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3R_5ErrorENtNtB1z_6marker4SendEL_EENCNvYNtNtB3R_5local15LocalFileSystemNtB3R_11ObjectStore13delete_stream0EE3newCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !315
  %i.e = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 4, 105) 104, i64 noundef range(i64 4, 9) 8) #23, !noalias !315 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBJ_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB26_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3T_5ErrorENtNtB26_6marker4SendEL_EENCNvYNtNtB3T_5local15LocalFileSystemNtB3T_11ObjectStore13delete_stream0EEE3newCs7JU2D1aBbVY_15deltalake_mount.exit, !prof !9

end_hunk_2
begin_hunk_3_@_RNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB6_11ObjectStore13put_multipartCs7JU2D1aBbVY_15deltalake_mount:bb.a
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !318
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 4, 105) 40, i64 noundef range(i64 4, 9) 8) #23, !noalias !318 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore13put_multipart0E3newCs7JU2D1aBbVY_15deltalake_mount.exit, !prof !9

end_hunk_3
begin_hunk_4_@_RNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB6_11ObjectStore20rename_if_not_existsCs7JU2D1aBbVY_15deltalake_mount:bb.a
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !321
  %i.e = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 4, 105) 56, i64 noundef range(i64 4, 9) 8) #23, !noalias !321 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore20rename_if_not_exists0E3newCs7JU2D1aBbVY_15deltalake_mount.exit, !prof !9

end_hunk_4
begin_hunk_5_@_RNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB6_11ObjectStore3getCs7JU2D1aBbVY_15deltalake_mount:bb.a
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !324
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 4, 105) 40, i64 noundef range(i64 4, 9) 8) #23, !noalias !324 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore3get0E3newCs7JU2D1aBbVY_15deltalake_mount.exit, !prof !9

end_hunk_5
begin_hunk_6_@_RNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB6_11ObjectStore3putCs7JU2D1aBbVY_15deltalake_mount:bb.a
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.f, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !327
  %i.g = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 4, 105) 56, i64 noundef range(i64 4, 9) 8) #23, !noalias !327 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore3put0E3newCs7JU2D1aBbVY_15deltalake_mount.exit, !prof !9

end_hunk_6
begin_hunk_7_@_RNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB6_11ObjectStore4headCs7JU2D1aBbVY_15deltalake_mount:bb.a
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !330
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 4, 105) 40, i64 noundef range(i64 4, 9) 8) #23, !noalias !330 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore4head0E3newCs7JU2D1aBbVY_15deltalake_mount.exit, !prof !9

end_hunk_7
begin_hunk_8_@llvm.experimental.noalias.scope.decl
!305 = !{!306, !301}
!306 = distinct !{!306, !307, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!307 = distinct !{!307, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7JU2D1aBbVY_15deltalake_mount"}
!308 = distinct !{null}
!309 = !{!310, !312}
!310 = distinct !{!310, !311, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!311 = distinct !{!311, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs7JU2D1aBbVY_15deltalake_mount"}
!312 = distinct !{!312, !313, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!313 = distinct !{!313, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7JU2D1aBbVY_15deltalake_mount"}
!314 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBJ_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB26_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3T_5ErrorENtNtB26_6marker4SendEL_EENCNvYNtNtB3T_5local15LocalFileSystemNtB3T_11ObjectStore13delete_stream0EEE3newCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!317 = distinct !{!317, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBJ_3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB26_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3T_5ErrorENtNtB26_6marker4SendEL_EENCNvYNtNtB3T_5local15LocalFileSystemNtB3T_11ObjectStore13delete_stream0EEE3newCs7JU2D1aBbVY_15deltalake_mount"}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore13put_multipart0E3newCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!320 = distinct !{!320, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore13put_multipart0E3newCs7JU2D1aBbVY_15deltalake_mount"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore20rename_if_not_exists0E3newCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!323 = distinct !{!323, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore20rename_if_not_exists0E3newCs7JU2D1aBbVY_15deltalake_mount"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore3get0E3newCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!326 = distinct !{!326, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore3get0E3newCs7JU2D1aBbVY_15deltalake_mount"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore3put0E3newCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!329 = distinct !{!329, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore3put0E3newCs7JU2D1aBbVY_15deltalake_mount"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore4head0E3newCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!332 = distinct !{!332, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBN_11ObjectStore4head0E3newCs7JU2D1aBbVY_15deltalake_mount"}
end_hunk_8
