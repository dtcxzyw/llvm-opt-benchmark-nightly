Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.11?download=true
inline.NumInlined: 2934
inline.NumDeleted: 1237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hvar4HvarEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe:bb.a

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4loca10LocaFormatEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4maxp4MaxpEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4meta4MetaEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4mvar4MvarEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name4NameEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4post4PostEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4stat4StatEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4vhea4VheaEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtCsf3Ta7LF998c_4core6option6OptionIBx_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4vvar4VvarEEEENtNtB2h_7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdIBx_NtB39_12GvarFragmentEEEENtNtCsf3Ta7LF998c_4core7default7Default7defaultB3b_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #44
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false)
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.d, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.e, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  ret ptr %i.a

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #43
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdIBx_NtB39_12KernFragmentEEEENtNtCsf3Ta7LF998c_4core7default7Default7defaultB3b_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #44
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false)
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.d, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.e, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  ret ptr %i.a

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #43
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCsoeFWPcSj6V_8lock_api6rwlock6RwLockNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdIBx_NtB39_5GlyphEEEENtNtCsf3Ta7LF998c_4core7default7Default7defaultB3b_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #44
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @40, i64 32, i1 false)
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.d, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.e, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  ret ptr %i.a

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #43
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXsY_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13ColorPalettesENtNtCsf3Ta7LF998c_4core7default7Default7defaultCshxhuDJfZv4T_6fontbe() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #43 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6547, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !6547, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !6547, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !6547
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #19 {
bb.a:
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !6553
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6554, !noalias !6553, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !6554, !noalias !6553, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !6554, !noalias !6553
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !6554, !noalias !6553
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs6CpVowoi7NE_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !19, !noundef !5
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCshxhuDJfZv4T_6fontbe3os2NtB4_7Os2WorkNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 7)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCshxhuDJfZv4T_6fontbe4cpalNtB4_8CpalWorkNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCshxhuDJfZv4T_6fontbe4fontNtB4_8FontWorkNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCshxhuDJfZv4T_6fontbe4hvarNtB4_8HvarWorkNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 8)
end_hunk_0
