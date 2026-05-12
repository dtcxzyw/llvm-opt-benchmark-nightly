inline.NumInlined: 121
inline.NumDeleted: 58
begin_hunk_0_@_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB31_:bb.a

.noexc39.i.i:                                     ; preds = %.noexc38.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.y = load i32, ptr %i.x, align 4, !range !63, !noalias !60, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !60
  %.sroa.511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !60
end_hunk_0
begin_hunk_1_@_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB31_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.612.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !60
  store ptr %i.a, ptr %i.f, align 8, !noalias !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 %i.y, ptr %i.aa, align 8, !noalias !64
  %i.ab = invoke noundef ptr @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellPuEE4withNCNvMs3_B6_BF_7replace0B1s_ECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0, ptr noundef nonnull align 8 %i.i)
          to label %bb.c unwind label %bb.f, !noalias !67
end_hunk_1
begin_hunk_2_@_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE0EB31_:bb.a
bb.c:                                             ; preds = %.noexc39.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64
  store ptr %i.ab, ptr %i.e, align 8, !noalias !64
  %i.ac = invoke noundef i32 @_RNvCshbKHpCRGxgC_16deltalake_derive19derive_delta_config(i32 noundef range(i32 1, 0) %i.y)
          to label %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCshbKHpCRGxgC_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i unwind label %bb.d, !noalias !67

bb.d:                                             ; preds = %bb.c
end_hunk_2
