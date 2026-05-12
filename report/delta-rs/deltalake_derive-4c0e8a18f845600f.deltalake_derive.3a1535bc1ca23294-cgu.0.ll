inline.NumInlined: 116
inline.NumDeleted: 77
begin_hunk_0_@_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE0EB31_:bb.a
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE0EB31_:bb.a
  store ptr %i.e, ptr %i.t, align 8, !noalias !26
  store ptr %i.u, ptr %i.b, align 8, !noalias !26
  %i.v = invoke i32 @_RNvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_config(i32 %i.r)
          to label %_RNCNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB6_11TokenStreamINtNtCsbvkFyIu7lgC_4core6option6OptionB10_ENCNCINvMsg_B6_INtB6_6ClientNtBa_11TokenStreamB2q_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E00B2X_.exit.i.i.i.i.i.i unwind label %bb.b, !noalias !26 ; 2 uses

bb.b:                                             ; preds = %.noexc37.i.i
  %i.w = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNvNtNtCsjJ0p09o2jmV_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE0EB31_:bb.a
_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !26
  store i64 0, ptr %i.n, align 8, !noalias !26
  invoke void @_RNvXNvNtCsjJ0p09o2jmV_10proc_macro6bridges4_1__INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBO_6option6OptionNtNtB4_6client11TokenStreamEuEINtNtB4_3rpc6EncodeuE6encodeCs4ZaLwAtrTbk_16deltalake_derive(i32 0, i32 %i.v, ptr nonnull align 8 %i.j, ptr nonnull %i.a)
          to label %__rust_try.exit.thread.i.i unwind label %bb.i, !noalias !26

__rust_try.exit.thread.i.i:                       ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtCsjJ0p09o2jmV_10proc_macro6bridge6client10run_clientNtB1e_11TokenStreamINtNtB9_6option6OptionB28_ENCNCINvMsg_B1e_INtB1e_6ClientNtB1i_11TokenStreamB3l_E7expand1NvCs4ZaLwAtrTbk_16deltalake_derive19derive_delta_configE00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3T_.exit.i.i.i
end_hunk_2
begin_hunk_3_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive
define hidden void @_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 5 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [232 x i8], align 8               ; 6 uses
  %i.h = alloca [232 x i8], align 8               ; 4 uses
  %i.i = alloca [232 x i8], align 8               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
end_hunk_3
begin_hunk_4_@_RNvYNvMNtCs7nQiqFc7Txl_3syn10punctuatedINtB5_10PunctuatedNtNtB7_4attr4MetaNtNtB7_5token5CommaE16parse_terminatedNtNtB7_5parse6Parser5parseCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.aj, ptr noundef nonnull align 8 dereferenceable(232) %i.g, i64 232, i1 false), !noalias !64
  %i.an = load ptr, ptr %i.ab, align 8, !noalias !64 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.w, label %bb.t
end_hunk_4
