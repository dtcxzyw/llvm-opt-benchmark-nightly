inline.NumInlined: 109
inline.NumDeleted: 72
begin_hunk_0_@_RNvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB7_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt15poll_next_unpinCs62u4JVtZyFF_13deltalake_gcp:bb.a
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !align !21, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !6, !noalias !129, !nonnull !6
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) #21, !inline_history !133
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputINtNtB1V_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1V_6marker4SendEL_EEEENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake4wakeCs62u4JVtZyFF_13deltalake_gcp:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !134
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit

end_hunk_1
begin_hunk_2_@_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1V_6future6future6Futurep6OutputINtNtB1V_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1V_6marker4SendEL_EEEENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake4wakeCs62u4JVtZyFF_13deltalake_gcp:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !139
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp.exit1

end_hunk_2
begin_hunk_3_@_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake4wakeB21_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !144
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit

end_hunk_3
begin_hunk_4_@_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake4wakeB21_:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !149
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit1

end_hunk_4
begin_hunk_5_@_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB21_11ObjectStore13delete_stream00EENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake4wakeCs62u4JVtZyFF_13deltalake_gcp:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !154
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp.exit

end_hunk_5
begin_hunk_6_@_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB21_11ObjectStore13delete_stream00EENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake4wakeCs62u4JVtZyFF_13deltalake_gcp:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !159
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp.exit1

end_hunk_6
begin_hunk_7_@_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs62u4JVtZyFF_13deltalake_gcp:bb.a

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !164
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !164
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
end_hunk_7
begin_hunk_8_@_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs62u4JVtZyFF_13deltalake_gcp:bb.a

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !164
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !164
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !164
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !164
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !164
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !164
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !164
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !167, !noalias !170, !nonnull !6, !noundef !6
  %i.ac = call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !167 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs62u4JVtZyFF_13deltalake_gcp.exit

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !167, !noalias !170, !noundef !6 ; 2 uses
  %i.ae = icmp eq ptr %.val.i, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs62u4JVtZyFF_13deltalake_gcp(ptr nonnull %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp.exit.i unwind label %bb.j, !noalias !167

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !167, !noalias !170
  resume { ptr, i32 } %i.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp.exit.i: ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !167, !noalias !170
  br label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs62u4JVtZyFF_13deltalake_gcp.exit

_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs62u4JVtZyFF_13deltalake_gcp.exit.i
end_hunk_8
begin_hunk_9_@_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCs62u4JVtZyFF_13deltalake_gcp:bb.a
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCs62u4JVtZyFF_13deltalake_gcp.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !172
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs62u4JVtZyFF_13deltalake_gcp.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @11, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !173
  ret i1 %i.a
}

end_hunk_9
begin_hunk_10_@llvm.umax.i64
!130 = distinct !{!130, !131, !"_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!131 = distinct !{!131, !"_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs62u4JVtZyFF_13deltalake_gcp"}
!132 = distinct !{!132, !131, !"_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs62u4JVtZyFF_13deltalake_gcp: argument 1"}
!133 = distinct !{null}
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!136 = distinct !{!136, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp"}
!137 = distinct !{!137, !138, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!138 = distinct !{!138, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp"}
!139 = !{!140, !142}
!140 = distinct !{!140, !141, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!141 = distinct !{!141, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEENtNtNtB2z_3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp"}
!142 = distinct !{!142, !143, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!143 = distinct !{!143, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs62u4JVtZyFF_13deltalake_gcp"}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_: argument 0"}
!146 = distinct !{!146, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_"}
!147 = distinct !{!147, !148, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_: argument 0"}
!148 = distinct !{!148, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_"}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_: argument 0"}
!151 = distinct !{!151, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_"}
!152 = distinct !{!152, !153, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_: argument 0"}
!153 = distinct !{!153, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_"}
!154 = !{!155, !157}
!155 = distinct !{!155, !156, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2F_11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!156 = distinct !{!156, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2F_11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp"}
!157 = distinct !{!157, !158, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!158 = distinct !{!158, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp"}
!159 = !{!160, !162}
!160 = distinct !{!160, !161, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2F_11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!161 = distinct !{!161, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2F_11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp"}
!162 = distinct !{!162, !163, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!163 = distinct !{!163, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs62u4JVtZyFF_13deltalake_gcp"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw: argument 0"}
!166 = distinct !{!166, !"_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs62u4JVtZyFF_13deltalake_gcp: argument 0"}
!169 = distinct !{!169, !"_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs62u4JVtZyFF_13deltalake_gcp"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCs62u4JVtZyFF_13deltalake_gcp: argument 1"}
!172 = distinct !{null}
!173 = distinct !{null}
end_hunk_10
