inline.NumInlined: 1084
inline.NumDeleted: 543
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [12 x i8] c"core missing", align 1
@1 = private unnamed_addr constant [126 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/runtime/scheduler/current_thread/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"}\00\00\00\00\00\00\00\C1\01\00\002\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"}\00\00\00\00\00\00\00\C1\01\00\00\1E\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"}\00\00\00\00\00\00\00\BB\01\00\00\14\00\00\00" }>, align 8
@5 = private unnamed_addr constant [80 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/thread/local.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"O\00\00\00\00\00\00\00\DF\01\00\00\19\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"}\00\00\00\00\00\00\00R\03\00\00$\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"}\00\00\00\00\00\00\00U\03\00\005\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"}\00\00\00\00\00\00\00Z\03\00\00\17\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"}\00\00\00\00\00\00\00U\03\00\00!\00\00\00" }>, align 8
@11 = private unnamed_addr constant [85 x i8] c"a spawned task panicked and the runtime is configured to shut down on unhandled panic", align 1
@12 = private unnamed_addr constant [7 x i8] c"file://", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCsgO8S5jLFugx_23deltalake_catalog_unity, ptr @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@14 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@15 = private unnamed_addr constant [74 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/io/mod.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"I\00\00\00\00\00\00\00\88\02\00\00\11\00\00\00" }>, align 8
@17 = private unnamed_addr constant [73 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/str.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"H\00\00\00\00\00\00\00\B1\00\00\00\16\00\00\00" }>, align 8
@19 = private unnamed_addr constant [53 x i8] c"attempt to join into collection with len > usize::MAX", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"H\00\00\00\00\00\00\00\9A\00\00\00\0A\00\00\00" }>, align 8
@21 = private unnamed_addr constant [1 x i8] c",", align 1
@22 = private unnamed_addr constant [38 x i8] c"\10Unknown scheme: \C0\11. Known schemes: \C0\00", align 1
@23 = private unnamed_addr constant [32 x i8] c"\10Could not parse \C0\0B as a URL: \C0\00", align 1
@24 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@25 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/reqwest-0.12.28/src/async_impl/response.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"o\00\00\00\00\00\00\00\0D\01\00\00F\00\00\00" }>, align 8
@27 = private unnamed_addr constant [4 x i8] c"READ", align 1
@28 = private unnamed_addr constant [32 x i8] c"crates/catalog-unity/src/lib.rs\00", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"\1F\00\00\00\00\00\00\004\03\00\00B\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"\1F\00\00\00\00\00\00\00D\03\00\00B\00\00\00" }>, align 8
@31 = private unnamed_addr constant [31 x i8] c"\C0\1C/temporary-table-credentials\00", align 1
@32 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\10", [23 x i8] undef }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"\1F\00\00\00\00\00\00\00\1C\03\00\006\00\00\00" }>, align 8
@34 = private unnamed_addr constant [18 x i8] c"\C0\08/tables/\C0\01.\C0\01.\C0\00", align 1
@35 = private unnamed_addr constant [41 x i8] c"crates/catalog-unity/src/client/token.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"(\00\00\00\00\00\00\00&\00\00\00\05\00\00\00" }>, align 8
@37 = private unnamed_addr constant [47 x i8] c"\22Could not create local directory: \C0\08\0AError: \C0\00", align 1
@38 = private unnamed_addr constant [106 x i8] c"3Could not construct a URL from the canonical path: \C03.\0ASomething must be very wrong with the table path.\00", align 1
@39 = private unnamed_addr constant [37 x i8] c"\18Invalid table location: \C0\08\0AError: \C0\00", align 1
@40 = private unnamed_addr constant [30 x i8] c"asked to exit when not entered", align 1
@41 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/runtime/context/runtime_mt.rs\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @41, [16 x i8] c"s\00\00\00\00\00\00\00\1C\00\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/sync/mutex.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"c\00\00\00\00\00\00\00\B3\01\00\00\1B\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"c\00\00\00\00\00\00\00\95\02\00\00\0D\00\00\00" }>, align 8
@_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { { i64, { { i64, [1 x i64] } } }, i64 }, i64, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"o\00\00\00\00\00\00\00\22\01\00\006\00\00\00" }>, align 8
@47 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/reqwest-middleware-0.4.2/src/client.rs\00", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c"k\00\00\00\00\00\00\00U\02\00\005\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"\1F\00\00\00\00\00\00\00\01\02\00\00-\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"\1F\00\00\00\00\00\00\00\00\02\00\00G\00\00\00" }>, align 8
@51 = private unnamed_addr constant [10 x i8] c"READ_WRITE", align 1
@52 = private unnamed_addr constant [39 x i8] c"\13READ_WRITE failed: \C0\0F. READ failed: \C0\00", align 1
@53 = private unnamed_addr constant [10 x i8] c"\07Bearer \C0\00", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @28, [16 x i8] c"\1F\00\00\00\00\00\00\00\8C\02\00\00N\00\00\00" }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"c\00\00\00\00\00\00\00\B2\01\00\003\00\00\00" }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"c\00\00\00\00\00\00\00\8F\02\00\00\1D\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @47, [16 x i8] c"k\00\00\00\00\00\00\00\E0\00\00\00\1B\00\00\00" }>, align 8
@58 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/lib.rs\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"\\\00\00\00\00\00\00\00D\02\00\00,\00\00\00" }>, align 8
@60 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@62 = private unnamed_addr constant [10 x i8] c"\07http://\C0\00", align 1
@63 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-body-util-0.1.3/src/combinators/collect.rs\00", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @63, [16 x i8] c"t\00\00\00\00\00\00\00)\00\00\00#\00\00\00" }>, align 8
@65 = private unnamed_addr constant [21 x i8] c"polled after complete", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @63, [16 x i8] c"t\00\00\00\00\00\00\00&\00\00\00;\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsgO8S5jLFugx_23deltalake_catalog_unity }>, align 8
@68 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@69 = private unnamed_addr constant [76 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/string.rs\00", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c"K\00\00\00\00\00\00\00d\0B\00\00\0E\00\00\00" }>, align 8
@71 = private unnamed_addr constant [5 x i8] c"Error", align 1
@72 = private unnamed_addr constant [2 x i8] c"..", align 1
@73 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/url-2.5.8/src/lib.rs\00", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @73, [16 x i8] c"Y\00\00\00\00\00\00\00O\0B\00\00\0B\00\00\00" }>, align 8
@75 = private unnamed_addr constant [2 x i8] c"()", align 1
@76 = private unnamed_addr constant [20 x i8] c"\0Fmissing field `\C0\01`\00", align 1
@77 = private unnamed_addr constant [31 x i8] c"\0Finvalid length \C0\0B, expected \C0\00", align 1
@78 = private unnamed_addr constant [22 x i8] c"\11duplicate field `\C0\01`\00", align 1
@79 = private unnamed_addr constant [45 x i8] c"\11unknown variant `\C0\18`, there are no variants\00", align 1
@80 = private unnamed_addr constant [34 x i8] c"\11unknown variant `\C0\0C`, expected \C0\00", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2H_19UnityCatalogBuilder25get_uc_location_and_token0EEEB2H_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noundef nonnull align 8 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  invoke void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder25get_uc_location_and_token0EEE0INtNtB2h_6result6ResultTNtNtB2N_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5n_B5n_EENtB3p_17UnityCatalogErrorEEB3p_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1D_19UnityCatalogBuilder25get_uc_location_and_token0EEEB1D_(ptr %.val1) #20
          to label %common.resume unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_19UnityCatalogBuilder25get_uc_location_and_token0EBO_(ptr noundef nonnull align 8 %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1D_19UnityCatalogBuilder25get_uc_location_and_token0EEEB1D_.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 2616, i64 noundef 8) #21
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1D_19UnityCatalogBuilder25get_uc_location_and_token0EEEB1D_.exit: ; preds = %bb.c
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 2616, i64 noundef 8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB3_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1C_19UnityCatalogBuilder25get_uc_location_and_token0EB1C_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(2616) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [2616 x i8], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2616) %i.b, ptr noundef nonnull align 8 dereferenceable(2616) %3, i64 2616, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  invoke void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2k_19UnityCatalogBuilder25get_uc_location_and_token0E0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB4v_B4v_EENtB2k_17UnityCatalogErrorEEB2k_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_19UnityCatalogBuilder25get_uc_location_and_token0EBO_(ptr noundef nonnull align 8 %i.b) #20
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_19UnityCatalogBuilder25get_uc_location_and_token0EBO_(ptr noundef nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address, ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read7StrReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #21
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address, ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.e = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read9SliceReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read9SliceReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read9SliceReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNCNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB7_12DeserializerNtNtB9_4read9SliceReadE12fix_position0CsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #21
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCshhQzAC5dGUF_17crossbeam_channel7counterINtB6_8ReceiverINtNtNtB8_7flavors4list7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE7releaseNCNvXsb_NtB8_7channelINtB4x_8ReceiverB1x_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0EB33_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE20disconnect_receiversB2D_(ptr noundef nonnull align 128 %i.a) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.g = atomicrmw xchg ptr %i.f, i8 1 acq_rel, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs2_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2D_(ptr noalias noundef nonnull align 128 dereferenceable(512) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB3b_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB3b_.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCshhQzAC5dGUF_17crossbeam_channel7counter7CounterINtNtNtB1k_7flavors4list7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3S_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB3b_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.i, %bb.d ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 512, i64 noundef 128) #21
  resume { ptr, i32 } %eh.lpad-body.i

end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16ensure_table_uriRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 4                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.15.i = alloca [17 x i8], align 8         ; 5 uses
  %i.g = alloca [88 x i8], align 8                ; 19 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 4                 ; 5 uses
  %i.o = alloca [176 x i8], align 8               ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [96 x i8], align 16               ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [40 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [96 x i8], align 16               ; 10 uses
  %i.aa = alloca [1 x i8], align 1                ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [96 x i8], align 16              ; 10 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 18 uses
  %i.ah = alloca [88 x i8], align 8               ; 19 uses
  %i.ai = alloca [88 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 7 uses
  %i.ak = alloca [64 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 13 uses
  %i.am = alloca [16 x i8], align 8               ; 10 uses
  %i.an = alloca [96 x i8], align 16              ; 4 uses
  %.sroa.4147 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.ao = alloca [88 x i8], align 8               ; 4 uses
  %.sroa.7118 = alloca [80 x i8], align 8         ; 6 uses
  %.sroa.625.sroa.7 = alloca [80 x i8], align 8   ; 7 uses
  %.sroa.621.sroa.7 = alloca [80 x i8], align 8   ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 10 uses
  %i.aq = alloca [24 x i8], align 8               ; 9 uses
  %i.ar = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.613 = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 11 uses
  %i.at = alloca [88 x i8], align 8               ; 11 uses
  %.sroa.24.sroa.14.sroa.18 = alloca [56 x i8], align 8 ; 9 uses
  %.sroa.6.sroa.7.sroa.9 = alloca [56 x i8], align 8 ; 7 uses
  %i.au = alloca [88 x i8], align 8               ; 8 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.aw, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.ax, align 8, !noundef !3 ; 2 uses
  store ptr %.val.i, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.val1.i, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.sroa.14.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %.val.i, ptr %i.am, align 8, !noalias !708
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  store i64 %.val1.i, ptr %i.az, align 8, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !708
  %i.ba = tail call noundef nonnull ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories22object_store_factories(), !noalias !712 ; 2 uses
  store ptr %i.ba, ptr %i.aj, align 8, !noalias !708
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.ak, align 8, !noalias !708
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !708
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB3O_5table7builder16resolve_uri_typeReE0EE9from_iterCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ak)
          to label %bb.d unwind label %bb.b, !noalias !712

common.resume:                                    ; preds = %.body72, %.body.i.i, %bb.dq, %bb.ds, %bb.dw, %bb.dd, %bb.cp, %bb.cr, %bb.cz, %.body.thread228, %bb.el, %bb.b, %bb.c, %.body159.i, %bb.bu, %bb.ca
  %common.resume.op = phi { ptr, i32 } [ %i.gz, %bb.ca ], [ %i.gv, %bb.bu ], [ %i.bc, %bb.b ], [ %.pn104.i, %.body159.i ], [ %i.bc, %bb.c ], [ %.pn, %.body72 ], [ %.pn, %bb.el ], [ %eh.lpad-body231, %.body.thread228 ], [ %i.ib, %bb.cz ], [ %.pn.i.i84, %.body.i.i ], [ %i.ja, %bb.dq ], [ %i.jc, %bb.ds ], [ %i.jg, %bb.dw ], [ %i.ih, %bb.dd ], [ %i.hs, %bb.cp ], [ %i.ht, %bb.cr ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.bd = load ptr, ptr %i.aj, align 8, !alias.scope !719, !noalias !708, !nonnull !3, !noundef !3
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !720
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #25
          to label %common.resume unwind label %bb.bn, !noalias !712

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.bg = load ptr, ptr %i.aj, align 8, !alias.scope !727, !noalias !708, !nonnull !3, !noundef !3
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !728
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit119.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEE9drop_slowB1M_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit119.i unwind label %bb.f, !noalias !712

.body159.i:                                       ; preds = %.thread.i, %bb.bx, %bb.br, %bb.al, %bb.n, %bb.f
  %.pn104.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.n ], [ %.pn102186.i, %.thread.i ], [ %i.er, %bb.al ], [ %i.bj, %bb.f ], [ %i.gs, %bb.br ], [ %i.gx, %bb.bx ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.al) #20
          to label %common.resume unwind label %bb.bn, !noalias !712

bb.f:                                             ; preds = %bb.ce, %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i163.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit119.i, %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body159.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit119.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !708
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %i.bk, align 8, !noalias !708
  store ptr null, ptr %i.w, align 8, !noalias !708
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr null, ptr %i.bl, align 8, !noalias !708
  %i.bm = load ptr, ptr %i.am, align 8, !noalias !708, !nonnull !3, !noundef !3
  %i.bn = load i64, ptr %i.az, align 8, !noalias !708, !noundef !3
  invoke void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bn)
          to label %bb.g unwind label %bb.f, !noalias !712

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !708
  %i.bo = load i64, ptr %i.ai, align 8, !range !235, !noalias !708, !noundef !3
  %i.bp = icmp eq i64 %i.bo, -9223372036854775808
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !range !729, !noalias !708, !noundef !3 ; 2 uses
  store i8 %i.br, ptr %i.aa, align 1, !noalias !708
  %i.bs = icmp eq i8 %i.br, 6
  br i1 %i.bs, label %bb.cd, label %bb.ce

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.ai, i64 88, i1 false), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !708
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 44 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !708, !noundef !3 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %.val112.i = load ptr, ptr %i.bv, align 8, !noalias !708, !nonnull !3, !noundef !3 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.val113.i = load i64, ptr %i.bw, align 8, !noalias !708, !noundef !3 ; 3 uses
  %i.bx = zext i32 %i.bu to i64                   ; 10 uses
  %i.by = icmp eq i32 %i.bu, 0                    ; 2 uses
  br i1 %i.by, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i.i = icmp ugt i64 %.val113.i, %i.bx
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp eq i64 %.val113.i, %i.bx
  br i1 %i.bz, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.val112.i, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !730, !noalias !712, !noundef !3
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val112.i, i64 noundef %.val113.i, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #24
          to label %.noexc120.i unwind label %.thread196.i, !noalias !712

.noexc120.i:                                      ; preds = %bb.m
  unreachable

.thread196.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i152.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i138.i, %bb.q, %bb.o, %bb.m
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body159.i

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !708
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bx, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %.thread196.i, !noalias !712

bb.p:                                             ; preds = %bb.o
  %i.cd = load i64, ptr %i.v, align 8, !range !65, !noalias !708, !noundef !3
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !235, !noalias !708, !noundef !3 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.ce, label %bb.q, label %bb.r, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !708
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cg, i64 %i.ci) #23
          to label %bb.cc unwind label %.thread196.i, !noalias !712

bb.r:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ch, align 8, !noalias !708, !nonnull !3, !noundef !3 ; 3 uses
  %i.ck = icmp samesign uge i64 %i.cg, %i.bx
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !708
  br i1 %i.by, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.w, %bb.r
  store i64 %i.cg, ptr %i.ag, align 8, !noalias !708
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.cj, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !708
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.bx, ptr %.sroa.650.0..sroa_idx.i, align 8, !noalias !708
  %i.cl = load i32, ptr %i.bt, align 4, !noalias !708, !noundef !3 ; 3 uses
  %.val110.i = load ptr, ptr %i.bv, align 8, !noalias !708, !nonnull !3, !noundef !3 ; 5 uses
  %.val111.i = load i64, ptr %i.bw, align 8, !noalias !708, !noundef !3 ; 5 uses
  %i.cm = zext i32 %i.cl to i64                   ; 5 uses
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = ptrtoint ptr %.val110.i to i64
  br i1 %i.cn, label %.thread199.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i121.i = icmp ugt i64 %.val111.i, %i.cm
  br i1 %.not.i.i.i.i121.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = icmp eq i64 %.val111.i, %i.cm
  br i1 %i.cp, label %bb.y, label %.invoke.i

bb.v:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %.val110.i, i64 %i.cm
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !737, !noalias !712, !noundef !3
  %i.cs = icmp sgt i8 %i.cr, -65
  br i1 %i.cs, label %bb.y, label %.invoke.i

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull align 1 %.val112.i, i64 %i.bx, i1 false), !noalias !712
  br label %bb.s

.body135.i:                                       ; preds = %bb.bi, %bb.bh, %bb.as, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.gj, %bb.bh ], [ %lpad.phi.i.i, %bb.as ], [ %i.ct, %bb.x ], [ %i.gk, %bb.bi ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #20
          to label %.thread.i unwind label %bb.bn, !noalias !712

bb.x:                                             ; preds = %bb.bp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i146.i, %bb.ar, %bb.aq, %._crit_edge, %bb.an, %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %.invoke.i, %bb.ac, %bb.ab
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.cu = icmp eq i32 %i.cl, 4
  br i1 %i.cu, label %bb.z, label %.thread199.i

bb.z:                                             ; preds = %bb.y
  %i.cv = load i32, ptr %.val110.i, align 1
  %i.cw = icmp ne i32 %i.cv, 1701603686
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ab, label %.thread199.i

.thread199.i:                                     ; preds = %bb.z, %bb.y, %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !708, !nonnull !3, !noundef !3 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noalias !708, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %.idx.i.i = mul nuw nsw i64 %i.dc, 24           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i, label %.thread201.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread199.i, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i.i
  %i.de = phi ptr [ %i.df, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i.i ], [ %i.da, %.thread199.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 16
  %.val4.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !744, !noalias !747, !noundef !3
  %i.dh = icmp eq i64 %.val4.i.i.i, %i.bx
  br i1 %i.dh, label %bb.aa, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.di = getelementptr i8, ptr %i.de, i64 8
  %.val3.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !744, !noalias !747, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i, ptr nonnull readonly %i.cj, i64 %i.bx), !noalias !752
  %i.dj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.dj, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i.i: ; preds = %bb.aa, %.lr.ph.i.i.i
  %.not8.i.i.i = icmp eq ptr %i.df, %i.dd
  br i1 %.not8.i.i.i, label %bb.ak, label %.lr.ph.i.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !708
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !708
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ah)
          to label %.noexc124.i unwind label %bb.x, !noalias !712

.noexc124.i:                                      ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.dl = load i32, ptr %i.dk, align 4, !range !756, !noalias !757, !noundef !3
  %.not.i.i = icmp eq i32 %i.dl, 1114112
  br i1 %.not.i.i, label %.thread204.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc124.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !757
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4host(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ah)
          to label %.noexc125.i unwind label %bb.x, !noalias !712

.noexc125.i:                                      ; preds = %bb.ac
  %i.dm = load i8, ptr %i.s, align 8, !range !382, !noalias !757, !noundef !3
  switch i8 %i.dm, label %bb.ai [
    i8 3, label %bb.ad
    i8 0, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.aj, %.noexc125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !757
  %i.dn = load i64, ptr %i.bw, align 8, !alias.scope !753, !noalias !759, !noundef !3 ; 5 uses
  %i.do = load i32, ptr %i.bt, align 4, !alias.scope !753, !noalias !759, !noundef !3 ; 2 uses
  %.val.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !753, !noalias !759, !nonnull !3, !noundef !3 ; 3 uses
  %i.dp = zext i32 %i.do to i64                   ; 6 uses
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.dn, %i.dp
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dr, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %.invoke.i

bb.ag:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dp
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !760, !noalias !767, !noundef !3
  %i.du = icmp sgt i8 %i.dt, -65
  br i1 %i.du, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.ag, %bb.af, %bb.v, %bb.u
  %i.dv = phi ptr [ %.val.i.i, %bb.af ], [ %.val.i.i, %bb.ag ], [ %.val110.i, %bb.v ], [ %.val110.i, %bb.u ]
  %i.dw = phi i64 [ %i.dn, %bb.af ], [ %i.dn, %bb.ag ], [ %.val111.i, %bb.v ], [ %.val111.i, %bb.u ]
  %i.dx = phi i64 [ %i.dp, %bb.af ], [ %i.dp, %bb.ag ], [ %i.cm, %bb.v ], [ %i.cm, %bb.u ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef %i.dw, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #24
          to label %.cont.i unwind label %bb.x, !noalias !712

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.ag, %bb.af, %bb.ad
  %i.dy = add nuw nsw i64 %i.dp, 3
  %i.dz = call i64 @llvm.usub.sat.i64(i64 %i.dn, i64 %i.dy)
  invoke void @_RNvCseo6ZV82fEK1_3url28file_url_segments_to_pathbuf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef %i.dz, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.t)
          to label %bb.bo unwind label %bb.x, !noalias !712

bb.ah:                                            ; preds = %.noexc125.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !757, !noundef !3
  %i.ec = icmp eq i64 %i.eb, 9
  br i1 %i.ec, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah, %.noexc125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !757
  br label %.thread204.i

bb.aj:                                            ; preds = %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !757, !nonnull !3, !noundef !3 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 1
  %i.eg = xor i64 %i.ef, 8317981851476258668
  %i.eh = getelementptr i8, ptr %i.ee, i64 8
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i64
  %i.ek = xor i64 %i.ej, 116
  %i.el = or i64 %i.eg, %i.ek
  %i.em = icmp ne i64 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ad, label %bb.ai

bb.ak:                                            ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i.i
  %i.ep = icmp eq i32 %i.bu, 1
  br i1 %i.ep, label %bb.an, label %.lr.ph

.thread201.i:                                     ; preds = %.thread199.i
  %i.eq = icmp eq i32 %i.bu, 1
  br i1 %i.eq, label %bb.an, label %.thread202.i

.thread202.i:                                     ; preds = %.thread201.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !708
  br label %_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.aa
  %.sroa.13.8.copyload105 = load i64, ptr %i.ah, align 8, !noalias !768
  %.sroa.24.sroa.14.sroa.14.0..sroa.24.sroa.14.0..sroa.24.8..sroa_idx111.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.24.sroa.14.sroa.14.0.copyload = load i64, ptr %.sroa.24.sroa.14.sroa.14.0..sroa.24.sroa.14.0..sroa.24.8..sroa_idx111.sroa_idx.sroa_idx, align 8, !noalias !768
  %.sroa.24.sroa.14.sroa.18.0..sroa.24.sroa.14.0..sroa.24.8..sroa_idx111.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.24.sroa.14.sroa.18, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.24.sroa.14.sroa.18.0..sroa.24.sroa.14.0..sroa.24.8..sroa_idx111.sroa_idx.sroa_idx, i64 56, i1 false), !noalias !768
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.al, !noalias !712

bb.al:                                            ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body159.i unwind label %bb.am, !noalias !712

bb.am:                                            ; preds = %bb.al
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !712
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.n, !noalias !712

bb.an:                                            ; preds = %.thread201.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !708
  %i.et = load ptr, ptr %i.am, align 8, !noalias !708, !nonnull !3, !noundef !3
  %i.eu = load i64, ptr %i.az, align 8, !noalias !708, !noundef !3
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17expand_tilde_path(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.eu)
          to label %bb.bb unwind label %bb.x, !noalias !712

.lr.ph:                                           ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !708
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %gepdiff.i.i = add nsw i64 %.idx.i.i, -24
  %i.ev = udiv exact i64 %gepdiff.i.i, 24
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.dd
  br i1 %i.ex, label %._crit_edge, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.ao
  %.sroa.01.0.i.i.i283 = phi i64 [ %i.ev, %.lr.ph ], [ %i.fa, %bb.ao ] ; 2 uses
  %i.ey = phi ptr [ %i.da, %.lr.ph ], [ %i.ew, %bb.ao ] ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  %.val9.i.i.i = load i64, ptr %i.ez, align 8, !alias.scope !769, !noalias !772, !noundef !3
  %i.fa = add i64 %.val9.i.i.i, %.sroa.01.0.i.i.i283 ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %.sroa.01.0.i.i.i283
  br i1 %i.fb, label %bb.ar, label %bb.ao

._crit_edge:                                      ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !776
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef %i.fa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc132.i unwind label %bb.x, !noalias !712

.noexc132.i:                                      ; preds = %._crit_edge
  %i.fc = load i64, ptr %i.q, align 8, !range !65, !noalias !776, !noundef !3
  %i.fd = trunc nuw i64 %i.fc to i1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !235, !noalias !776, !noundef !3 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.fd, label %bb.aq, label %bb.at, !prof !30

bb.aq:                                            ; preds = %.noexc132.i
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !776
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ff, i64 %i.fh) #23
          to label %.noexc133.i unwind label %bb.x, !noalias !712

.noexc133.i:                                      ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
          to label %.noexc134.i unwind label %bb.x, !noalias !712

.noexc134.i:                                      ; preds = %bb.ar
  unreachable

.loopexit.i.i:                                    ; preds = %bb.az, %bb.ax
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i, %bb.at
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.r) #20
          to label %.body135.i unwind label %bb.ba, !noalias !777

bb.at:                                            ; preds = %.noexc132.i
  %i.fi = load ptr, ptr %i.fg, align 8, !noalias !776, !nonnull !3, !noundef !3
  %i.fj = icmp ule i64 %i.fa, %i.ff
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !776
  store i64 %i.ff, ptr %i.r, align 8, !noalias !776
  %i.fk = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store ptr %i.fi, ptr %i.fk, align 8, !noalias !776
  %i.fl = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %i.fl, align 8, !noalias !776
  %i.fm = getelementptr i8, ptr %i.da, i64 8
  %.val.i130.i = load ptr, ptr %i.fm, align 8, !alias.scope !769, !noalias !778, !nonnull !3, !noundef !3 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.da, i64 16
  %.val68.i.i = load i64, ptr %i.fn, align 8, !alias.scope !769, !noalias !778, !noundef !3
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i130.i, i64 %.val68.i.i
  invoke void @_RNvXs2_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull %.val.i130.i, ptr noundef nonnull %i.fo)
          to label %bb.au unwind label %.loopexit.split-lp.i.i, !noalias !777

bb.au:                                            ; preds = %bb.at
  %i.fp = load i64, ptr %i.fl, align 8, !noalias !776, !noundef !3 ; 3 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = sub i64 %i.fa, %i.fp                    ; 2 uses
  %i.fs = icmp eq i64 %i.dc, 1
  br i1 %i.fs, label %._crit_edge291, label %.lr.ph290

.lr.ph290:                                        ; preds = %bb.au
  %.sroa.05.1.i.i284 = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.ft = load ptr, ptr %i.fk, align 8, !noalias !776, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp
  br label %bb.aw

bb.av:                                            ; preds = %bb.az
  %i.fv = sub nuw nsw i64 %i.gc, %.sroa.05.1.val67.i.i ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.05.1.val67.i.i
  %.sroa.05.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.1.i.i288, i64 24 ; 2 uses
  %i.fx = icmp eq ptr %.sroa.05.1.i.i, %i.dd
  br i1 %i.fx, label %._crit_edge291, label %bb.aw

._crit_edge291:                                   ; preds = %bb.av, %bb.au
  %.sroa.26.2.i.i.lcssa = phi i64 [ %i.fr, %bb.au ], [ %i.fv, %bb.av ]
  %i.fy = sub i64 %i.fa, %.sroa.26.2.i.i.lcssa
  %.sroa.0177.0.copyload178.i = load i64, ptr %i.r, align 8, !noalias !779
  %.sroa.5179.0.copyload181.i = load ptr, ptr %i.fk, align 8, !noalias !779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !776
  br label %_RINvNtCs6Po7BT7Nknu_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.aw:                                            ; preds = %.lr.ph290, %bb.av
  %.sroa.05.1.i.i288 = phi ptr [ %.sroa.05.1.i.i284, %.lr.ph290 ], [ %.sroa.05.1.i.i, %bb.av ] ; 2 uses
  %.pn.i.i287 = phi ptr [ %i.da, %.lr.ph290 ], [ %.sroa.05.1.i.i288, %bb.av ] ; 2 uses
  %.sroa.26.2.i.i286 = phi i64 [ %i.fr, %.lr.ph290 ], [ %i.fv, %bb.av ] ; 2 uses
  %.sroa.028.2.i.i285 = phi ptr [ %i.fu, %.lr.ph290 ], [ %i.fw, %bb.av ] ; 2 uses
  %i.fz = getelementptr i8, ptr %.pn.i.i287, i64 32
  %.sroa.05.1.val.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !769, !noalias !778, !nonnull !3, !noundef !3
  %i.ga = getelementptr i8, ptr %.pn.i.i287, i64 40
end_hunk_1
begin_hunk_2_@_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16ensure_table_uriRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !812
  br label %bb.ec

bb.dw:                                            ; preds = %bb.dz, %bb.dx
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(88) %i.g) #20
          to label %common.resume unwind label %bb.ea, !noalias !822

bb.dx:                                            ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.4.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i88, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !812
  %.sroa.1645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.1645.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.i, i64 17, i1 false), !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  store i64 %.sroa.0.0.copyload1.i, ptr %i.g, align 8, !noalias !812
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !812
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 0, ptr %.sroa.736.0..sroa_idx.i, align 8, !noalias !812
  %.sroa.938.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i16 0, ptr %.sroa.938.0..sroa_idx.i, align 8, !noalias !812
  %.sroa.1140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 4, ptr %.sroa.1140.0..sroa_idx.i, align 4, !noalias !812
  %.sroa.1241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 7, ptr %.sroa.1241.0..sroa_idx.i, align 8, !noalias !812
  %.sroa.1342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store i32 7, ptr %.sroa.1342.0..sroa_idx.i, align 4, !noalias !812
  %.sroa.1443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 %.sroa.07.0.copyload.i.i, ptr %.sroa.1443.0..sroa_idx.i, align 8, !noalias !812
  %.sroa.1544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %.sroa.07.0.copyload.i.i, ptr %.sroa.1544.0..sroa_idx.i, align 4, !noalias !812
  %i.jh = load ptr, ptr %.sroa.4.0..sroa_idx.i88, align 8, !noalias !812, !nonnull !3, !noundef !3
  %i.ji = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !812, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !812
  store i32 47, ptr %i.f, align 4, !noalias !812
  %i.jk = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jh, i64 noundef %i.jj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %bb.dy unwind label %bb.dw, !noalias !822

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !812
  br i1 %i.jk, label %.thread, label %bb.dz

.thread:                                          ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7118, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i88, i64 80, i1 false), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !812
  br label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.jl = icmp sgt i64 %i.jj, -1
  call void @llvm.assume(i1 %i.jl)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %bb.eb unwind label %bb.dw, !noalias !822

bb.ea:                                            ; preds = %bb.dw
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !822
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.jn = load ptr, ptr %.sroa.4.0..sroa_idx.i88, align 8, !alias.scope !823, !noalias !812, !nonnull !3, !noundef !3
  %i.jo = load i64, ptr %i.ji, align 8, !alias.scope !823, !noalias !812, !noundef !3 ; 2 uses
  %i.jp = icmp sgt i64 %i.jo, -1
  call void @llvm.assume(i1 %i.jp)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jo
  store i8 47, ptr %i.jq, align 1, !noalias !822
  %i.jr = add nuw i64 %i.jj, 1
  store i64 %i.jr, ptr %i.ji, align 8, !alias.scope !823, !noalias !812
  %.sroa.0116.0.copyload117.pre = load i64, ptr %i.g, align 8, !noalias !809 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7118, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i88, i64 80, i1 false), !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !812
  %i.js = icmp eq i64 %.sroa.0116.0.copyload117.pre, -9223372036854775808
  br i1 %i.js, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.thread243, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !826
  store ptr %i.av, ptr %i.b, align 8, !noalias !826
  %.sroa.42.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.42.0..sroa_idx.i95, align 8, !noalias !826
  %i.jt = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jt, ptr noundef nonnull @38, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !826
  %.sroa.625.sroa.0.0.copyload = load i64, ptr %i.jt, align 8
  %.sroa.625.sroa.7.0..sroa.625.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.625.sroa.7, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.625.sroa.7.0..sroa.625.0..sroa_idx.sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.621.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.625.sroa.7, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.sroa.7)
  %.sroa.249.sroa.2.0..sroa.249.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.249.sroa.2.0..sroa.249.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.621.sroa.7, i64 80, i1 false)
  store i64 -9223372036854775724, ptr %0, align 16
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.625.sroa.0.0.copyload, ptr %.sroa.249.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621.sroa.7)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ed:                                            ; preds = %.thread, %bb.eb
  %.sroa.0116.0.copyload117273 = phi i64 [ %.sroa.0.0.copyload1.i, %.thread ], [ %.sroa.0116.0.copyload117.pre, %bb.eb ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.625.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7118, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7118)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.621.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.625.sroa.7, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.sroa.7)
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4158.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.621.sroa.7, i64 80, i1 false)
  store i64 %.sroa.0116.0.copyload117273, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core5table19normalize_table_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.at)
          to label %bb.eh unwind label %bb.eg

.body.thread228:                                  ; preds = %bb.cw, %.body
  %eh.lpad-body231 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.hz, %bb.cw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.as) #20
          to label %common.resume unwind label %bb.ef

bb.ef:                                            ; preds = %bb.el, %bb.eg, %.body.thread228
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.eg:                                            ; preds = %bb.ee
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(88) %i.at) #20
          to label %.body72 unwind label %bb.ef

bb.eh:                                            ; preds = %bb.ee
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.jw, ptr noundef nonnull align 8 dereferenceable(88) %i.ao, i64 88, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.at)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i97 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.at)
          to label %.body72 unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i97: ; preds = %bb.eh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.at)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.db

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ci, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  ret void

bb.el:                                            ; preds = %.body72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %.sroa.4125.0..sroa_idx) #20
          to label %common.resume unwind label %bb.ef
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErrorxEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !830
  store i64 0, ptr %i.c, align 8, !noalias !830
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !830
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !830
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !830
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !830
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !830
  store ptr %i.c, ptr %i.b, align 8, !noalias !830
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @67, ptr %i.g, align 8, !noalias !830
  %i.h = invoke noundef zeroext i1 @_RNvXNtCshmPyUV8PP35_6chrono5serdeINtB2_10SerdeErrorxENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !837

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !noalias !837

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtCshmPyUV8PP35_6chrono5serde10SerdeErrorxENtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #23
          to label %.noexc.i.i unwind label %bb.b, !noalias !837

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !837
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtCshmPyUV8PP35_6chrono5serde10SerdeErrorxENtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !830
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customINtNtCshmPyUV8PP35_6chrono5serde10SerdeErroryEECsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !839
  store i64 0, ptr %i.c, align 8, !noalias !839
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !839
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !839
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !839
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !839
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !839
  store ptr %i.c, ptr %i.b, align 8, !noalias !839
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @67, ptr %i.g, align 8, !noalias !839
  %i.h = invoke noundef zeroext i1 @_RNvXNtCshmPyUV8PP35_6chrono5serdeINtB2_10SerdeErroryENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !846

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !noalias !846

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtCshmPyUV8PP35_6chrono5serde10SerdeErroryENtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #23
          to label %.noexc.i.i unwind label %bb.b, !noalias !846

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !846
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringINtNtCshmPyUV8PP35_6chrono5serde10SerdeErroryENtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !839
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !866
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !866
  %i.f = load i64, ptr %i.a, align 8, !range !65, !noalias !866, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !235, !noalias !866, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !866
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !866
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !866, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !866
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !873
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !874, !noalias !875
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !874, !noalias !875
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !874, !noalias !875
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !876
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, %bb.e
  %i.n = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.n
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCshmPyUV8PP35_6chrono6format10ParseErrorECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef range(i8 0, 8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !877
  store i64 0, ptr %i.c, align 8, !noalias !877
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !877
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !877
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !877
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !877
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !877
  store ptr %i.c, ptr %i.b, align 8, !noalias !877
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @67, ptr %i.g, align 8, !noalias !877
  %i.h = invoke noundef zeroext i1 @_RNvXs1_NtCshmPyUV8PP35_6chrono6formatNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !884

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !noalias !884

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #23
          to label %.noexc.i.i unwind label %bb.b, !noalias !884

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !884
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !877
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef range(i8 0, 5) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !886
  store i64 0, ptr %i.c, align 8, !noalias !886
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !886
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !886
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !886
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !886
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !886
  store ptr %i.c, ptr %i.b, align 8, !noalias !886
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @67, ptr %i.g, align 8, !noalias !886
  %i.h = invoke noundef zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !893

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %bb.f unwind label %bb.e, !noalias !893

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #23
          to label %.noexc.i.i unwind label %bb.b, !noalias !893

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !893
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !886
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customReECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !901
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !901
  %i.c = load i64, ptr %i.a, align 8, !range !65, !noalias !901, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !235, !noalias !901, !noundef !3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !901
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #23, !noalias !901
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !901, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !901
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !905
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !906
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !906
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !906
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCseqDwI8vvjGQ_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB22_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1l_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB8_12UnityCatalog42get_temp_table_credentials_with_permissionReB1M_B1M_B1M_E0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.625.i.sroa.6 = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.625.i.sroa.7 = alloca [176 x i8], align 8 ; 6 uses
  %i.a = alloca [256 x i8], align 8               ; 11 uses
  %.sroa.517.i = alloca [16 x i8], align 8        ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %.sroa.625.i.sroa.5.i.sroa.6 = alloca [40 x i8], align 8 ; 8 uses
  %.sroa.625.i.sroa.6.i = alloca [168 x i8], align 8 ; 8 uses
  %i.d = alloca [248 x i8], align 8               ; 11 uses
  %.sroa.517.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.14126.i.sroa.5 = alloca [40 x i8], align 8 ; 8 uses
  %.sroa.15.i = alloca [168 x i8], align 8        ; 6 uses
  %.sroa.9113.sroa.7.i.sroa.4 = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.9113.sroa.8.i = alloca [168 x i8], align 8 ; 7 uses
  %.sroa.7.i = alloca [112 x i8], align 8         ; 6 uses
  %i.h = alloca [136 x i8], align 8               ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 12 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [312 x i8], align 8               ; 5 uses
  %i.r = alloca [312 x i8], align 8               ; 5 uses
  %.sroa.081.i = alloca [1240 x i8], align 8      ; 8 uses
  %i.s = alloca [136 x i8], align 8               ; 14 uses
  %.sroa.3.sroa.5.i.sroa.5 = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.566.i = alloca [24 x i8], align 8        ; 6 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %i.u = alloca [40 x i8], align 8                ; 17 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.22.sroa.5 = alloca [40 x i8], align 8    ; 6 uses
  %.sroa.26 = alloca [176 x i8], align 8          ; 2 uses
  %.sroa.9216.sroa.8 = alloca [40 x i8], align 8  ; 2 uses
  %.sroa.9216.sroa.9 = alloca [176 x i8], align 8 ; 2 uses
  %i.w = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7179.sroa.3 = alloca [24 x i8], align 8  ; 2 uses
  %.sroa.7179.sroa.4 = alloca [72 x i8], align 8  ; 3 uses
  %i.x = alloca [136 x i8], align 8               ; 11 uses
  %i.y = alloca [40 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [312 x i8], align 8              ; 5 uses
  %i.ae = alloca [312 x i8], align 8              ; 6 uses
  %i.af = alloca [312 x i8], align 8              ; 6 uses
  %.sroa.0171 = alloca [1240 x i8], align 8       ; 7 uses
  %.sroa.14153 = alloca [24 x i8], align 8        ; 9 uses
  %.sroa.10144.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %i.ag = alloca [136 x i8], align 8              ; 17 uses
  %.sroa.8126.sroa.3 = alloca [40 x i8], align 8  ; 3 uses
  %.sroa.9128 = alloca [168 x i8], align 8        ; 2 uses
  %.sroa.13114.sroa.6 = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.14115 = alloca [168 x i8], align 8       ; 7 uses
  %.sroa.3.sroa.7 = alloca [16 x i8], align 8     ; 3 uses
  %.sroa.585 = alloca [24 x i8], align 8          ; 2 uses
  %i.ah = alloca [72 x i8], align 8               ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 391 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !383, !noundef !3
  switch i8 %i.aj, label %default.unreachable318 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.h
    i8 4, label %bb.q
    i8 5, label %bb.b
    i8 6, label %bb.eb
  ]

default.unreachable318:                           ; preds = %bb.eb, %bb.bg, %bb.q, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10144.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14153)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0171)
  br label %bb.dj

bb.c:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 387
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 386
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.an, i8 0, i64 7, i1 false)
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8
  store i8 1, ptr %i.ak, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !noundef !3
  store ptr %i.at, ptr %i.ar, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 %i.av, ptr %i.aw, align 8
  store i8 1, ptr %i.al, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3
end_hunk_2
begin_hunk_3_@_RNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtB7_12UnityCatalog14get_credential0B7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12121, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8111.0..sroa_idx112, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i56 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body57 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i56: ; preds = %bb.cz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60 unwind label %bb.dc

.body57:                                          ; preds = %bb.dh, %bb.da, %bb.dc, %bb.cx, %bb.cv
  %.pn17 = phi { ptr, i32 } [ %i.hs, %bb.cv ], [ %i.ht, %bb.cx ], [ %i.hz, %bb.da ], [ %i.ib, %bb.dc ], [ %i.if, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #20
          to label %.body63 unwind label %bb.o

bb.dc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i68, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i56
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body57

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i62 unwind label %bb.dd

bb.dd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body63 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i62: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit66 unwind label %bb.df

.body63:                                          ; preds = %.body38, %bb.ct, %bb.dj, %bb.dd, %bb.df, %.body57
  %.pn19.pn = phi { ptr, i32 } [ %i.ih, %bb.dj ], [ %.pn17, %.body57 ], [ %i.ic, %bb.dd ], [ %i.ie, %bb.df ], [ %i.hr, %bb.ct ], [ %eh.lpad-body39, %.body38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.p

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i74, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i62
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body63

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit66: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.k

bb.dg:                                            ; preds = %_RNvMNtNtCs4j34XAPZOn0_4http6header5valueNtB2_11HeaderValue8from_str.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i68 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body57 unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i68: ; preds = %bb.dg
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit72 unwind label %bb.dc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit72: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i74 unwind label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit72
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body63 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i74: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit72
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit78 unwind label %bb.df

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit78: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i74, %bb.dl
  %.sroa.0118.1 = phi i64 [ %.sroa.068.1.i, %bb.dl ], [ -9223372036854775805, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i74 ]
  %.sroa.10120.1 = phi i8 [ %.sroa.569.i.sroa.8.1, %bb.dl ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i74 ]
  %.sroa.6119.sroa.4.1 = phi i64 [ %.sroa.569.i.sroa.7.1, %bb.dl ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.k

bb.dl:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12121, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.999.sroa.8, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10100, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6119.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3103.sroa.0, i64 24, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit78
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtCskQDtHcQtBkN_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtNtB9_7runtime9scheduler12multi_thread6worker4CoreE4swapCsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw xchg ptr %0, ptr %1 acq_rel, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !3
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB2_9IntoProxy10into_proxyCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [88 x i8], align 8                ; 10 uses
  %i.i = alloca [88 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  call void @_RNvXs3_NtCsgO6CtM78C4N_7reqwest8into_urlReNtB5_13IntoUrlSealed8into_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
  %i.n = load i64, ptr %i.i, align 8, !range !235, !noundef !3
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %bb.b, label %bb.c

.body.thread:                                     ; preds = %bb.z, %bb.ac, %bb.i
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ac ], [ %i.bs, %bb.z ], [ %i.af, %bb.i ]
  resume { ptr, i32 } %.pn

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !align !15, !noundef !3 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %.not19 = icmp eq ptr %i.s, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.u = load i16, ptr %i.t, align 8, !range !1118, !noundef !3
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.w = load i32, ptr %i.v, align 4, !noundef !3 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val22 = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val23 = load i64, ptr %i.y, align 8, !noundef !3 ; 3 uses
  %i.z = zext i32 %i.w to i64                     ; 4 uses
  %i.aa = icmp eq i32 %i.w, 0
  br i1 %i.aa, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp ugt i64 %.val23, %i.z
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i64 %.val23, %i.z
  br i1 %i.ab, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.val22, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !1119, !noundef !3
  %i.ae = icmp sgt i8 %i.ad, -65
  br i1 %i.ae, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val22, i64 noundef %.val23, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #24
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

.thread:                                          ; preds = %bb.d, %bb.m, %bb.o, %bb.j, %bb.c, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.h, %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(88) %i.h) #20
          to label %.body.thread unwind label %bb.p

bb.j:                                             ; preds = %bb.g, %bb.f
  switch i32 %i.w, label %.thread [
    i32 6, label %bb.k
    i32 7, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %.val22, align 1
  %i.ah = xor i32 %i.ag, 1801678707
  %i.ai = getelementptr i8, ptr %.val22, i64 4
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = zext i16 %i.aj to i32
  %i.al = xor i32 %i.ak, 13427
  %i.am = or i32 %i.ah, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.j
  %2 = load i32, ptr %.val22, align 1
  %3 = xor i32 %2, 1801678707
  %4 = getelementptr i8, ptr %.val22, i64 3
  %5 = load i32, ptr %4, align 1
  %6 = xor i32 %5, 1630827371
  %7 = or i32 %3, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %i.aq = icmp eq i32 %9, 0
  br i1 %i.aq, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %10 = load i32, ptr %.val22, align 1
  %11 = xor i32 %10, 1801678707
  %12 = getelementptr i8, ptr %.val22, i64 4
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i32
  %15 = xor i32 %14, 13683
  %16 = or i32 %11, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %i.ar = icmp eq i32 %18, 0
  br i1 %i.ar, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.l
  %19 = load i32, ptr %.val22, align 1
  %20 = xor i32 %19, 1801678707
  %21 = getelementptr i8, ptr %.val22, i64 3
  %22 = load i32, ptr %21, align 1
  %23 = xor i32 %22, 1748333419
  %24 = or i32 %20, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %i.as = icmp eq i32 %26, 0
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.at = invoke noundef zeroext i1 @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8set_port(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.h, i16 noundef 1, i16 1080)
          to label %.thread unwind label %bb.i    ; 0 uses

bb.p:                                             ; preds = %bb.ac, %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !align !15, !noundef !3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %.sroa.02.144 = phi ptr [ %i.bi, %bb.v ], [ %i.s, %.lr.ph.preheader ] ; 4 uses
  %.sroa.5.143 = phi ptr [ %i.bj, %bb.v ], [ %i.aw, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.143) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.143, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !3, !nonnull !3 ; 2 uses
  invoke void %i.ay(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %.sroa.02.144)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %.lr.ph
  %i.az = load i128, ptr %i.d, align 16, !noundef !3
  %i.ba = icmp eq i128 %i.az, 52593667306140550496992397592266880609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void %i.ay(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %.sroa.02.144)
          to label %bb.t unwind label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.bb = load i8, ptr %.sroa.02.144, align 1, !range !729, !noundef !3
  %i.bc = icmp eq i8 %i.bb, 6
  br i1 %i.bc, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bd = load i128, ptr %i.c, align 16, !noundef !3
  %i.be = icmp eq i128 %i.bd, -125903109373568333414932580469899486726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.be, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.5.143, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !nonnull !3
  %i.bh = invoke { ptr, ptr } %i.bg(ptr noundef nonnull %.sroa.02.144)
          to label %bb.v unwind label %.loopexit  ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1
  %.not20 = icmp eq ptr %i.bi, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 8
  %i.bk = call noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newBx_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.w:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @62, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.loopexit.split-lp

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXs5_NtCsgO6CtM78C4N_7reqwest8into_urlNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13IntoUrlSealed8into_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bn = load i64, ptr %0, align 8, !range !235, !noundef !3
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808
  br i1 %i.bo, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1126
  store i16 0, ptr %i.a, align 8, !noalias !1126
  %i.br = invoke noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newBx_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 %i.q)
          to label %_RNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_9IntoProxy10into_proxy0CsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.z, !noalias !1130

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 8 %i.bq) #20
          to label %.body.thread unwind label %bb.aa

_RNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_9IntoProxy10into_proxy0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1126
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 8 %i.bq)
  store ptr %i.br, ptr %i.bp, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ab:                                            ; preds = %bb.x
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtBL_9IntoProxy10into_proxy0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.thread, %_RNCNvXNtCsgO6CtM78C4N_7reqwest5proxyRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_9IntoProxy10into_proxy0CsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.ab, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.w, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.q) #20
          to label %.body.thread unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [72 x i8], align 8            ; 2 uses
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [96 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2r_6marker4SyncNtB2Y_4SendEL_EENtCs574AjYkQ1m0_9http_body4Body10poll_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !1131, !noundef !3
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0.copyload68 = load ptr, ptr %.sroa.3.0..sroa_idx67, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx69, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %.sroa.0.0.copyload, label %bb.e [
    i64 5, label %bb.c
    i64 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.019.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 4, ptr %1, align 8
  %.not41 = icmp eq i64 %.sroa.019.0.copyload, 4
  br i1 %.not41, label %bb.m, label %bb.l, !prof !30

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload68) ]
  store i64 4, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.copyload68, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.618.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4, i64 72, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.416.0..sroa_idx, align 8
  store ptr %.sroa.3.0.copyload68, ptr %.sroa.517.0..sroa_idx, align 8
  %i.f = load i64, ptr %1, align 8, !range !356, !noundef !3
  %.not42 = icmp eq i64 %i.f, 4
  br i1 %.not42, label %bb.g, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e
  call void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE10push_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_bodyINtB5_7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2r_6marker4SyncNtB2Y_4SendEL_EENtCs574AjYkQ1m0_9http_body4Body10poll_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !1131, !noundef !3
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #23
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %i.a) #20
          to label %.thread44 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.521.0..sroa_idx, i64 120, i1 false)
  store i64 %.sroa.019.0.copyload, ptr %0, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #23
  unreachable

.thread44:                                        ; preds = %bb.i
  resume { ptr, i32 } %i.i

bb.n:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.d = icmp eq ptr %.val, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3r_19UnityCatalogBuilder25get_uc_location_and_token0EEE00ENtNtB7_6future6Future4pollB3r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !15, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.c = load ptr, ptr %.val, align 8, !noalias !1135, !nonnull !3, !align !15, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsa_NtNtCskQDtHcQtBkN_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !1132
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !alias.scope !1132, !noalias !1137
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.e = load ptr, ptr %.val1, align 8, !noalias !1135, !nonnull !3, !align !15, !noundef !3
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1C_19UnityCatalogBuilder25get_uc_location_and_token0EENtB4_6Future4pollB1C_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !1132
  %i.f = load i64, ptr %i.a, align 8, !range !31, !noalias !1135, !noundef !3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1135
  store i64 3, ptr %0, align 8, !alias.scope !1132, !noalias !1137
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1135
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit

_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2L_19UnityCatalogBuilder25get_uc_location_and_token0EEE00B2L_.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2C_19UnityCatalogBuilder25get_uc_location_and_token0E00ENtNtB7_6future6Future4pollB2C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  %i.g = alloca [80 x i8], align 8                ; 21 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.3261.i.i = alloca [72 x i8], align 8     ; 8 uses
  %.sroa.5262.i.i = alloca [176 x i8], align 8    ; 4 uses
  %i.p = alloca [256 x i8], align 8               ; 10 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [256 x i8], align 8               ; 4 uses
  %.sroa.3219.i.i = alloca [72 x i8], align 8     ; 6 uses
  %.sroa.5220.i.i = alloca [176 x i8], align 8    ; 4 uses
  %i.s = alloca [256 x i8], align 8               ; 8 uses
  %.sroa.3184.i.i = alloca [24 x i8], align 8     ; 5 uses
  %.sroa.5185.i.i = alloca [40 x i8], align 8     ; 4 uses
  %i.t = alloca [72 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.8167.i.i = alloca [40 x i8], align 8     ; 5 uses
  %.sroa.5173.i.i = alloca [112 x i8], align 8    ; 4 uses
  %i.v = alloca [640 x i8], align 8               ; 5 uses
  %i.w = alloca [160 x i8], align 8               ; 8 uses
  %.sroa.8158.i.i = alloca [40 x i8], align 8     ; 5 uses
  %.sroa.5.i.i = alloca [112 x i8], align 8       ; 4 uses
  %i.x = alloca [640 x i8], align 8               ; 5 uses
  %i.y = alloca [160 x i8], align 8               ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  %i.ab = alloca [640 x i8], align 8              ; 6 uses
  %i.ac = alloca [640 x i8], align 8              ; 8 uses
  %.sroa.8150.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.ad = alloca [640 x i8], align 8              ; 10 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !15, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.ae, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.af = load ptr, ptr %.val, align 8, !noalias !1141, !nonnull !3, !align !15, !noundef !3
  %i.ag = tail call noundef zeroext i1 @_RNvXsa_NtNtCskQDtHcQtBkN_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !1138
  br i1 %i.ag, label %bb.b, label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ah = load ptr, ptr %.val1, align 8, !noalias !1141, !nonnull !3, !align !15, !noundef !3 ; 116 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3261.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5262.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3219.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5220.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3184.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5185.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8167.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8158.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 283 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !384, !noalias !1143, !noundef !3
  switch i8 %i.aj, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.bg
    i8 4, label %bb.bs
    i8 5, label %bb.cm
  ]

default.unreachable:                              ; preds = %bb.cm, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 282
  store i8 0, ptr %i.ak, align 2, !noalias !1143
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 281
  store i8 0, ptr %i.al, align 1, !noalias !1143
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 280
  store i8 0, ptr %i.am, align 8, !noalias !1143
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1143, !nonnull !3, !noundef !3 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1143, !noundef !3 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1143, !align !15, !noundef !3 ; 2 uses
  %i.at = icmp ult i64 %i.aq, 6
  br i1 %i.at, label %bb.d, label %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %i.aq, 5
  br i1 %i.au, label %bb.h, label %bb.e, !prof !14

_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !1147, !noalias !1154, !noundef !3
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.h, label %bb.e, !prof !14

bb.e:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, %bb.d
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq, i64 noundef 5, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #24
          to label %.noexc.i.i unwind label %bb.f, !noalias !1154

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.g:                                             ; preds = %bb.h
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2C_19UnityCatalogBuilder25get_uc_location_and_token0E00ENtNtB7_6future6Future4pollB2C_:bb.a
bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1177
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1177
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3261.i.i, i64 24, i1 false), !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1177
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 -9223372036854775801, ptr %i.in, align 8, !noalias !1177
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i135.i.i unwind label %bb.do, !noalias !1154

bb.do:                                            ; preds = %bb.dn
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %.body136.i.i unwind label %bb.dp, !noalias !1154

bb.dp:                                            ; preds = %bb.do
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1154
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i135.i.i: ; preds = %bb.dn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit139.i.i unwind label %bb.dq, !noalias !1154

bb.dq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i135.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i.i

.body136.i.i:                                     ; preds = %bb.dq, %bb.do
  %eh.lpad-body137.i.i = phi { ptr, i32 } [ %i.iq, %bb.dq ], [ %i.io, %bb.do ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.ir) #20
          to label %.body141.i.i unwind label %bb.ao, !noalias !1154

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit139.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i135.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %bb.ds unwind label %bb.dr, !noalias !1154

bb.dr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit139.i.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %.body141.i.i unwind label %bb.dt, !noalias !1154

bb.ds:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit139.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsEEB1h_.exit.i.i unwind label %bb.du, !noalias !1154

bb.dt:                                            ; preds = %bb.dr
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1154
  unreachable

.body141.i.i:                                     ; preds = %bb.dw, %bb.du, %bb.dr, %.body136.i.i
  %.pn47.i.i = phi { ptr, i32 } [ %i.ij, %bb.dw ], [ %eh.lpad-body137.i.i, %.body136.i.i ], [ %i.iv, %bb.du ], [ %i.it, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1177
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog26get_temp_table_credentialsReB2d_B2d_E0EBP_.exit.i.i

bb.du:                                            ; preds = %bb.ds
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body141.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsEEB1h_.exit.i.i: ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1177
  br label %bb.dk

bb.dv:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1177
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.il) #20
          to label %bb.dw unwind label %bb.ao, !noalias !1154

bb.dw:                                            ; preds = %bb.dv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.iw) #20
          to label %.body141.i.i unwind label %bb.ao, !noalias !1154

bb.dx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.body106.i.i

bb.dy:                                            ; preds = %bb.cf
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ah, i64 280
  %i.iz = load i8, ptr %i.iy, align 8, !range !27, !noalias !1143, !noundef !3
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.ea, label %bb.ck

bb.dz:                                            ; preds = %bb.cf
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ah, i64 281
  %i.jc = load i8, ptr %i.jb, align 1, !range !27, !noalias !1143, !noundef !3
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.eb, label %bb.ck

bb.ea:                                            ; preds = %bb.dy
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEBK_(ptr noalias noundef align 8 dereferenceable(256) %i.ge) #20
          to label %bb.ck unwind label %bb.ao, !noalias !1154

bb.eb:                                            ; preds = %bb.dz
  %i.je = getelementptr inbounds nuw i8, ptr %i.ah, i64 2368
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef align 8 dereferenceable(72) %i.je) #20
          to label %bb.ck unwind label %bb.ao, !noalias !1154

bb.ec:                                            ; preds = %bb.ck
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf) #20
          to label %.body106.i.i unwind label %bb.ao, !noalias !1154

bb.ed:                                            ; preds = %.invoke.i.i
  %.sroa.9.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx2.i, i64 72, i1 false), !noalias !1241
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit.sink.split

_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit.sink.split: ; preds = %bb.bi, %bb.bu, %bb.cw, %bb.ed
  %.sink.i.ph.i.sink = phi i8 [ 1, %bb.ed ], [ 3, %bb.bi ], [ 4, %bb.bu ], [ 5, %bb.cw ]
  %.sink.ph = phi i64 [ %.sroa.0.0.copyload1.i, %bb.ed ], [ 3, %bb.bi ], [ 3, %bb.bu ], [ 3, %bb.cw ]
  store i8 %.sink.i.ph.i.sink, ptr %i.ai, align 1, !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3261.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5262.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3219.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5220.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3184.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5185.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8167.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8158.i.i)
  br label %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit

_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit: ; preds = %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit.sink.split, %bb.a
  %.sink = phi i64 [ 2, %bb.a ], [ %.sink.ph, %_RNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB7_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1G_19UnityCatalogBuilder25get_uc_location_and_token0E00B1G_.exit.sink.split ]
  store i64 %.sink, ptr %0, align 8, !alias.scope !1138, !noalias !1241
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNvNtCskQDtHcQtBkN_5tokio5trace10trace_leafENtNtB7_6future6Future4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCskQDtHcQtBkN_5tokio4util11atomic_cellINtB5_10AtomicCellNtNtNtNtB9_7runtime9scheduler14current_thread4CoreENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw xchg ptr %0, ptr null acq_rel, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread4CoreEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtB8_3ops5range5RangeyENtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !15, !noundef !3 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !1242, !noalias !1247, !noundef !3 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsC_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i: ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsE_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.j, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i, %bb.d, %bb.c
  %i.k = load ptr, ptr %1, align 8, !alias.scope !1250, !noalias !1251, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1250, !noalias !1251, !nonnull !3, !align !15, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !3, !nonnull !3
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 2) #26, !inline_history !1252
  br i1 %i.p, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.b, align 8, !alias.scope !1253, !noalias !1256, !noundef !3 ; 2 uses
  %i.s = and i32 %i.r, 33554432
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %i.r, 67108864
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.w = tail call noundef zeroext i1 @_RNvXsC_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.g
  %i.y = tail call noundef zeroext i1 @_RNvXsE_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d, %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i, %bb.e, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i = phi i1 [ true, %bb.e ], [ true, %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit.i ], [ true, %bb.c ], [ true, %bb.d ], [ %i.x, %bb.i ], [ %i.y, %bb.j ], [ %i.w, %bb.h ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !15, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !15, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1258, !noalias !1261, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1258, !noalias !1261, !noundef !3
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1258
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1263, !noundef !3 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1263, !nonnull !3, !noundef !3
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !1263, !noundef !3 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !1263
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1266
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1269, !noalias !1266, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1269, !noalias !1266, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1269, !noalias !1266
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1269, !noalias !1266
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj1_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add i64 %.sroa.0.0.i.i3, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.k) #20
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj2_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add i64 %.sroa.0.0.i.i3, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.k) #20
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj3_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(144) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add i64 %.sroa.0.0.i.i3, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.k) #20
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvXNtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EENtB2_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !1273, !noalias !1276, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1273, !noalias !1276, !nonnull !3
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i, %.lr.ph.i
  %i.d = phi ptr [ %1, %.lr.ph.i ], [ %i.e, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val4.i = load i64, ptr %i.f, align 8, !noalias !1278, !noundef !3
  %i.g = icmp eq i64 %.val4.i, %.val3.i.i
  br i1 %i.g, label %bb.c, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !noalias !1278, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !noalias !1278
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i: ; preds = %bb.c, %bb.b
  %.not8.i = icmp eq ptr %i.e, %i.a
  br i1 %.not8.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i ], [ true, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCsbvkFyIu7lgC_4core3fmtuNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write10write_charCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !1279
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !1279
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !1279
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1279
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1279
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1279
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1279
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1279
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1279
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1279
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1282, !noalias !1285, !nonnull !3, !noundef !3
  %i.ac = call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !1282 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1282, !noalias !1285, !noundef !3 ; 2 uses
  %i.ae = icmp eq ptr %.val.i, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.j, !noalias !1282

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1282, !noalias !1285
  resume { ptr, i32 } %i.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1282, !noalias !1285
  br label %_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_strCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @13, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1287
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtQNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsgO8S5jLFugx_23deltalake_catalog_unity.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @67, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1288
  ret i1 %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull @76, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRDNtNtCs1gOyXocuPRE_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull @77, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull @78, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15unknown_variantCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.43.0..sroa_idx, align 8
  %i.g = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull @79, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCs1gOyXocuPRE_10serde_core2deNtB5_5OneOfNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.j = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull @80, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder25get_uc_location_and_token0EEE0INtNtB2h_6result6ResultTNtNtB2N_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5n_B5n_EENtB3p_17UnityCatalogErrorEEB3p_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2k_19UnityCatalogBuilder25get_uc_location_and_token0E0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB4v_B4v_EENtB2k_17UnityCatalogErrorEEB2k_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio7runtime9schedulerNtB5_7Context21expect_current_thread(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMsF_NtCs2pqxYH9ZEk8_3std2fsNtB5_10DirBuilder7__create(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCseo6ZV82fEK1_3url25path_to_file_url_segments(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCs2pqxYH9ZEk8_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #15

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCsb2ODgYNwnRL_6anyhow5errorNtB5_5Error20construct_from_adhocNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2pqxYH9ZEk8_3std3sys2fs12canonicalize(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs2pqxYH9ZEk8_3std2fs14read_to_string5inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2pqxYH9ZEk8_3std3sys2fs8metadata(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhEE11spec_extendCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsbvkFyIu7lgC_4core4task4wake5WakerENtNtNtBL_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsbrUfNxVDXww_4libc4unix10linux_like11epoll_eventENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models10ColumnInfoENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbvkFyIu7lgC_4core4task4wake5WakerENtNtNtBS_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_4
