inline.NumInlined: 9982
inline.NumDeleted: 4210
begin_hunk_0_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 13 uses
  %i.c = alloca [200 x i8], align 8               ; 13 uses
  %.sroa.8136.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.d = alloca [152 x i8], align 8               ; 8 uses
  %i.e = alloca [304 x i8], align 16              ; 11 uses
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.0148.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %.sroa.5149.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %.sroa.6150.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %.sroa.8151.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 5 uses
end_hunk_1
begin_hunk_2_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0148.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8136.i.i.i.i, i64 32, i1 false), !noalias !19260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !19260
  store i64 %i.ig, ptr %i.c, align 8, !alias.scope !19312, !noalias !19260
  store ptr @119, ptr %.sroa.5149.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19312, !noalias !19260
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6150.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19312, !noalias !19260
  store ptr %i.hh, ptr %.sroa.8151.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19312, !noalias !19260
  store ptr %i.hi, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19312, !noalias !19260
  %i.ij = invoke { ptr, ptr } @_RNvYINtNtNtCs8CRAYtH5WmW_12futures_util6stream7poll_fn6PollFnNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json14open_json_file0s_0ENtNtB7_6stream9StreamExt5boxedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %i.c)
end_hunk_2
