Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-1a5f5e94a0f8aa08.lance_tools.b447067cb9083daa-cgu.0?download=true
inline.NumInlined: 683
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [109 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.2/src/util/flat_map.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00J\00\00\00\1D\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00K\00\00\00!\00\00\00" }>, align 8
@3 = private unnamed_addr constant [51 x i8] c"+Mismatch between definition and access of `\C0\03`. \C0\00", align 1
@4 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/clap_builder-4.6.2/src/parser/error.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"k\00\00\00\00\00\00\00 \00\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant [99 x i8] c"Fatal internal error. Please consider filing a bug report at https://github.com/clap-rs/clap/issues", align 1
@7 = private unnamed_addr constant [81 x i8] c"/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/core/src/ops/function.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"P\00\00\00\00\00\00\00\A6\00\00\00\05\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsftBYP88YJaE_11lance_tools, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsftBYP88YJaE_11lance_tools, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @9, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsftBYP88YJaE_11lance_tools, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsftBYP88YJaE_11lance_tools, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsftBYP88YJaE_11lance_tools, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsftBYP88YJaE_11lance_tools, ptr @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsftBYP88YJaE_11lance_tools }>, align 8
@11 = private unnamed_addr constant [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdRkAOB6wJ8u_12clap_builder4util9any_value8AnyValueECsftBYP88YJaE_11lance_tools, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsdRkAOB6wJ8u_12clap_builder4util9any_valueNtB4_8AnyValueNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"l\00\00\00\00\00\00\00\16\00\00\000\00\00\00" }>, align 8
@14 = private unnamed_addr constant [39 x i8] c"\05Path \C0\1E is not a valid path to a file\00", align 1
@15 = private unnamed_addr constant [29 x i8] c"rust/lance-tools/src/util.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1C\00\00\00\00\00\00\00\0D\00\00\00\14\00\00\00" }>, align 8
@17 = private unnamed_addr constant [14 x i8] c"\09version: \C0\01\0A\00", align 1
@18 = private unnamed_addr constant [15 x i8] c"\0Anum_rows: \C0\01\0A\00", align 1
@19 = private unnamed_addr constant [21 x i8] c"\10num_data_bytes: \C0\01\0A\00", align 1
@20 = private unnamed_addr constant [32 x i8] c"\1Bnum_column_metadata_bytes: \C0\01\0A\00", align 1
@21 = private unnamed_addr constant [23 x i8] c"\12num_footer_bytes: \C0\01\0A\00", align 1
@22 = private unnamed_addr constant [8 x i8] c"schema:\0A", align 1
@23 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@24 = private unnamed_addr constant [11 x i8] c"lance-tools", align 1
@25 = private unnamed_addr constant [14 x i8] c"LanceToolsArgs", align 1
@26 = private unnamed_addr constant [49 x i8] c"Tools for interacting with Lance files and tables", align 1
@27 = private unnamed_addr constant [6 x i8] c"11.0.0", align 1
@28 = private unnamed_addr constant [4 x i8] c"file", align 1
@29 = private unnamed_addr constant [39 x i8] c"\10the subcommand '\C0\13' wasn't recognized\00", align 1
@30 = private unnamed_addr constant [49 x i8] c"a subcommand is required but one was not provided", align 1
@31 = private unnamed_addr constant [28 x i8] c"rust/lance-tools/src/cli.rs\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"\1B\00\00\00\00\00\00\00\13\00\00\00\0A\00\00\00" }>, align 8
@33 = private unnamed_addr constant [41 x i8] c"Commands for interacting with Lance files", align 1
@34 = private unnamed_addr constant [13 x i8] c"LanceFileArgs", align 1
@35 = private unnamed_addr constant [4 x i8] c"meta", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"\1B\00\00\00\00\00\00\00\1F\00\00\00\0A\00\00\00" }>, align 8
@37 = private unnamed_addr constant [27 x i8] c"Display Lance file metadata", align 1
@38 = private unnamed_addr constant [6 x i8] c"source", align 1
@39 = private unnamed_addr constant [56 x i8] c"the following required argument was not provided: source", align 1
@40 = private unnamed_addr constant [17 x i8] c"LanceFileMetaArgs", align 1
@41 = private unnamed_addr constant [6 x i8] c"SOURCE", align 1
@42 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@43 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5395094624057330451 to ptr), ptr inttoptr (i64 -8304404071318327760 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvMNtCsdRkAOB6wJ8u_12clap_builder5errorNtB3_5Error3rawNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.b, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 -1, ptr %i.e, align 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 -1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 4
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 -1, ptr %.sroa.027.sroa.7.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.428.0..sroa_idx, align 4
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 -1, ptr %.sroa.529.0..sroa_idx, align 2
  %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 -1, ptr %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 -1, ptr %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx30, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 -1, ptr %.sroa.1331.0..sroa_idx, align 2
  %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 -1, ptr %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 -1, ptr %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 2>, ptr %i.f, align 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !32
  %i.g = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef 8) #22, !noalias !32 ; 11 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.f, !prof !3

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdRkAOB6wJ8u_12clap_builder5error10ErrorInnerECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.a) #24
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.c, %bb.l
  %.pn = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.i, %bb.c ]
  %.val63 = load i64, ptr %0, align 8             ; 2 uses
  %i.k = icmp eq i64 %.val63, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val64 = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64, i64 noundef %.val63, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val66 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val67 = load i64, ptr %i.n, align 8, !noundef !4 ; 6 uses
  %i.o = icmp eq i64 %.val67, 0
  br i1 %i.o, label %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsftBYP88YJaE_11lance_tools.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !33
  %i.p = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val67, i64 noundef range(i64 1, 9) 1) #22, !noalias !33 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val67) #23
          to label %.noexc68 unwind label %bb.l

.noexc68:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.val66, i64 range(i64 0, -9223372036854775808) %.val67, i1 false), !noalias !34
  br label %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsftBYP88YJaE_11lance_tools.exit

_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.h, %bb.f
  %.sroa.5.0.i.i = phi ptr [ %i.p, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.r = load i64, ptr %i.g, align 8, !range !5, !alias.scope !38, !noalias !36, !noundef !4
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsftBYP88YJaE_11lance_tools.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !40, !noalias !36 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.u, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val3.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !40, !noalias !36, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !41
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i, %bb.i, %_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsftBYP88YJaE_11lance_tools.exit
  store i64 0, ptr %i.g, align 8, !alias.scope !35, !noalias !36
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.val67, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i, align 8, !alias.scope !42
  %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !42
  %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.val67, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !42
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit69, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit69

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit69: ; preds = %bb.j, %bb.k
  ret ptr %i.g

bb.l:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdRkAOB6wJ8u_12clap_builder5error5ErrorECsftBYP88YJaE_11lance_tools(ptr %i.g) #24
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.e, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvMNtCsdRkAOB6wJ8u_12clap_builder5errorNtB3_5Error3rawReECsftBYP88YJaE_11lance_tools(i8 noundef range(i8 9, 11) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 49, 57) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 49 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  store i8 %0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 -1, ptr %i.f, align 8
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 -1, ptr %.sroa.027.sroa.5.0..sroa_idx, align 4
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 -1, ptr %.sroa.027.sroa.7.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.428.0..sroa_idx, align 4
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 -1, ptr %.sroa.529.0..sroa_idx, align 2
  %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 -1, ptr %.sroa.529.sroa.5.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 -1, ptr %.sroa.529.sroa.7.0..sroa.529.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx30, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 -1, ptr %.sroa.1331.0..sroa_idx, align 2
  %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 -1, ptr %.sroa.1331.sroa.5.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 -1, ptr %.sroa.1331.sroa.7.0..sroa.1331.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 247
  store i8 2, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store i8 0, ptr %i.i, align 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !61
  %i.j = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 256, i64 noundef 8) #22, !noalias !61 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, !prof !3

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdRkAOB6wJ8u_12clap_builder5error10ErrorInnerECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.a) #24
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.j, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !62
  %i.n = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #22, !noalias !62 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %2) #23
          to label %.noexc64 unwind label %bb.i

.noexc64:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.p = load i64, ptr %i.j, align 8, !range !5, !alias.scope !67, !noalias !65, !noundef !4
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !69, !noalias !65 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.s, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val3.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !69, !noalias !65, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !70
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit.sink.split.i.i.i, %bb.g, %bb.f
  store i64 0, ptr %i.j, align 8, !alias.scope !64, !noalias !65
  %.sroa.5.0..sroa.0.0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa.0.0.3.sroa_idx.i, align 8, !alias.scope !71
  %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.n, ptr %.sroa.4.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !71
  %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa.5.0..sroa.0.0.3.sroa_idx.i.sroa_idx, align 8, !alias.scope !71
  ret ptr %i.j

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdRkAOB6wJ8u_12clap_builder5error5ErrorECsftBYP88YJaE_11lance_tools(ptr %i.j) #24
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.628.i.sroa.8 = alloca [16 x i8], align 8 ; 11 uses
  %.sroa.6.i.i.i = alloca [96 x i8], align 8      ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [104 x i8], align 16              ; 15 uses
  %i.h = alloca [104 x i8], align 8               ; 5 uses
  %i.i = alloca [16 x i8], align 16               ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 13 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.76.sroa.5 = alloca [16 x i8], align 8    ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 15 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXsd_NtCsftBYP88YJaE_11lance_tools3cliNtB5_16LanceFileCommandNtNtCsdRkAOB6wJ8u_12clap_builder6derive10Subcommand30augment_subcommands_for_update:bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1040
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !1040
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0, i64 344, i1 false)
  %.sroa.4.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i64 %i.av, ptr %.sroa.4.0..sroa_idx17, align 8
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr %.sroa.6.i3.sroa.0.0, ptr %.sroa.6.0..sroa_idx19, align 8
  %.sroa.8.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i64 %.sroa.6.i3.sroa.4.0, ptr %.sroa.8.0..sroa_idx21, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx21.sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.8.sroa.5, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(712) %1, i64 712, i1 false), !noalias !1042
  call void @_RNvMNtNtCsdRkAOB6wJ8u_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1041
  ret void

bb.n:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body14

.body.thread:                                     ; preds = %bb.i, %bb.c, %.body.thread15
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.am, %.body.thread15 ], [ %i.an, %bb.c ], [ %i.au, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdRkAOB6wJ8u_12clap_builder7builder7command7CommandECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(712) %1) #24
          to label %bb.n unwind label %bb.o

bb.o:                                             ; preds = %.body.thread
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCsftBYP88YJaE_11lance_tools3cliNtB5_17LanceFileMetaArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches16from_arg_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXsH_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1050
  invoke fastcc void @_RINvMs0_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef align 8 dereferenceable(56) %i.e)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1050
  store ptr @38, ptr %i.c, align 8, !noalias !1053
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 6, ptr %i.f, align 8, !noalias !1053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1053
  %i.g = load i64, ptr %i.d, align 8, !range !5, !alias.scope !1052, !noalias !1054, !noundef !4
  %.not.i.i = icmp eq i64 %i.g, -1
  br i1 %.not.i.i, label %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1053
  store ptr %i.c, ptr %i.a, align 8, !noalias !1053
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsftBYP88YJaE_11lance_tools, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1053
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8, !noalias !1053
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1053
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %bb.b
  unreachable

_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit.i: ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !alias.scope !1055, !noalias !1050 ; 2 uses
  %.sroa.5.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx22.i, align 8, !alias.scope !1055, !noalias !1050
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1055, !noalias !1050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1050
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit.i
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !alias.scope !1049, !noalias !1056
  br label %bb.f

bb.d:                                             ; preds = %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit.i
  %i.j = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCsdRkAOB6wJ8u_12clap_builder5errorNtB3_5Error3rawReECsftBYP88YJaE_11lance_tools(i8 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 56)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.e) #24
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0.copyload.sink.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.c ], [ %i.j, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload.sink.i, ptr %i.l, align 8, !alias.scope !1049, !noalias !1056
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !alias.scope !1049, !noalias !1056
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCsftBYP88YJaE_11lance_tools3cliNtB5_17LanceFileMetaArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMs0_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef align 8 dereferenceable(56) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @38, ptr %i.c, align 8, !noalias !1062
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 6, ptr %i.e, align 8, !noalias !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1062
  %i.f = load i64, ptr %i.d, align 8, !range !5, !alias.scope !1061, !noalias !1060, !noundef !4
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1062
  store ptr %i.c, ptr %i.a, align 8, !noalias !1062
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsftBYP88YJaE_11lance_tools, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1062
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8, !noalias !1062
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1062
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !1062
  unreachable

_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8, !alias.scope !1062 ; 2 uses
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx22, align 8, !alias.scope !1062
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.616.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit
  %i.i = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCsdRkAOB6wJ8u_12clap_builder5errorNtB3_5Error3rawReECsftBYP88YJaE_11lance_tools(i8 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 56)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.copyload.sink = phi ptr [ %i.i, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload.sink, ptr %i.j, align 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noalias noundef align 8 ptr @_RNvXsf_NtCsftBYP88YJaE_11lance_tools3cliNtB5_17LanceFileMetaArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches23update_from_arg_matches(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsH_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.b = invoke noundef align 8 ptr @_RNvXsf_NtCsftBYP88YJaE_11lance_tools3cliNtB5_17LanceFileMetaArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.a) #24
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matches10ArgMatchesECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noalias noundef align 8 ptr @_RNvXsf_NtCsftBYP88YJaE_11lance_tools3cliNtB5_17LanceFileMetaArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = tail call noundef zeroext i1 @_RNvMNtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 6)
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMs0_NtNtNtCsdRkAOB6wJ8u_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef align 8 dereferenceable(56) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @38, ptr %i.c, align 8, !noalias !1068
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 6, ptr %i.f, align 8, !noalias !1068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1068
  %i.g = load i64, ptr %i.d, align 8, !range !5, !alias.scope !1067, !noalias !1066, !noundef !4
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1068
  store ptr %i.c, ptr %i.a, align 8, !noalias !1068
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsftBYP88YJaE_11lance_tools, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1068
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8, !noalias !1068
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1068
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !1068
  unreachable

_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8, !alias.scope !1068 ; 2 uses
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload31 = load ptr, ptr %.sroa.5.0..sroa_idx30, align 8, !alias.scope !1068
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq i64 %.val, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val29 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit

bb.f:                                             ; preds = %_RINvMNtNtCsdRkAOB6wJ8u_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsftBYP88YJaE_11lance_tools.exit
  %i.l = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtCsdRkAOB6wJ8u_12clap_builder5errorNtB3_5Error3rawReECsftBYP88YJaE_11lance_tools(i8 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 56)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit, %bb.a, %bb.f
  %.sroa.0.0 = phi ptr [ %i.l, %bb.f ], [ null, %bb.a ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsftBYP88YJaE_11lance_tools.exit: ; preds = %bb.e, %bb.d
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.5.0.copyload31, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx19, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsftBYP88YJaE_11lance_tools3cliNtB5_17LanceFileMetaArgsNtNtCsdRkAOB6wJ8u_12clap_builder6derive4Args12augment_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(712) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [600 x i8], align 8               ; 8 uses
  %i.b = alloca [600 x i8], align 8               ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = alloca [600 x i8], align 8               ; 51 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.f = alloca [96 x i8], align 8                ; 18 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [600 x i8], align 8               ; 7 uses
  %i.i = alloca [600 x i8], align 8               ; 7 uses
  %i.j = alloca [712 x i8], align 8               ; 7 uses
  %i.k = alloca [96 x i8], align 8                ; 17 uses
  %i.l = alloca [712 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.l, ptr noundef nonnull align 8 dereferenceable(712) %1, i64 712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1198
  store i64 0, ptr %i.f, align 8, !noalias !1199
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  store i64 0, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  store ptr @40, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  store i64 17, ptr %.sroa.0.sroa.13.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store i8 0, ptr %.sroa.0.sroa.14.0..sroa_idx, align 8, !noalias !1199
  %.sroa.4.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.f, i64 89 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx32, align 1, !noalias !1199
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdRkAOB6wJ8u_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.f)
          to label %bb.b unwind label %bb.u, !noalias !1200

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.f, i64 90
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1201, !noalias !1202, !nonnull !4, !noundef !4 ; 2 uses
  store ptr @38, ptr %i.n, align 8, !noalias !1202
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 6, ptr %i.o, align 8, !noalias !1203
  store i64 1, ptr %i.m, align 8, !alias.scope !1201, !noalias !1202
  %.sroa.0.sroa.0.0.copyload60 = load i64, ptr %i.f, align 8, !noalias !1199
  %.sroa.0.sroa.4.0.copyload63 = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.6.0.copyload71 = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.7.0.copyload75 = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.10.0.copyload87 = load ptr, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.11.0.copyload91 = load i64, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.12.0.copyload95 = load ptr, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.13.0.copyload99 = load i64, ptr %.sroa.0.sroa.13.0..sroa_idx, align 8, !noalias !1199
  %.sroa.0.sroa.14.0.copyload103 = load i8, ptr %.sroa.0.sroa.14.0..sroa_idx, align 8, !noalias !1199
  %.sroa.4.0.copyload35 = load i8, ptr %.sroa.4.0..sroa_idx32, align 1, !noalias !1199
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.k, i64 90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx41, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx39, i64 6, i1 false), !noalias !1204
  %.sroa.0.sroa.4.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.sroa.5.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.sroa.6.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.0.sroa.7.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.sroa.8.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load <2 x i64>, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1198
  store i64 %.sroa.0.sroa.0.0.copyload60, ptr %i.k, align 8, !alias.scope !1205, !noalias !1204
  store ptr %.sroa.0.sroa.4.0.copyload63, ptr %.sroa.0.sroa.4.0..sroa_idx64, align 8, !alias.scope !1205, !noalias !1204
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx68, align 8, !alias.scope !1205, !noalias !1204
  store i64 %.sroa.0.sroa.6.0.copyload71, ptr %.sroa.0.sroa.6.0..sroa_idx72, align 8, !alias.scope !1205, !noalias !1204
  store ptr %.sroa.0.sroa.7.0.copyload75, ptr %.sroa.0.sroa.7.0..sroa_idx76, align 8, !alias.scope !1205, !noalias !1204
  store <2 x i64> %i.p, ptr %.sroa.0.sroa.8.0..sroa_idx80, align 8, !alias.scope !1205, !noalias !1204
  %.sroa.0.sroa.10.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %.sroa.0.sroa.10.0.copyload87, ptr %.sroa.0.sroa.10.0..sroa_idx88, align 8, !alias.scope !1205, !noalias !1204
  %.sroa.0.sroa.11.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %.sroa.0.sroa.11.0.copyload91, ptr %.sroa.0.sroa.11.0..sroa_idx92, align 8, !alias.scope !1205, !noalias !1204
  %.sroa.0.sroa.12.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %.sroa.0.sroa.12.0.copyload95, ptr %.sroa.0.sroa.12.0..sroa_idx96, align 8, !alias.scope !1205, !noalias !1204
  %.sroa.0.sroa.13.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 %.sroa.0.sroa.13.0.copyload99, ptr %.sroa.0.sroa.13.0..sroa_idx100, align 8, !alias.scope !1205, !noalias !1204
  %.sroa.0.sroa.14.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store i8 %.sroa.0.sroa.14.0.copyload103, ptr %.sroa.0.sroa.14.0..sroa_idx104, align 8, !alias.scope !1205, !noalias !1204
  %.sroa.4.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.k, i64 89
  store i8 %.sroa.4.0.copyload35, ptr %.sroa.4.0..sroa_idx36, align 1, !alias.scope !1205, !noalias !1204
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1206, !noalias !1207, !noundef !4 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !6, !alias.scope !1206, !noalias !1207, !noundef !4
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdRkAOB6wJ8u_12clap_builder7builder9arg_group8ArgGroupE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.f unwind label %.body.i, !noalias !1207

.body.i:                                          ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdRkAOB6wJ8u_12clap_builder7builder9arg_group8ArgGroupECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.k) #24, !noalias !1208
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdRkAOB6wJ8u_12clap_builder7builder7command7CommandECsftBYP88YJaE_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.l) #24
          to label %.body.thread unwind label %bb.d, !noalias !1209

bb.d:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25, !noalias !1209
  unreachable

bb.e:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1206, !noalias !1207, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %i.z, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !1208
  %i.ab = add i64 %i.s, 1
end_hunk_1
