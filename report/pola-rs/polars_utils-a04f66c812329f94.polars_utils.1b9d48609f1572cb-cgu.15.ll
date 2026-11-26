Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_utils-a04f66c812329f94.polars_utils.1b9d48609f1572cb-cgu.15?download=true
inline.NumInlined: 117
inline.NumDeleted: 72
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0EBO_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_once6vtableBc_, ptr @_RNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0B7_ }>, align 8, !guid !62
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs2mZqlW55729_12polars_utils, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCs2mZqlW55729_12polars_utils, ptr @_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write10write_charCs2mZqlW55729_12polars_utils, ptr @_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCs2mZqlW55729_12polars_utils }>, align 8, !guid !62
@2 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1, !guid !62
@3 = private unnamed_addr constant [74 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/std/src/io/mod.rs\00", align 1, !guid !62
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"I\00\00\00\00\00\00\00\88\02\00\00\11\00\00\00" }>, align 8, !guid !62
@5 = private unnamed_addr constant [34 x i8] c"cannot make an empty path absolute", align 1, !guid !62
@6 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @5, [9 x i8] c"\22\00\00\00\00\00\00\00\14", [7 x i8] undef }>, align 8, !guid !62
@7 = private unnamed_addr constant [11 x i8] c"\C0\07-unmap-\C0\00", align 1, !guid !62
@8 = private unnamed_addr constant [46 x i8] c"crates/polars-utils/src/cardinality_sketch.rs\00", align 1, !guid !62
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"-\00\00\00\00\00\00\001\00\00\00>\00\00\00" }>, align 8, !guid !62
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8, !guid !62
@11 = private unnamed_addr constant [17 x i8] c"RAYON_NUM_THREADS", align 1, !guid !62
@12 = private unnamed_addr constant [17 x i8] c"RAYON_RS_NUM_CPUS", align 1, !guid !62
@_RNvNCNKNvNtCs2mZqlW55729_12polars_utils11regex_cache17LOCAL_REGEX_CACHE0023___RUST_STD_INTERNAL_VAL = thread_local global <{ [120 x i8], [1 x i8], [7 x i8] }> <{ [120 x i8] undef, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8, !guid !63
@13 = private unnamed_addr constant ptr @_RNvYNCNKNvNtCs2mZqlW55729_12polars_utils11regex_cache17LOCAL_REGEX_CACHE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1h_6option6OptionQIB1W_INtNtB1h_4cell7RefCellNtB8_10RegexCacheEEEEE9call_onceBa_, align 8, !guid !62
@14 = private unnamed_addr constant [23 x i8] c"POLARS_REGEX_SIZE_LIMIT", align 1, !guid !62
@15 = private unnamed_addr constant [31 x i8] c"invalid POLARS_REGEX_SIZE_LIMIT", align 1, !guid !62
@16 = private unnamed_addr constant [39 x i8] c"crates/polars-utils/src/regex_cache.rs\00", align 1, !guid !62
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"&\00\00\00\00\00\00\00\0D\00\00\00\0E\00\00\00" }>, align 8, !guid !62
@18 = private unnamed_addr constant [22 x i8] c"tuple struct GzipLevel", align 1, !guid !62
@19 = private unnamed_addr constant [22 x i8] c"tuple struct ZstdLevel", align 1, !guid !62
@20 = private unnamed_addr constant [24 x i8] c"tuple struct BrotliLevel", align 1, !guid !62
@21 = private unnamed_addr constant [21 x i8] c"tuple struct UniqueId", align 1, !guid !62
@22 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1, !guid !62
@23 = private unnamed_addr constant [28 x i8] c"GlobalPoolAlreadyInitialized", align 1, !guid !62
@24 = private unnamed_addr constant [26 x i8] c"CurrentThreadAlreadyInPool", align 1, !guid !62
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtB6_5Debug3fmtCs2mZqlW55729_12polars_utils }>, align 8, !guid !62
@26 = private unnamed_addr constant [7 x i8] c"IOError", align 1, !guid !62
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs2mZqlW55729_12polars_utils }>, align 8, !guid !62
@28 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1, !guid !62
@29 = private unnamed_addr constant [4 x i8] c"kind", align 1, !guid !62
@30 = private unnamed_addr constant [43 x i8] c"\18valid compression range \C0\03..=\C0\0A exceeded.\00", align 1, !guid !62
@31 = private unnamed_addr constant [39 x i8] c"crates/polars-utils/src/compression.rs\00", align 1, !guid !62
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"&\00\00\00\00\00\00\00\10\00\00\00\0D\00\00\00" }>, align 8, !guid !62

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs4BcJZGCY6Ba_10rayon_core11thread_poolNtB3_10ThreadPool5buildNtNtB5_8registry12DefaultSpawnECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 !dbg !187 !guid !192 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !194
  call void @_RINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %1), !dbg !194
  %i.b = load i64, ptr %i.a, align 8, !dbg !195, !range !193, !noundef !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !196
  %i.d = load ptr, ptr %i.c, align 8, !dbg !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !198
  store ptr %i.d, ptr %i.e, align 8, !dbg !198
  store i64 %i.b, ptr %0, align 8, !dbg !198
  ret void, !dbg !199
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB6_17ThreadPoolBuilder11thread_nameNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0EB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !200 !guid !237 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !dbg !240, !noalias !238
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18, !dbg !241, !noalias !238 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !242
  br i1 %i.b, label %bb.b, label %bb.e, !dbg !243, !prof !80

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #19
          to label %.noexc unwind label %bb.c, !dbg !244, !noalias !238

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !244

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0EBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #20
          to label %.body unwind label %bb.d, !dbg !245

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !246
  unreachable, !dbg !246

.body:                                            ; preds = %bb.c, %.body3
  %.pn = phi { ptr, i32 } [ %i.n, %.body3 ], [ %i.c, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core17ThreadPoolBuilderECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(96) %1) #20
          to label %bb.m unwind label %bb.l, !dbg !247

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !249 ; 3 uses
  %.val = load ptr, ptr %i.e, align 8, !dbg !249, !noundef !65 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !249 ; 3 uses
  %.val2 = load ptr, ptr %i.f, align 8, !dbg !249 ; 6 uses
  %i.g = icmp eq ptr %.val, null, !dbg !250
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB17_6string6StringEL_EEECs2mZqlW55729_12polars_utils.exit, label %bb.f, !dbg !250

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.h = load ptr, ptr %.val2, align 8, !dbg !251, !invariant.load !65 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null, !dbg !251
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !251

bb.g:                                             ; preds = %bb.f
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.h unwind label %bb.j, !dbg !251

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !252
  %i.j = load i64, ptr %i.i, align 8, !dbg !252, !range !91, !invariant.load !65 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !253
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB17_6string6StringEL_EEECs2mZqlW55729_12polars_utils.exit, label %bb.i, !dbg !253

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !252
  %i.m = load i64, ptr %i.l, align 8, !dbg !254, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #18, !dbg !255
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB17_6string6StringEL_EEECs2mZqlW55729_12polars_utils.exit, !dbg !256

bb.j:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 8, !dbg !257
  %i.p = load i64, ptr %i.o, align 8, !dbg !257, !range !91, !invariant.load !65 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0, !dbg !258
  br i1 %i.q, label %.body3, label %bb.k, !dbg !258

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !257
  %i.s = load i64, ptr %i.r, align 8, !dbg !259, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #18, !dbg !260
  br label %.body3, !dbg !261

.body3:                                           ; preds = %bb.j, %bb.k
  store ptr %i.a, ptr %i.e, align 8, !dbg !249
  store ptr @0, ptr %i.f, align 8, !dbg !249
  br label %.body, !dbg !249

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB17_6string6StringEL_EEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.i, %bb.h, %bb.e
  store ptr %i.a, ptr %i.e, align 8, !dbg !249
  store ptr @0, ptr %i.f, align 8, !dbg !249
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !dbg !262
  ret void, !dbg !263

bb.l:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !264
  unreachable, !dbg !264

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %.pn, !dbg !264
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsh8eZTKRCwoO_3std2fsNtB6_4File4openRNtNtB8_4path4PathECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !265 !guid !270 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !271
  store i32 0, ptr %i.a, align 4, !dbg !274
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !274
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !274
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !274 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false), !dbg !274
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !275
  call void @_RNvMsl_NtCsh8eZTKRCwoO_3std2fsNtB5_11OpenOptions5__open(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !277
  ret void, !dbg !278
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsh8eZTKRCwoO_3std2fsNtB6_4File6createRNtNtB8_4path4PathECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !279 !guid !288 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !289
  store i32 0, ptr %i.a, align 4, !dbg !296
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !296
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !296
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !296
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9, !dbg !296
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11, !dbg !296
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false), !dbg !296
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1, !dbg !297
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !298
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1, !dbg !299
  call void @_RNvMsl_NtCsh8eZTKRCwoO_3std2fsNtB5_11OpenOptions5__open(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsl_NtCsh8eZTKRCwoO_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path4PathECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14 !guid !303 {
bb.a:
  tail call void @_RNvMsl_NtCsh8eZTKRCwoO_3std2fsNtB5_11OpenOptions5__open(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15 !guid !325 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !326
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1V_4SyncEL_EECs2mZqlW55729_12polars_utils.exit, label %bb.b, !dbg !326

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1V_4SyncEL_EECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void, !dbg !326

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !327, !invariant.load !65 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !327
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !327

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f, !dbg !327

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !328
  %i.d = load i64, ptr %i.c, align 8, !dbg !328, !range !91, !invariant.load !65 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !329
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1V_4SyncEL_EECs2mZqlW55729_12polars_utils.exit, label %bb.e, !dbg !329

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !328
  %i.g = load i64, ptr %i.f, align 8, !dbg !330, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #18, !dbg !331
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1V_4SyncEL_EECs2mZqlW55729_12polars_utils.exit, !dbg !332

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !333
  %i.j = load i64, ptr %i.i, align 8, !dbg !333, !range !91, !invariant.load !65 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !334
  br i1 %i.k, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit4.i, label %bb.g, !dbg !334

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !333
  %i.m = load i64, ptr %i.l, align 8, !dbg !335, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #18, !dbg !336
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit4.i, !dbg !337

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h, !dbg !327
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB17_6string6StringEL_EEECs2mZqlW55729_12polars_utils(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1 !guid !357 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !358
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBL_6string6StringEL_EECs2mZqlW55729_12polars_utils.exit, label %bb.b, !dbg !358

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBL_6string6StringEL_EECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void, !dbg !358

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !359, !invariant.load !65 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !359
  br i1 %.not.i, label %bb.d, label %bb.c, !dbg !359

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f, !dbg !359

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core17ThreadPoolBuilderECs2mZqlW55729_12polars_utils:bb.a
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !556, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #18, !dbg !557
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit, !dbg !558

bb.r:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val14, i64 8, !dbg !559
  %i.at = load i64, ptr %i.as, align 8, !dbg !559, !range !91, !invariant.load !65 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0, !dbg !560
  br i1 %i.au, label %.body21, label %bb.s, !dbg !560

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.val14, i64 16, !dbg !559
  %i.aw = load i64, ptr %i.av, align 8, !dbg !561, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #18, !dbg !562
  br label %.body21, !dbg !563

.body21:                                          ; preds = %bb.s, %bb.r, %.body18
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body18 ], [ %i.ar, %bb.r ], [ %i.ar, %bb.s ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !527
  %.val11 = load ptr, ptr %i.ax, align 8, !dbg !527, !noundef !65
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !527
  %.val12 = load ptr, ptr %i.ay, align 8, !dbg !527
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils(ptr %.val11, ptr %.val12) #20
          to label %common.resume unwind label %bb.z, !dbg !527

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.q, %bb.p, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB17_6string6StringEL_EEECs2mZqlW55729_12polars_utils.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !527
  %.val9 = load ptr, ptr %i.az, align 8, !dbg !527, !noundef !65 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !527
  %.val10 = load ptr, ptr %i.ba, align 8, !dbg !527 ; 6 uses
  %i.bb = icmp eq ptr %.val9, null, !dbg !564
  br i1 %i.bb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit25, label %bb.t, !dbg !564

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.bc = load ptr, ptr %.val10, align 8, !dbg !565, !invariant.load !65 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bc, null, !dbg !565
  br i1 %.not.i.i23, label %bb.v, label %bb.u, !dbg !565

bb.u:                                             ; preds = %bb.t
  invoke void %i.bc(ptr noundef nonnull %.val9)
          to label %bb.v unwind label %bb.x, !dbg !565

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %.val10, i64 8, !dbg !566
  %i.be = load i64, ptr %i.bd, align 8, !dbg !566, !range !91, !invariant.load !65 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0, !dbg !567
  br i1 %i.bf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit25, label %bb.w, !dbg !567

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %.val10, i64 16, !dbg !566
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !568, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #18, !dbg !569
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit25, !dbg !570

bb.x:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val10, i64 8, !dbg !571
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !571, !range !91, !invariant.load !65 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !572
  br i1 %i.bl, label %common.resume, label %bb.y, !dbg !572

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %.val10, i64 16, !dbg !571
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !573, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #18, !dbg !574
  br label %common.resume, !dbg !575

common.resume:                                    ; preds = %.body21, %bb.x, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.x ], [ %i.bi, %bb.y ], [ %.pn2, %.body21 ]
  resume { ptr, i32 } %common.resume.op, !dbg !527

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit25: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit, %bb.v, %bb.w
  ret void, !dbg !527

bb.z:                                             ; preds = %.body18, %.body21, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !527
  unreachable, !dbg !527
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25 !guid !579 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2mZqlW55729_12polars_utils.exit unwind label %bb.b, !dbg !580

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs2mZqlW55729_12polars_utils.exit.i unwind label %bb.c, !dbg !581

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !580
  unreachable, !dbg !580

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs2mZqlW55729_12polars_utils.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !580

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2mZqlW55729_12polars_utils(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !584 !guid !649 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64, !dbg !655
  %i.b = and i64 %i.a, 3, !dbg !656
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECs2mZqlW55729_12polars_utils.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECs2mZqlW55729_12polars_utils.exit
    i64 1, label %bb.c
  ], !dbg !657, !prof !654

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr), !dbg !658
  tail call void @llvm.assume(i1 %i.c), !dbg !659
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECs2mZqlW55729_12polars_utils.exit, !dbg !660

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1, !dbg !661 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !dbg !662 ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7, !dbg !662
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !662, !nonnull !65, !align !114, !noundef !65 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !dbg !663, !invariant.load !65 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null, !dbg !663
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d, !dbg !663

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g, !dbg !663

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8, !dbg !664
  %i.h = load i64, ptr %i.g, align 8, !dbg !664, !range !91, !invariant.load !65 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !665
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2mZqlW55729_12polars_utils.exit.i.i.i, label %bb.f, !dbg !665

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16, !dbg !664
  %i.k = load i64, ptr %i.j, align 8, !dbg !666, !range !92, !invariant.load !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #18, !dbg !667
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2mZqlW55729_12polars_utils.exit.i.i.i, !dbg !668

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8, !dbg !669
  %i.n = load i64, ptr %i.m, align 8, !dbg !669, !range !91, !invariant.load !65 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !670
  br i1 %i.o, label %bb.i, label %bb.h, !dbg !670

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16, !dbg !669
  %i.q = load i64, ptr %i.p, align 8, !dbg !671, !range !92, !invariant.load !65
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #18, !dbg !672
  br label %bb.i, !dbg !673

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #18, !dbg !674
  resume { ptr, i32 } %i.l, !dbg !662

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2mZqlW55729_12polars_utils.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #18, !dbg !675
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECs2mZqlW55729_12polars_utils.exit, !dbg !676

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2mZqlW55729_12polars_utils.exit.i.i.i
  ret void, !dbg !677
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsh8eZTKRCwoO_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !678 !guid !685 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !687
  store ptr %0, ptr %i.a, align 8, !dbg !688
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !688 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !688
  %i.c = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b, !dbg !689

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !686), !dbg !690
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !691, !alias.scope !686, !noundef !65 ; 2 uses
  %i.e = icmp eq ptr %.val.i, null, !dbg !692
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs2mZqlW55729_12polars_utils.exit, label %bb.c, !dbg !692

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2mZqlW55729_12polars_utils(ptr nonnull %.val.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs2mZqlW55729_12polars_utils.exit unwind label %bb.j, !dbg !692, !noalias !686

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !dbg !693, !noundef !65 ; 3 uses
  %.not = icmp eq ptr %i.f, null, !dbg !693       ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f, !dbg !694

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit, !dbg !695, !prof !80

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit, label %bb.g, !dbg !696

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2mZqlW55729_12polars_utils(ptr nonnull %i.f), !dbg !696
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit, !dbg !696

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], !dbg !697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !690
  ret ptr %.sroa.0.0, !dbg !698

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
          to label %bb.i unwind label %bb.b, !dbg !699

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !700
  unreachable, !dbg !700

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d, !dbg !700
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsh8eZTKRCwoO_3std4path8absoluteRNtB2_4PathECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !701 !guid !705 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !706
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !706

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtCsh8eZTKRCwoO_3std3sys4path4unix8absolute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !707
  br label %bb.d, !dbg !707

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !708
  store ptr @6, ptr %i.b, align 8, !dbg !708
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !708
  br label %bb.d, !dbg !709

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void, !dbg !710
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0B7_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !33 !guid !713 {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !715
  store ptr %1, ptr %i.a, align 8, !dbg !715
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !715
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !715
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !715
  store ptr %i.b, ptr %i.c, align 8, !dbg !715
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !715
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !715
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @7, ptr noundef nonnull %i.a), !dbg !716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !717
  ret void, !dbg !718
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_once6vtableBc_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !719 !guid !737 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !738
  store i64 %2, ptr %i.b, align 8, !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !741, !noalias !739
  store ptr %1, ptr %i.a, align 8, !dbg !741, !noalias !739
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !741
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !741, !noalias !739
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !741
  store ptr %i.b, ptr %i.c, align 8, !dbg !741, !noalias !739
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !741
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !dbg !741, !noalias !739
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @7, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.b, !dbg !742

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0EBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #20
          to label %common.resume.i unwind label %bb.f, !dbg !743, !noalias !740

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !744, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !745, !noalias !738
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_onceBa_.exit unwind label %bb.d, !dbg !746, !noalias !740

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume.i unwind label %bb.e, !dbg !747, !noalias !740

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !746, !noalias !740
  unreachable, !dbg !746

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !743

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !743, !noalias !740
  unreachable, !dbg !743

_RNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_onceBa_.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !748, !noalias !740
  ret void, !dbg !749
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB2_10RegexCache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !750 !guid !751 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !752
  call void @_RNvMs_NtCs2mZqlW55729_12polars_utils5cacheINtB4_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE13with_capacityB6_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, i64 noundef 32), !dbg !752
  %i.b = invoke { i64, i64 } @_RNvNtCs2mZqlW55729_12polars_utils11regex_cache14get_size_limit()
          to label %bb.c unwind label %bb.b, !dbg !753 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils5cache8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexEEBL_(ptr noalias noundef align 8 dereferenceable(96) %i.a) #20
          to label %bb.e unwind label %bb.d, !dbg !754

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 0, !dbg !753
  %i.e = extractvalue { i64, i64 } %i.b, 1, !dbg !753
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !755
  store i64 %i.d, ptr %0, align 8, !dbg !755
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !755
  store i64 %i.e, ptr %i.g, align 8, !dbg !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !754
  ret void, !dbg !756

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !757
  unreachable, !dbg !757

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !757
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB2_10RegexCache7compile(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !dbg !758 !guid !765 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !771
  call void @_RINvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB6_8LruCacheNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexE22try_get_or_insert_witheNtNtB1D_5error5ErrorNCNvMNtB8_11regex_cacheNtB35_10RegexCache7compile0EB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !dbg !772
  %i.c = load i64, ptr %i.a, align 8, !dbg !773, !range !766, !noundef !65 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807, !dbg !773
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !774
  %i.e = load ptr, ptr %i.d, align 8, !dbg !774
  br i1 %.not, label %bb.c, label %bb.b, !dbg !775

bb.b:                                             ; preds = %bb.a
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !776
  %.sroa.610.0.copyload = load i64, ptr %.sroa.610.0..sroa_idx, align 8, !dbg !776
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !777
  store i64 %.sroa.610.0.copyload, ptr %.sroa.313.0..sroa_idx, align 8, !dbg !777
  br label %bb.c, !dbg !778

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !779
  store ptr %i.e, ptr %i.f, align 8, !dbg !779
  store i64 %i.c, ptr %0, align 8, !dbg !779
  ret void, !dbg !778
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs2mZqlW55729_12polars_utils11compressionNtB5_11BrotliLevel7try_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 12)) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !780 !guid !811 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812), !dbg !818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !819, !noalias !812
  store i32 0, ptr %i.e, align 4, !dbg !820, !noalias !812
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !820 ; 2 uses
  store i32 11, ptr %i.g, align 4, !dbg !820, !noalias !812
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !820
  store i8 0, ptr %i.h, align 4, !dbg !820, !noalias !812
  %i.i = icmp ult i32 %1, 12, !dbg !821
  br i1 %i.i, label %bb.c, label %bb.b, !dbg !822

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !823, !noalias !812
end_hunk_1
begin_hunk_2_@_RNvMs5_NtCs2mZqlW55729_12polars_utils11compressionNtB5_9ZstdLevel7try_new:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1182
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1185
  store i32 %1, ptr %i.k, align 8, !dbg !1185
  store i64 18, ptr %0, align 8, !dbg !1185
  br label %bb.d, !dbg !1186

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1187
  ret void, !dbg !1188
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs2mZqlW55729_12polars_utils11regex_cache13compile_regex(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !1189 !guid !1191 {
bb.a:
  tail call void @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs2mZqlW55729_12polars_utils11regex_cache10RegexCacheEE4withNCINvMs4_B6_BF_15with_borrow_mutNCNvB1x_13compile_regex0INtNtBZ_6result6ResultNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtB3T_5error5ErrorEE0B3r_EB1z_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @13, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !1197
  ret void, !dbg !1198
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtCs2mZqlW55729_12polars_utils11regex_cache14get_size_limit() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1199 !guid !1257 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1278
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 23), !dbg !1278
  %i.e = load i64, ptr %i.c, align 8, !dbg !1279, !range !106, !noundef !65
  %i.f = trunc nuw i64 %i.e to i1, !dbg !1280
  br i1 %i.f, label %.thread19, label %bb.b, !dbg !1280

.thread19:                                        ; preds = %bb.a
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(32) %i.c), !dbg !1281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1282
  br label %bb.n, !dbg !1283

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1284
  %.sroa.09.0.copyload = load i64, ptr %i.g, align 8, !dbg !1284 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false), !dbg !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1282
  %.not.i = icmp eq i64 %.sroa.09.0.copyload, -9223372036854775808, !dbg !1285
  br i1 %.not.i, label %bb.n, label %bb.c, !dbg !1283

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1286, !noalias !1259
  store i64 %.sroa.09.0.copyload, ptr %i.b, align 8, !dbg !1286, !noalias !1260
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !dbg !1286, !noalias !1260
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1287
  %.val.i = load i64, ptr %i.h, align 8, !dbg !1287, !noalias !1259, !noundef !65 ; 2 uses
  %i.i = icmp sgt i64 %.val.i, -1, !dbg !1288
  call void @llvm.assume(i1 %i.i), !dbg !1289
  %.not1.i = icmp eq i64 %.val.i, 0, !dbg !1290
  br i1 %.not1.i, label %bb.d, label %bb.g, !dbg !1287

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i unwind label %bb.e, !dbg !1291, !noalias !1259

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.f, !dbg !1292, !noalias !1259

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !1291, !noalias !1259
  unreachable, !dbg !1291

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.q ], [ %i.j, %bb.e ], [ %i.ar, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !1293

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i: ; preds = %bb.d
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !1294, !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1295, !noalias !1259
  br label %bb.n, !dbg !1296

bb.g:                                             ; preds = %bb.c
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1297 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !dbg !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1295, !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !1299
  store i64 %.sroa.09.0.copyload, ptr %i.d, align 8, !dbg !1297
  %i.l = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !1300, !nonnull !65, !noundef !65 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1301
  %i.n = load i64, ptr %i.m, align 8, !dbg !1301, !noundef !65 ; 2 uses
  switch i64 %i.n, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.h
  ], !dbg !1302

bb.h:                                             ; preds = %bb.g
  %i.o = load i8, ptr %i.l, align 1, !dbg !1303, !alias.scope !1276, !noundef !65 ; 2 uses
  switch i8 %i.o, label %bb.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ], !dbg !1303

thread-pre-split.i:                               ; preds = %bb.g
  %.pr.i = load i8, ptr %i.l, align 1, !dbg !1303, !alias.scope !1276
  br label %bb.i, !dbg !1303

bb.i:                                             ; preds = %thread-pre-split.i, %bb.h
  %i.p = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.o, %bb.h ], !dbg !1303
  %cond.i = icmp eq i8 %i.p, 43, !dbg !1303       ; 2 uses
  %i.q = sext i1 %cond.i to i64, !dbg !1303
  %.sroa.15.0.i = add nsw i64 %i.n, %i.q, !dbg !1303 ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !1303
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.0.idx.i, !dbg !1303 ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.r, label %.preheader.i, label %.preheader56.i.preheader, !dbg !1304

.preheader.i:                                     ; preds = %bb.i
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !1305
  br i1 %.not5366.i, label %.loopexit28, label %.lr.ph.i, !dbg !1305

.preheader56.i:                                   ; preds = %bb.l
  %.not52.i = icmp eq i64 %i.t, 0, !dbg !1306
  br i1 %.not52.i, label %.loopexit28, label %.preheader56.i.preheader, !dbg !1306

.preheader56.i.preheader:                         ; preds = %bb.i, %.preheader56.i
  %.sroa.0.1.i58 = phi ptr [ %i.s, %.preheader56.i ], [ %.sroa.0.0.i, %bb.i ] ; 2 uses
  %.sroa.15.1.i57 = phi i64 [ %i.t, %.preheader56.i ], [ %.sroa.15.0.i, %bb.i ]
  %.sroa.042.0.i56 = phi i64 [ %i.ae, %.preheader56.i ], [ 0, %bb.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i58, i64 1, !dbg !1307
  %i.t = add nsw i64 %.sroa.15.1.i57, -1, !dbg !1307 ; 2 uses
  %i.u = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i56, i64 10), !dbg !1308 ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 0, !dbg !1308 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.u, 1, !dbg !1308
  %i.x = load i8, ptr %.sroa.0.1.i58, align 1, !dbg !1309, !alias.scope !1276, !noundef !65 ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.j, !dbg !1310, !prof !80

bb.j:                                             ; preds = %.preheader56.i.preheader
  %i.y = zext i8 %i.x to i32, !dbg !1311
  %i.z = add nsw i32 %i.y, -48, !dbg !1312        ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10, !dbg !1313
  br i1 %i.aa, label %bb.l, label %.loopexit, !dbg !1314

bb.k:                                             ; preds = %.preheader56.i.preheader
  %i.ab = add i8 %i.x, -48, !dbg !1315
  %i.ac = icmp ult i8 %i.ab, 10, !dbg !1315
  %spec.select = select i1 %i.ac, i8 2, i8 1, !dbg !1314
  br label %.loopexit, !dbg !1314

bb.l:                                             ; preds = %bb.j
  %i.ad = zext nneg i32 %i.z to i64, !dbg !1316
  %i.ae = add i64 %i.v, %i.ad, !dbg !1317         ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.v, !dbg !1317
  br i1 %i.af, label %.loopexit, label %.preheader56.i, !dbg !1318, !prof !80

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.m
  %.sroa.0.269.i = phi ptr [ %i.am, %bb.m ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.al, %bb.m ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ao, %bb.m ], [ 0, %.preheader.i ]
  %i.ag = load i8, ptr %.sroa.0.269.i, align 1, !dbg !1319, !alias.scope !1276, !noundef !65
  %i.ah = zext i8 %i.ag to i32, !dbg !1320
  %i.ai = add nsw i32 %i.ah, -48, !dbg !1321      ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 10, !dbg !1322
  br i1 %i.aj, label %bb.m, label %.loopexit, !dbg !1323

bb.m:                                             ; preds = %.lr.ph.i
  %i.ak = mul i64 %.sroa.042.267.i, 10, !dbg !1324
  %i.al = add nsw i64 %.sroa.15.268.i, -1, !dbg !1325 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1, !dbg !1325
  %i.an = zext nneg i32 %i.ai to i64, !dbg !1326
  %i.ao = add i64 %i.ak, %i.an, !dbg !1327        ; 2 uses
  %.not53.i = icmp eq i64 %i.al, 0, !dbg !1305
  br i1 %.not53.i, label %.loopexit28, label %.lr.ph.i, !dbg !1305

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit.i, %.thread19, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !1299
  br label %bb.o, !dbg !1328

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit, %bb.n
  %.sroa.3.0 = phi i64 [ %.sroa.122.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit ], [ undef, %bb.n ], !dbg !1293
  %.sroa.0.0 = phi i64 [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit ], [ 0, %bb.n ], !dbg !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1329
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !1328
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.3.0, 1, !dbg !1328
  ret { i64, i64 } %i.aq, !dbg !1328

bb.p:                                             ; preds = %.loopexit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.s, !dbg !1329

.loopexit:                                        ; preds = %bb.j, %bb.l, %.lr.ph.i, %bb.k, %bb.h, %bb.h, %bb.g
  %.sroa.5.0.ph = phi i8 [ 1, %bb.h ], [ %spec.select, %bb.k ], [ 1, %bb.h ], [ 0, %bb.g ], [ 1, %.lr.ph.i ], [ 1, %bb.j ], [ 2, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1330, !noalias !1277
  store i8 %.sroa.5.0.ph, ptr %i.a, align 1, !dbg !1330, !noalias !1277
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
          to label %.noexc unwind label %bb.p, !dbg !1331, !noalias !1277

.noexc:                                           ; preds = %.loopexit
  unreachable

.loopexit28:                                      ; preds = %.preheader56.i, %bb.m, %.preheader.i
  %.sroa.122.0 = phi i64 [ %i.ao, %bb.m ], [ 0, %.preheader.i ], [ %i.ae, %.preheader56.i ], !dbg !1293
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit unwind label %bb.q, !dbg !1332

bb.q:                                             ; preds = %.loopexit28
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.r, !dbg !1333

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !1332
  unreachable, !dbg !1332

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2mZqlW55729_12polars_utils.exit: ; preds = %.loopexit28
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !1334
  br label %bb.o, !dbg !1328

bb.s:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #21, !dbg !1335
  unreachable, !dbg !1335
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCs2mZqlW55729_12polars_utils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !54 !guid !1337 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1338, !nonnull !65, !noundef !65
  %i.b = tail call noundef ptr @_RNvYNtNtNtNtCsh8eZTKRCwoO_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !1339 ; 3 uses
  %.not = icmp ne ptr %i.b, null, !dbg !1338      ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d, !dbg !1340

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1341 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !dbg !1341, !noundef !65 ; 2 uses
  %i.d = icmp eq ptr %.val, null, !dbg !1342
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit, label %bb.c, !dbg !1342

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2mZqlW55729_12polars_utils(ptr nonnull %.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit unwind label %bb.e, !dbg !1342

bb.d:                                             ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit
  ret i1 %.not, !dbg !1343

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8, !dbg !1341
  resume { ptr, i32 } %i.e, !dbg !1344

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8, !dbg !1341
  br label %bb.d, !dbg !1345
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils11compressions1_1__NtB7_9GzipLevelNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_9___VisitorNtB1b_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1346 !guid !1347 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 22), !dbg !1348
  ret i1 %i.a, !dbg !1349
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils11compressions3_1__NtB7_9ZstdLevelNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_9___VisitorNtB1b_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1350 !guid !1351 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 22), !dbg !1352
  ret i1 %i.a, !dbg !1353
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils11compressions_1__NtB7_11BrotliLevelNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_9___VisitorNtB1d_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1354 !guid !1355 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 24), !dbg !1356
  ret i1 %i.a, !dbg !1357
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils9unique_ids_1__NtB7_8UniqueIdNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_9___VisitorNtB16_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1358 !guid !1363 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 21), !dbg !1364
  ret i1 %i.a, !dbg !1365
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCs4BcJZGCY6Ba_10rayon_core9ErrorKindNtB6_5Debug3fmtCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1366 !guid !1373 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1378, !nonnull !65, !align !114, !noundef !65 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374), !dbg !1379
  %i.c = load i64, ptr %i.b, align 8, !dbg !1380, !range !1375, !alias.scope !1374, !noundef !65
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !1380

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 28), !dbg !1380, !noalias !1374
  br label %_RNvXsc_Cs4BcJZGCY6Ba_10rayon_coreNtB5_9ErrorKindNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.exit, !dbg !1380

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 26), !dbg !1380, !noalias !1374
  br label %_RNvXsc_Cs4BcJZGCY6Ba_10rayon_coreNtB5_9ErrorKindNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.exit, !dbg !1380

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1381, !noalias !1377
  store ptr %i.f, ptr %i.a, align 8, !dbg !1381, !noalias !1377
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25), !dbg !1382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1383, !noalias !1377
  br label %_RNvXsc_Cs4BcJZGCY6Ba_10rayon_coreNtB5_9ErrorKindNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.exit, !dbg !1383

_RNvXsc_Cs4BcJZGCY6Ba_10rayon_coreNtB5_9ErrorKindNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i, !dbg !1384
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtB6_5Debug3fmtCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1385 !guid !1386 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1387, !nonnull !65, !align !114, !noundef !65
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCsh8eZTKRCwoO_3std2io5errorNtB2_5ErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !1388
  ret i1 %i.b, !dbg !1389
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCsjaWnZa6CAJj_4uuid3fmt10HyphenatedNtB6_7Display3fmtCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1390 !guid !1394 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1397, !nonnull !65, !noundef !65
  %i.b = tail call noundef zeroext i1 @_RNvXsW_NtCsjaWnZa6CAJj_4uuid3fmtNtB5_10HyphenatedNtNtCscgRAwXFJnXP_4core3fmt8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !1398
  ret i1 %i.b, !dbg !1399
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNvYmNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRmB1p_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #2 !dbg !1400 !guid !1407 {
bb.a:
  %.val = load i32, ptr %1, align 4, !dbg !1410, !noundef !65
  %.val1 = load i32, ptr %2, align 4, !dbg !1410, !noundef !65
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val, i32 %.val1), !dbg !1411
  ret i8 %i.a, !dbg !1412
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, -1) i32 @_RNvXs_Cs61SnqI2q75L_7memmap2RNtNtCsh8eZTKRCwoO_3std2fs4FileNtB4_13MmapAsRawDesc11as_raw_descCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 !dbg !1413 !guid !1417 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1420, !nonnull !65, !align !1418, !noundef !65
  %.val = load i32, ptr %i.a, align 4, !dbg !1421, !range !1419, !noundef !65
  ret i32 %.val, !dbg !1422
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs2mZqlW55729_12polars_utils9unique_idNtB4_8UniqueIdNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !1423 !guid !1428 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1438
  store ptr %0, ptr %i.b, align 8, !dbg !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1440
  store ptr %i.b, ptr %i.a, align 8, !dbg !1440
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1440
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCsjaWnZa6CAJj_4uuid3fmt10HyphenatedNtB6_7Display3fmtCs2mZqlW55729_12polars_utils, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !1440
  %i.c = load ptr, ptr %1, align 8, !dbg !1441, !nonnull !65, !noundef !65
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1441
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1441, !nonnull !65, !align !114, !noundef !65
  %i.f = call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @22, ptr noundef nonnull %i.a), !dbg !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1443
  ret i1 %i.f, !dbg !1444
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB12_17CardinalitySketch7combine0EINtNtB6_8function5FnMutTjEE8call_mutB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1445 !guid !1456 {
bb.a:
  %i.a = icmp ult i64 %1, 256, !dbg !1462
  br i1 %i.a, label %_RNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB6_17CardinalitySketch7combine0B8_.exit, label %bb.b, !dbg !1462

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef 256, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !1462
  unreachable, !dbg !1462

_RNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB6_17CardinalitySketch7combine0B8_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1463
  %.val2 = load ptr, ptr %i.b, align 8, !dbg !1463, !nonnull !65, !noundef !65
  %.val = load ptr, ptr %0, align 8, !dbg !1463, !nonnull !65, !noundef !65
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %1, !dbg !1462
  %i.d = load i8, ptr %i.c, align 1, !dbg !1462, !noundef !65
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 %1, !dbg !1464
  %i.f = load i8, ptr %i.e, align 1, !dbg !1464, !noundef !65
end_hunk_2
begin_hunk_3_@llvm.umax.i8
!490 = distinct !DILocation(line: 255, column: 43, scope: !18, inlinedAt: !489)
!491 = distinct !DILocation(line: 255, column: 68, scope: !18, inlinedAt: !489)
!492 = distinct !DILocation(line: 125, column: 30, scope: !23, inlinedAt: !491)
!493 = distinct !DILocation(line: 1921, column: 24, scope: !21, inlinedAt: !488)
!494 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !493)
!495 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !494)
!496 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !495)
!497 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !487)
!498 = distinct !DILocation(line: 1919, column: 26, scope: !20, inlinedAt: !497)
!499 = distinct !DILocation(line: 255, column: 43, scope: !18, inlinedAt: !498)
!500 = distinct !DILocation(line: 255, column: 68, scope: !18, inlinedAt: !498)
!501 = distinct !DILocation(line: 125, column: 30, scope: !23, inlinedAt: !500)
!502 = distinct !DILocation(line: 1921, column: 24, scope: !21, inlinedAt: !497)
!503 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !502)
!504 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !503)
!505 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !504)
!506 = distinct !DILocation(line: 810, column: 1, scope: !436)
!507 = distinct !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !506)
!508 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !507)
!509 = distinct !DILocation(line: 1919, column: 26, scope: !20, inlinedAt: !508)
!510 = distinct !DILocation(line: 255, column: 43, scope: !18, inlinedAt: !509)
!511 = distinct !DILocation(line: 255, column: 68, scope: !18, inlinedAt: !509)
!512 = distinct !DILocation(line: 125, column: 30, scope: !23, inlinedAt: !511)
!513 = distinct !DILocation(line: 1921, column: 24, scope: !21, inlinedAt: !508)
!514 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !513)
!515 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !514)
!516 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !515)
!517 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !507)
!518 = distinct !DILocation(line: 1919, column: 26, scope: !20, inlinedAt: !517)
!519 = distinct !DILocation(line: 255, column: 43, scope: !18, inlinedAt: !518)
!520 = distinct !DILocation(line: 255, column: 68, scope: !18, inlinedAt: !518)
!521 = distinct !DILocation(line: 125, column: 30, scope: !23, inlinedAt: !520)
!522 = distinct !DILocation(line: 1921, column: 24, scope: !21, inlinedAt: !517)
!523 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !522)
!524 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !523)
!525 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !524)
!526 = !{i64 7417254778356425623}
!527 = !DILocation(line: 810, column: 1, scope: !436)
!528 = !DILocation(line: 810, column: 1, scope: !437, inlinedAt: !438)
!529 = !DILocation(line: 810, column: 1, scope: !439, inlinedAt: !440)
!530 = !DILocation(line: 457, column: 14, scope: !441, inlinedAt: !447)
!531 = !DILocation(line: 1920, column: 16, scope: !448, inlinedAt: !445)
!532 = !DILocation(line: 596, column: 14, scope: !449, inlinedAt: !452)
!533 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !456)
!534 = !DILocation(line: 1920, column: 13, scope: !448, inlinedAt: !445)
!535 = !DILocation(line: 457, column: 14, scope: !441, inlinedAt: !459)
!536 = !DILocation(line: 1920, column: 16, scope: !448, inlinedAt: !457)
!537 = !DILocation(line: 596, column: 14, scope: !449, inlinedAt: !461)
!538 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !465)
!539 = !DILocation(line: 1920, column: 13, scope: !448, inlinedAt: !457)
!540 = !DILocation(line: 810, column: 1, scope: !1, inlinedAt: !466)
!541 = !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !467)
!542 = !DILocation(line: 457, column: 14, scope: !3, inlinedAt: !470)
!543 = !DILocation(line: 1920, column: 16, scope: !7, inlinedAt: !468)
!544 = !DILocation(line: 596, column: 14, scope: !8, inlinedAt: !472)
!545 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !476)
!546 = !DILocation(line: 1920, column: 13, scope: !7, inlinedAt: !468)
!547 = !DILocation(line: 457, column: 14, scope: !3, inlinedAt: !479)
!548 = !DILocation(line: 1920, column: 16, scope: !7, inlinedAt: !477)
!549 = !DILocation(line: 596, column: 14, scope: !8, inlinedAt: !481)
!550 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !485)
!551 = !DILocation(line: 1920, column: 13, scope: !7, inlinedAt: !477)
!552 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !486)
!553 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !487)
!554 = !DILocation(line: 457, column: 14, scope: !17, inlinedAt: !490)
!555 = !DILocation(line: 1920, column: 16, scope: !21, inlinedAt: !488)
!556 = !DILocation(line: 596, column: 14, scope: !22, inlinedAt: !492)
!557 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !496)
!558 = !DILocation(line: 1920, column: 13, scope: !21, inlinedAt: !488)
!559 = !DILocation(line: 457, column: 14, scope: !17, inlinedAt: !499)
!560 = !DILocation(line: 1920, column: 16, scope: !21, inlinedAt: !497)
!561 = !DILocation(line: 596, column: 14, scope: !22, inlinedAt: !501)
!562 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !505)
!563 = !DILocation(line: 1920, column: 13, scope: !21, inlinedAt: !497)
!564 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !506)
!565 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !507)
!566 = !DILocation(line: 457, column: 14, scope: !17, inlinedAt: !510)
!567 = !DILocation(line: 1920, column: 16, scope: !21, inlinedAt: !508)
!568 = !DILocation(line: 596, column: 14, scope: !22, inlinedAt: !512)
!569 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !516)
!570 = !DILocation(line: 1920, column: 13, scope: !21, inlinedAt: !508)
!571 = !DILocation(line: 457, column: 14, scope: !17, inlinedAt: !519)
!572 = !DILocation(line: 1920, column: 16, scope: !21, inlinedAt: !517)
!573 = !DILocation(line: 596, column: 14, scope: !22, inlinedAt: !521)
!574 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !525)
!575 = !DILocation(line: 1920, column: 13, scope: !21, inlinedAt: !517)
!576 = distinct !DILocation(line: 810, column: 1, scope: !25)
!577 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !576)
!578 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !576)
!579 = !{i64 -7761994791258481144}
!580 = !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !576)
!581 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !577)
!582 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !578)
!583 = !DILocation(line: 810, column: 1, scope: !25)
!584 = distinct !DISubprogram(name: "drop_in_place<std::io::error::Error>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2mZqlW55729_12polars_utils", scope: !82, file: !81, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!585 = distinct !DISubprogram(name: "addr<()>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOu4addrCs2mZqlW55729_12polars_utils", scope: !109, file: !107, line: 144, type: !66, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!586 = distinct !DISubprogram(name: "decode_repr<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>, std::io::error::repr_bitpacked::{impl#3}::drop::{closure_env#0}>", linkageName: "_RINvNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked11decode_reprINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop0ECs2mZqlW55729_12polars_utils", scope: !652, file: !650, line: 244, type: !66, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!587 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs1_NtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !653, file: !650, line: 230, type: !83, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!588 = distinct !DISubprogram(name: "drop_in_place<std::io::error::repr_bitpacked::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECs2mZqlW55729_12polars_utils", scope: !82, file: !81, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!589 = distinct !DILocation(line: 810, column: 1, scope: !584)
!590 = distinct !DILocation(line: 810, column: 1, scope: !588, inlinedAt: !589)
!591 = distinct !DILocation(line: 234, column: 21, scope: !587, inlinedAt: !590)
!592 = distinct !DILocation(line: 248, column: 29, scope: !586, inlinedAt: !591)
!593 = distinct !DILexicalBlock(scope: !586, file: !650, line: 248, column: 5)
!594 = distinct !DISubprogram(name: "unwrap_or_else<std::io::error::ErrorKind, std::io::error::repr_bitpacked::decode_repr::{closure_env#0}<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>, std::io::error::repr_bitpacked::{impl#3}::drop::{closure_env#0}>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCsh8eZTKRCwoO_3std2io5error9ErrorKindE14unwrap_or_elseNCINvNtBK_14repr_bitpacked11decode_reprINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtBK_6CustomENCNvXs1_B1L_NtB1L_4ReprNtNtNtB5_3ops4drop4Drop4drop0E0ECs2mZqlW55729_12polars_utils", scope: !113, file: !111, line: 1061, type: !66, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!595 = distinct !DILexicalBlock(scope: !593, file: !650, line: 255, column: 13)
!596 = distinct !DILocation(line: 256, column: 50, scope: !595, inlinedAt: !591)
!597 = distinct !DISubprogram(name: "wrapping_offset<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh15wrapping_offsetCs2mZqlW55729_12polars_utils", scope: !109, file: !107, line: 465, type: !66, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!598 = distinct !DISubprogram(name: "wrapping_sub<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh12wrapping_subCs2mZqlW55729_12polars_utils", scope: !109, file: !107, line: 1224, type: !66, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!599 = distinct !DISubprogram(name: "wrapping_byte_sub<()>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOu17wrapping_byte_subCs2mZqlW55729_12polars_utils", scope: !109, file: !107, line: 1244, type: !66, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!600 = distinct !DILocation(line: 276, column: 39, scope: !593, inlinedAt: !591)
!601 = distinct !DILocation(line: 1245, column: 27, scope: !599, inlinedAt: !600)
!602 = distinct !DILocation(line: 1228, column: 14, scope: !598, inlinedAt: !601)
!603 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECs2mZqlW55729_12polars_utils", scope: !82, file: !81, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!604 = distinct !DISubprogram(name: "drop_in_place<std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std2io5error9ErrorDataINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtBJ_6CustomEEECs2mZqlW55729_12polars_utils", scope: !82, file: !81, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!605 = distinct !DILocation(line: 234, column: 72, scope: !587, inlinedAt: !590)
!606 = distinct !DILocation(line: 810, column: 1, scope: !604, inlinedAt: !605)
!607 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1B_4SyncEL_EECs2mZqlW55729_12polars_utils", scope: !82, file: !81, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!608 = distinct !DISubprogram(name: "drop_in_place<std::io::error::Custom>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomECs2mZqlW55729_12polars_utils", scope: !82, file: !81, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!609 = distinct !DILocation(line: 810, column: 1, scope: !603, inlinedAt: !606)
!610 = distinct !DILocation(line: 810, column: 1, scope: !608, inlinedAt: !609)
!611 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB14_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !85, file: !84, line: 455, type: !66, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!612 = distinct !DISubprogram(name: "for_value_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1q_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !89, file: !86, line: 253, type: !66, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!613 = distinct !DISubprogram(name: "drop<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !90, file: !78, line: 1913, type: !83, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!614 = distinct !DILexicalBlock(scope: !613, file: !78, line: 1916, column: 9)
!615 = distinct !DILocation(line: 810, column: 1, scope: !607, inlinedAt: !610)
!616 = distinct !DILocation(line: 1919, column: 26, scope: !614, inlinedAt: !615)
!617 = distinct !DILocation(line: 255, column: 43, scope: !612, inlinedAt: !616)
!618 = distinct !DILexicalBlock(scope: !614, file: !78, line: 1919, column: 13)
!619 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB15_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !85, file: !84, line: 594, type: !66, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!620 = distinct !DISubprogram(name: "of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1r_4SyncEL_ECs2mZqlW55729_12polars_utils", scope: !95, file: !93, line: 123, type: !66, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!621 = distinct !DILocation(line: 255, column: 68, scope: !612, inlinedAt: !616)
!622 = distinct !DILocation(line: 125, column: 30, scope: !620, inlinedAt: !621)
!623 = distinct !DILocation(line: 1921, column: 24, scope: !618, inlinedAt: !615)
!624 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !623)
!625 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !624)
!626 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !625)
!627 = distinct !DILocation(line: 810, column: 1, scope: !607, inlinedAt: !610)
!628 = distinct !DILocation(line: 1919, column: 26, scope: !614, inlinedAt: !627)
!629 = distinct !DILocation(line: 255, column: 43, scope: !612, inlinedAt: !628)
!630 = distinct !DILocation(line: 255, column: 68, scope: !612, inlinedAt: !628)
!631 = distinct !DILocation(line: 125, column: 30, scope: !620, inlinedAt: !630)
!632 = distinct !DILocation(line: 1921, column: 24, scope: !618, inlinedAt: !627)
!633 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !632)
!634 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !633)
!635 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !634)
!636 = distinct !DISubprogram(name: "drop<std::io::error::Custom, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils", scope: !90, file: !78, line: 1913, type: !83, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!637 = distinct !DILexicalBlock(scope: !636, file: !78, line: 1916, column: 9)
!638 = distinct !DILexicalBlock(scope: !637, file: !78, line: 1919, column: 13)
!639 = distinct !DILocation(line: 810, column: 1, scope: !603, inlinedAt: !606)
!640 = distinct !DILocation(line: 1921, column: 24, scope: !638, inlinedAt: !639)
!641 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !640)
!642 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !641)
!643 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !642)
!644 = distinct !DILocation(line: 810, column: 1, scope: !603, inlinedAt: !606)
!645 = distinct !DILocation(line: 1921, column: 24, scope: !638, inlinedAt: !644)
!646 = distinct !DILocation(line: 462, column: 23, scope: !13, inlinedAt: !645)
!647 = distinct !DILocation(line: 344, column: 9, scope: !12, inlinedAt: !646)
!648 = distinct !DILocation(line: 229, column: 22, scope: !11, inlinedAt: !647)
!649 = !{i64 -8336015469160550992}
!650 = !DIFile(filename: "library/std/src/io/error/repr_bitpacked.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "5eb8b63e91ae5a0b67b803836fec054a")
!651 = !DINamespace(name: "error", scope: !110)
!652 = !DINamespace(name: "repr_bitpacked", scope: !651)
!653 = !DINamespace(name: "{impl#3}", scope: !652)
!654 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!655 = !DILocation(line: 150, column: 18, scope: !585, inlinedAt: !592)
!656 = !DILocation(line: 249, column: 11, scope: !593, inlinedAt: !591)
!657 = !DILocation(line: 249, column: 5, scope: !593, inlinedAt: !591)
!658 = !DILocation(line: 1065, column: 15, scope: !594, inlinedAt: !596)
!659 = !DILocation(line: 1065, column: 9, scope: !594, inlinedAt: !596)
!660 = !DILocation(line: 267, column: 9, scope: !593, inlinedAt: !591)
!661 = !DILocation(line: 470, column: 18, scope: !597, inlinedAt: !602)
!662 = !DILocation(line: 810, column: 1, scope: !603, inlinedAt: !606)
!663 = !DILocation(line: 810, column: 1, scope: !607, inlinedAt: !610)
!664 = !DILocation(line: 457, column: 14, scope: !611, inlinedAt: !617)
!665 = !DILocation(line: 1920, column: 16, scope: !618, inlinedAt: !615)
!666 = !DILocation(line: 596, column: 14, scope: !619, inlinedAt: !622)
!667 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !626)
!668 = !DILocation(line: 1920, column: 13, scope: !618, inlinedAt: !615)
!669 = !DILocation(line: 457, column: 14, scope: !611, inlinedAt: !629)
!670 = !DILocation(line: 1920, column: 16, scope: !618, inlinedAt: !627)
!671 = !DILocation(line: 596, column: 14, scope: !619, inlinedAt: !631)
!672 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !635)
!673 = !DILocation(line: 1920, column: 13, scope: !618, inlinedAt: !627)
!674 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !643)
!675 = !DILocation(line: 128, column: 14, scope: !10, inlinedAt: !648)
!676 = !DILocation(line: 810, column: 1, scope: !604, inlinedAt: !605)
!677 = !DILocation(line: 810, column: 1, scope: !584)
!678 = distinct !DISubprogram(name: "default_write_fmt<std::sys::stdio::unix::Stderr>", linkageName: "_RINvNtCsh8eZTKRCwoO_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs2mZqlW55729_12polars_utils", scope: !110, file: !115, line: 615, type: !66, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!679 = distinct !DILexicalBlock(scope: !678, file: !115, line: 638, column: 5)
!680 = distinct !{!680, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs2mZqlW55729_12polars_utils"}
!681 = distinct !{!681, !680, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECs2mZqlW55729_12polars_utils: argument 0"}
!682 = distinct !DILocation(line: 654, column: 1, scope: !678)
!683 = distinct !DILocation(line: 810, column: 1, scope: !30, inlinedAt: !682)
!684 = distinct !DILocation(line: 654, column: 1, scope: !678)
!685 = !{i64 8009285750019420215}
!686 = !{!681}
!687 = !DILocation(line: 638, column: 9, scope: !678)
!688 = !DILocation(line: 638, column: 22, scope: !678)
!689 = !DILocation(line: 639, column: 11, scope: !679)
!690 = !DILocation(line: 654, column: 1, scope: !678)
!691 = !DILocation(line: 810, column: 1, scope: !30, inlinedAt: !682)
!692 = !DILocation(line: 810, column: 1, scope: !31, inlinedAt: !683)
!693 = !DILocation(line: 0, scope: !678)
!694 = !DILocation(line: 639, column: 5, scope: !679)
!695 = !DILocation(line: 643, column: 16, scope: !679)
!696 = !DILocation(line: 810, column: 1, scope: !31, inlinedAt: !684)
!697 = !DILocation(line: 0, scope: !679)
!698 = !DILocation(line: 654, column: 2, scope: !678)
!699 = !DILocation(line: 648, column: 17, scope: !679)
!700 = !DILocation(line: 615, column: 1, scope: !678)
!701 = distinct !DISubprogram(name: "absolute<&std::path::Path>", linkageName: "_RINvNtCsh8eZTKRCwoO_3std4path8absoluteRNtB2_4PathECs2mZqlW55729_12polars_utils", scope: !704, file: !703, line: 4114, type: !66, scopeLine: 4114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!702 = distinct !DILexicalBlock(scope: !701, file: !703, line: 4115, column: 5)
!703 = !DIFile(filename: "library/std/src/path.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "714ac41e7eb6605489fc0c70ab623583")
!704 = !DINamespace(name: "path", scope: !97)
!705 = !{i64 -4979533496282933047}
!706 = !DILocation(line: 4116, column: 8, scope: !702)
!707 = !DILocation(line: 4119, column: 9, scope: !702)
!708 = !DILocation(line: 4117, column: 9, scope: !702)
!709 = !DILocation(line: 4116, column: 5, scope: !702)
!710 = !DILocation(line: 4121, column: 2, scope: !701)
!711 = distinct !DILocation(line: 659, column: 19, scope: !37, inlinedAt: !714)
!712 = distinct !DILocation(line: 1278, column: 21, scope: !36, inlinedAt: !711)
!713 = !{i64 4559862927609380223}
!714 = !DILocation(line: 19, column: 31, scope: !126)
!715 = !DILocation(line: 19, column: 31, scope: !121)
!716 = !DILocation(line: 659, column: 34, scope: !35, inlinedAt: !712)
!717 = !DILocation(line: 19, column: 31, scope: !33)
!718 = !DILocation(line: 19, column: 65, scope: !33)
!719 = distinct !DISubprogram(name: "call_once<polars_utils::mmap::UNMAP_POOL::{closure#0}::{closure_env#1}, (usize)>", linkageName: "_RNSNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_once6vtableBc_", scope: !130, file: !127, line: 250, type: !66, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!720 = distinct !{!720, i1 true, !"_RNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_onceBa_"}
!721 = distinct !{!721, !720, !"_RNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_onceBa_: argument 1"}
!722 = distinct !{!722, !720, !"_RNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_onceBa_: argument 0"}
!723 = distinct !{!723, i1 true, !"_RNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0B7_"}
!724 = distinct !{!724, !723, !"_RNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0B7_: argument 1"}
!725 = distinct !{!725, !723, !"_RNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0B7_: argument 0"}
!726 = distinct !DISubprogram(name: "call_once<polars_utils::mmap::UNMAP_POOL::{closure#0}::{closure_env#1}, (usize)>", linkageName: "_RNvYNCNCNvNtCs2mZqlW55729_12polars_utils4mmap10UNMAP_POOL0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTjEE9call_onceBa_", scope: !130, file: !127, line: 250, type: !66, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!727 = distinct !DILocation(line: 250, column: 5, scope: !719)
!728 = distinct !DILocation(line: 250, column: 5, scope: !726, inlinedAt: !727)
!729 = distinct !DILocation(line: 19, column: 31, scope: !126, inlinedAt: !728)
!730 = distinct !DILocation(line: 659, column: 19, scope: !37, inlinedAt: !729)
!731 = distinct !DILocation(line: 1278, column: 21, scope: !36, inlinedAt: !730)
!732 = distinct !DILocation(line: 250, column: 5, scope: !726, inlinedAt: !727)
!733 = distinct !DILocation(line: 810, column: 1, scope: !32, inlinedAt: !732)
!734 = distinct !DILocation(line: 810, column: 1, scope: !25, inlinedAt: !733)
!735 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !734)
!736 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !734)
!737 = !{i64 4142433248211022130}
!738 = !{!722, !721}
!739 = !{!725, !724, !722, !721}
!740 = !{!722}
!741 = !DILocation(line: 19, column: 31, scope: !121, inlinedAt: !728)
!742 = !DILocation(line: 659, column: 34, scope: !35, inlinedAt: !731)
!743 = !DILocation(line: 250, column: 5, scope: !726, inlinedAt: !727)
!744 = !DILocation(line: 19, column: 31, scope: !33, inlinedAt: !728)
!745 = !DILocation(line: 19, column: 65, scope: !33, inlinedAt: !728)
!746 = !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !734)
!747 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !735)
!748 = !DILocation(line: 810, column: 1, scope: !26, inlinedAt: !736)
!749 = !DILocation(line: 250, column: 5, scope: !719)
!750 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB2_10RegexCache3new", scope: !133, file: !131, line: 29, type: !66, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!751 = !{i64 -1935718401639946034}
!752 = !DILocation(line: 31, column: 20, scope: !750)
!753 = !DILocation(line: 32, column: 25, scope: !750)
!754 = !DILocation(line: 33, column: 9, scope: !750)
!755 = !DILocation(line: 30, column: 9, scope: !750)
!756 = !DILocation(line: 34, column: 6, scope: !750)
!757 = !DILocation(line: 29, column: 5, scope: !750)
!758 = distinct !DISubprogram(name: "compile", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils11regex_cacheNtB2_10RegexCache7compile", scope: !133, file: !131, line: 36, type: !66, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!759 = distinct !DISubprogram(name: "branch<&mut regex::regex::string::Regex, regex::error::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultQNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtBR_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !70, file: !67, line: 2172, type: !66, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!760 = distinct !DILexicalBlock(scope: !758, file: !131, line: 37, column: 9)
!761 = distinct !DISubprogram(name: "from_residual<&regex::regex::string::Regex, regex::error::Error, regex::error::Error>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultRNtNtNtCshIrAnp6Nu95_5regex5regex6string5RegexNtNtBR_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1u_EE13from_residualCs2mZqlW55729_12polars_utils", scope: !768, file: !67, line: 2187, type: !66, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!762 = distinct !DILexicalBlock(scope: !761, file: !67, line: 2189, column: 13)
!763 = distinct !DILexicalBlock(scope: !760, file: !131, line: 58, column: 15)
!764 = distinct !DILexicalBlock(scope: !763, file: !131, line: 58, column: 15)
!765 = !{i64 -4492326632414303485}
!766 = !{i64 0, i64 -9223372036854775806}
!767 = !DILocation(line: 58, column: 14, scope: !760)
!768 = !DINamespace(name: "{impl#28}", scope: !69)
!769 = !DILexicalBlockFile(scope: !764, file: !131, discriminator: 2)
!770 = !DILocation(line: 58, column: 14, scope: !769)
!771 = !DILocation(line: 37, column: 17, scope: !758)
!772 = !DILocation(line: 37, column: 28, scope: !758)
!773 = !DILocation(line: 2173, column: 15, scope: !759, inlinedAt: !767)
!774 = !DILocation(line: 0, scope: !759, inlinedAt: !767)
!775 = !DILocation(line: 2173, column: 9, scope: !759, inlinedAt: !767)
!776 = !DILocation(line: 2175, column: 17, scope: !759, inlinedAt: !767)
!777 = !DILocation(line: 2189, column: 23, scope: !762, inlinedAt: !770)
!778 = !DILocation(line: 59, column: 6, scope: !758)
!779 = !DILocation(line: 58, scope: !760)
!780 = distinct !DISubprogram(name: "try_new", linkageName: "_RNvMs0_NtCs2mZqlW55729_12polars_utils11compressionNtB5_11BrotliLevel7try_new", scope: !810, file: !134, line: 45, type: !66, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!781 = distinct !{!781, i1 true, !"_RNvYNtNtCs2mZqlW55729_12polars_utils11compression11BrotliLevelINtB4_16CompressionLevelmE14is_valid_levelB6_"}
!782 = distinct !{!782, !781, !"_RNvYNtNtCs2mZqlW55729_12polars_utils11compression11BrotliLevelINtB4_16CompressionLevelmE14is_valid_levelB6_: argument 0"}
!783 = distinct !DISubprogram(name: "is_valid_level<polars_utils::compression::BrotliLevel, u32>", linkageName: "_RNvYNtNtCs2mZqlW55729_12polars_utils11compression11BrotliLevelINtB4_16CompressionLevelmE14is_valid_levelB6_", scope: !136, file: !134, line: 11, type: !66, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!784 = distinct !DILocation(line: 46, column: 9, scope: !780)
!785 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs5_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusivemE3newCs2mZqlW55729_12polars_utils", scope: !139, file: !137, line: 390, type: !66, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!786 = distinct !DILocation(line: 12, column: 33, scope: !783, inlinedAt: !784)
!787 = distinct !DISubprogram(name: "le", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2le", scope: !813, file: !140, line: 1919, type: !66, scopeLine: 1919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!788 = distinct !DISubprogram(name: "le<u32, u32>", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3cmp5implsRmNtB7_10PartialOrd2leCs2mZqlW55729_12polars_utils", scope: !143, file: !140, line: 2146, type: !66, scopeLine: 2146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!789 = distinct !DISubprogram(name: "contains<core::ops::range::RangeInclusive<u32>, u32, u32>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivemEINtB6_11RangeBoundsmE8containsmECs2mZqlW55729_12polars_utils", scope: !144, file: !137, line: 868, type: !83, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!790 = distinct !DILexicalBlock(scope: !789, file: !137, line: 878, column: 13)
!791 = distinct !DISubprogram(name: "contains<u32, u32>", linkageName: "_RINvMs8_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB6_14RangeInclusivemE8containsmECs2mZqlW55729_12polars_utils", scope: !139, file: !137, line: 522, type: !66, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!792 = distinct !DILexicalBlock(scope: !783, file: !134, line: 12, column: 9)
!793 = distinct !DILocation(line: 13, column: 30, scope: !792, inlinedAt: !784)
!794 = distinct !DILocation(line: 527, column: 9, scope: !791, inlinedAt: !793)
!795 = distinct !DILocation(line: 878, column: 30, scope: !790, inlinedAt: !794)
!796 = distinct !DILocation(line: 2147, column: 13, scope: !788, inlinedAt: !795)
!797 = distinct !DISubprogram(name: "start<u32>", linkageName: "_RNvMs5_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusivemE5startCs2mZqlW55729_12polars_utils", scope: !139, file: !137, line: 415, type: !66, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!798 = distinct !DILocation(line: 17, column: 35, scope: !792, inlinedAt: !784)
!799 = distinct !DISubprogram(name: "end<u32>", linkageName: "_RNvMs5_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusivemE3endCs2mZqlW55729_12polars_utils", scope: !139, file: !137, line: 440, type: !66, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!800 = distinct !DILocation(line: 18, column: 35, scope: !792, inlinedAt: !784)
!801 = distinct !DILexicalBlock(scope: !792, file: !122, line: 114, column: 33)
!802 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !124, file: !123, line: 649, type: !66, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!803 = distinct !DILocation(line: 16, column: 13, scope: !815, inlinedAt: !784)
!804 = distinct !DILocation(line: 659, column: 19, scope: !802, inlinedAt: !803)
!805 = distinct !DILocation(line: 1278, column: 21, scope: !36, inlinedAt: !804)
!806 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCs2mZqlW55729_12polars_utils", scope: !147, file: !145, line: 777, type: !66, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!807 = distinct !DILocation(line: 16, column: 13, scope: !816, inlinedAt: !784)
!808 = distinct !DISubprogram(name: "map<(), polars_error::PolarsError, polars_utils::compression::BrotliLevel, polars_utils::compression::{impl#2}::try_new::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3mapNtNtCs2mZqlW55729_12polars_utils11compression11BrotliLevelNCNvMs0_B1x_B1v_7try_new0EB1z_", scope: !148, file: !67, line: 831, type: !66, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!809 = distinct !DILexicalBlock(scope: !808, file: !67, line: 836, column: 13)
!810 = !DINamespace(name: "BrotliLevel", scope: !135)
!811 = !{i64 -3806711635405553641}
!812 = !{!782}
!813 = !DINamespace(name: "{impl#64}", scope: !142)
!814 = !DILexicalBlockFile(scope: !801, file: !134, discriminator: 0)
!815 = !DILexicalBlockFile(scope: !792, file: !134, discriminator: 6)
!816 = !DILexicalBlockFile(scope: !792, file: !134, discriminator: 10)
!817 = !DILocation(line: 46, column: 37, scope: !780)
!818 = !DILocation(line: 46, column: 9, scope: !780)
!819 = !DILocation(line: 12, column: 13, scope: !783, inlinedAt: !784)
!820 = !DILocation(line: 391, column: 9, scope: !785, inlinedAt: !786)
!821 = !DILocation(line: 1919, column: 50, scope: !787, inlinedAt: !796)
!822 = !DILocation(line: 13, column: 12, scope: !792, inlinedAt: !784)
!823 = !DILocation(line: 17, column: 17, scope: !792, inlinedAt: !784)
!824 = !DILocation(line: 416, column: 9, scope: !797, inlinedAt: !798)
!825 = !DILocation(line: 18, column: 17, scope: !792, inlinedAt: !784)
!826 = !DILocation(line: 441, column: 9, scope: !799, inlinedAt: !800)
!827 = !DILocation(line: 16, column: 13, scope: !814, inlinedAt: !784)
!828 = !DILocation(line: 659, column: 34, scope: !35, inlinedAt: !805)
!829 = !DILocation(line: 16, column: 13, scope: !792, inlinedAt: !784)
!830 = !DILocation(line: 778, column: 9, scope: !806, inlinedAt: !807)
!831 = !DILocation(line: 21, column: 5, scope: !783, inlinedAt: !784)
!832 = !DILocation(line: 0, scope: !792, inlinedAt: !784)
!833 = !DILocation(line: 21, column: 6, scope: !783, inlinedAt: !784)
!834 = !DILocation(line: 837, column: 17, scope: !808, inlinedAt: !817)
!835 = !DILocation(line: 839, column: 5, scope: !808, inlinedAt: !817)
!836 = !DILocation(line: 836, column: 22, scope: !809, inlinedAt: !817)
!837 = !DILocation(line: 839, column: 6, scope: !808, inlinedAt: !817)
!838 = !DILocation(line: 46, column: 56, scope: !780)
!839 = !DILocation(line: 47, column: 6, scope: !780)
!840 = distinct !DISubprogram(name: "get_num_threads<rayon_core::registry::DefaultSpawn>", linkageName: "_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs2mZqlW55729_12polars_utils", scope: !72, file: !71, line: 458, type: !66, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!841 = distinct !DILexicalBlock(scope: !840, file: !71, line: 462, column: 13)
!842 = distinct !DISubprogram(name: "ok<alloc::string::String, std::env::VarError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE2okCs2mZqlW55729_12polars_utils", scope: !148, file: !67, line: 708, type: !66, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!843 = distinct !DISubprogram(name: "and_then<alloc::string::String, usize, rayon_core::{impl#4}::get_num_threads::{closure_env#1}<rayon_core::registry::DefaultSpawn>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringE8and_thenjNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB1D_17ThreadPoolBuilder15get_num_threadss_0ECs2mZqlW55729_12polars_utils", scope: !113, file: !111, line: 1541, type: !66, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!844 = distinct !DILexicalBlock(scope: !843, file: !111, line: 1546, column: 13)
!845 = distinct !{!845, i1 true, !"_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs2mZqlW55729_12polars_utils"}
!846 = distinct !{!846, !845, !"_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs2mZqlW55729_12polars_utils: argument 0"}
!847 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs2mZqlW55729_12polars_utils", scope: !151, file: !149, line: 613, type: !66, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!848 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs2mZqlW55729_12polars_utils", scope: !151, file: !149, line: 608, type: !66, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!849 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCs2mZqlW55729_12polars_utils", scope: !152, file: !149, line: 295, type: !66, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!850 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCs2mZqlW55729_12polars_utils", scope: !155, file: !153, line: 1939, type: !66, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!851 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCs2mZqlW55729_12polars_utils", scope: !155, file: !153, line: 1824, type: !66, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!852 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String6as_str", scope: !158, file: !156, line: 1052, type: !66, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!853 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !159, file: !156, line: 2822, type: !66, scopeLine: 2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!854 = distinct !DISubprogram(name: "{closure#1}<rayon_core::registry::DefaultSpawn>", linkageName: "_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0Cs2mZqlW55729_12polars_utils", scope: !947, file: !71, line: 470, type: !66, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!855 = distinct !DILocation(line: 1546, column: 24, scope: !844, inlinedAt: !944)
!856 = distinct !DILocation(line: 470, column: 47, scope: !854, inlinedAt: !855)
!857 = distinct !DILocation(line: 2823, column: 14, scope: !853, inlinedAt: !856)
!858 = distinct !DILocation(line: 1055, column: 52, scope: !852, inlinedAt: !857)
!859 = distinct !DILocation(line: 1841, column: 76, scope: !851, inlinedAt: !858)
!860 = distinct !DILocation(line: 1942, column: 18, scope: !850, inlinedAt: !859)
!861 = distinct !DILocation(line: 296, column: 20, scope: !849, inlinedAt: !860)
!862 = distinct !DILocation(line: 609, column: 14, scope: !848, inlinedAt: !861)
!863 = distinct !DISubprogram(name: "from_str_radix", linkageName: "_RNvMsv_NtCscgRAwXFJnXP_4core3numj14from_str_radix", scope: !162, file: !160, line: 1624, type: !66, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!864 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvXsu_NtCscgRAwXFJnXP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str", scope: !163, file: !160, line: 1573, type: !66, scopeLine: 1573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!865 = distinct !DILocation(line: 470, column: 31, scope: !854, inlinedAt: !855)
!866 = distinct !DILocation(line: 1574, column: 17, scope: !864, inlinedAt: !865)
!867 = distinct !DILocation(line: 1625, column: 17, scope: !863, inlinedAt: !866)
!868 = distinct !{!868, i1 true, !"_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix"}
!869 = distinct !{!869, !868, !"_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix: argument 1"}
!870 = distinct !DILocation(line: 1738, column: 20, scope: !42, inlinedAt: !867)
!871 = distinct !DILocation(line: 1776, column: 50, scope: !44, inlinedAt: !867)
!872 = distinct !DILocation(line: 1215, column: 31, scope: !46, inlinedAt: !871)
!873 = distinct !DILocation(line: 1216, column: 16, scope: !48, inlinedAt: !871)
!874 = distinct !DILocation(line: 1777, column: 69, scope: !49, inlinedAt: !867)
!875 = distinct !DILocation(line: 420, column: 27, scope: !51, inlinedAt: !874)
!876 = distinct !DILocation(line: 1751, column: 69, scope: !43, inlinedAt: !867)
!877 = distinct !DILocation(line: 420, column: 27, scope: !51, inlinedAt: !876)
!878 = distinct !DILocation(line: 470, column: 54, scope: !854, inlinedAt: !855)
!879 = distinct !DILocation(line: 810, column: 1, scope: !25, inlinedAt: !878)
!880 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !879)
!881 = distinct !DILocation(line: 810, column: 1, scope: !24, inlinedAt: !879)
!882 = distinct !DISubprogram(name: "{closure#0}<rayon_core::registry::DefaultSpawn>", linkageName: "_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0Cs2mZqlW55729_12polars_utils", scope: !947, file: !71, line: 462, type: !83, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!883 = distinct !DILocation(line: 473, column: 35, scope: !841)
!884 = distinct !DISubprogram(name: "map<core::num::nonzero::NonZero<usize>, std::io::error::Error, usize, rayon_core::{impl#4}::get_num_threads::{closure#0}::{closure_env#0}<rayon_core::registry::DefaultSpawn>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE3mapjNCNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB27_17ThreadPoolBuilder15get_num_threads00ECs2mZqlW55729_12polars_utils", scope: !148, file: !67, line: 831, type: !66, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!885 = distinct !DILocation(line: 464, column: 22, scope: !882, inlinedAt: !883)
!886 = distinct !DISubprogram(name: "get<usize>", linkageName: "_RNvMse_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerojE3getCs2mZqlW55729_12polars_utils", scope: !953, file: !951, line: 481, type: !66, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!887 = distinct !DISubprogram(name: "{closure#0}<rayon_core::registry::DefaultSpawn>", linkageName: "_RNCNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB9_17ThreadPoolBuilder15get_num_threads00Cs2mZqlW55729_12polars_utils", scope: !954, file: !71, line: 464, type: !66, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!888 = distinct !DILexicalBlock(scope: !884, file: !67, line: 836, column: 13)
!889 = distinct !DILocation(line: 836, column: 25, scope: !888, inlinedAt: !885)
!890 = distinct !DILocation(line: 464, column: 32, scope: !887, inlinedAt: !889)
!891 = distinct !DISubprogram(name: "unwrap_or<usize, std::io::error::Error>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9unwrap_orCs2mZqlW55729_12polars_utils", scope: !148, file: !67, line: 1590, type: !66, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!892 = distinct !DILocation(line: 465, column: 22, scope: !882, inlinedAt: !883)
!893 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<usize, std::io::error::Error>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECs2mZqlW55729_12polars_utils", scope: !82, file: !81, line: 810, type: !83, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!894 = distinct !DILocation(line: 1599, column: 5, scope: !891, inlinedAt: !892)
!895 = distinct !DISubprogram(name: "and_then<alloc::string::String, usize, rayon_core::{impl#4}::get_num_threads::{closure_env#2}<rayon_core::registry::DefaultSpawn>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringE8and_thenjNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB1D_17ThreadPoolBuilder15get_num_threadss0_0ECs2mZqlW55729_12polars_utils", scope: !113, file: !111, line: 1541, type: !66, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !65)
!896 = distinct !DILexicalBlock(scope: !895, file: !111, line: 1546, column: 13)
!897 = distinct !{!897, i1 true, !"_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Cs2mZqlW55729_12polars_utils"}
end_hunk_3
