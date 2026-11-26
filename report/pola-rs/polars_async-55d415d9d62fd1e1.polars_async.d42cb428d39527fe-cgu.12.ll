Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_async-55d415d9d62fd1e1.polars_async.d42cb428d39527fe-cgu.12?download=true
inline.NumInlined: 67
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1/src/utils.rs\00", align 1, !guid !10
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"b\00\00\00\00\00\00\00\93\00\00\00\16\00\00\00" }>, align 8, !guid !10
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsidoPH4Qgqxm_12polars_async, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCsidoPH4Qgqxm_12polars_async, ptr @_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write10write_charCsidoPH4Qgqxm_12polars_async, ptr @_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCsidoPH4Qgqxm_12polars_async }>, align 8, !guid !10
@3 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1, !guid !10
@4 = private unnamed_addr constant [74 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/std/src/io/mod.rs\00", align 1, !guid !10
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"I\00\00\00\00\00\00\00\88\02\00\00\11\00\00\00" }>, align 8, !guid !10
@6 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1/src/block.rs\00", align 1, !guid !10
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"b\00\00\00\00\00\00\00\22\01\00\002\00\00\00" }>, align 8, !guid !10
@8 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1, !guid !10
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCscgRAwXFJnXP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8, !guid !10
@10 = private unnamed_addr constant [91 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/core/src/iter/traits/exact_size.rs\00", align 1, !guid !10
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"Z\00\00\00\00\00\00\00z\00\00\00\09\00\00\00" }>, align 8, !guid !10
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"b\00\00\00\00\00\00\00+\01\00\00\1E\00\00\00" }>, align 8, !guid !10
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"b\00\00\00\00\00\00\00+\01\00\00I\00\00\00" }>, align 8, !guid !10
@14 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1/src/word.rs\00", align 1, !guid !10
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"a\00\00\00\00\00\00\00%\00\00\00\1C\00\00\00" }>, align 8, !guid !10
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCsidoPH4Qgqxm_12polars_async }>, align 8, !guid !10
@17 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1, !guid !10
@18 = private unnamed_addr constant [2 x i8] c"()", align 1, !guid !10

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsidoPH4Qgqxm_12polars_async(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !58 !guid !129 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !154
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsidoPH4Qgqxm_12polars_async.exit, label %bb.b, !dbg !154

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsidoPH4Qgqxm_12polars_async.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, %bb.c, %bb.b, %bb.b, %bb.a
  ret void, !dbg !154

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.0.val to i64, !dbg !155
  %i.c = and i64 %i.b, 3, !dbg !156
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsidoPH4Qgqxm_12polars_async.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsidoPH4Qgqxm_12polars_async.exit
    i64 1, label %bb.d
  ], !dbg !157, !prof !134

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr), !dbg !158
  tail call void @llvm.assume(i1 %i.d), !dbg !159
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsidoPH4Qgqxm_12polars_async.exit, !dbg !160

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.0.val, i64 -1, !dbg !161 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !162 ; 5 uses
  %i.f = getelementptr i8, ptr %.0.val, i64 7, !dbg !162
  %.val1.i.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !162, !nonnull !14, !align !25, !noundef !14 ; 5 uses
  %i.g = load ptr, ptr %.val1.i.i.i.i.i, align 8, !dbg !163, !invariant.load !14 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null, !dbg !163
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !163

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.f unwind label %bb.h, !dbg !163

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !164
  %i.i = load i64, ptr %i.h, align 8, !dbg !164, !range !145, !invariant.load !14 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !165
  br i1 %i.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, label %bb.g, !dbg !165

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !164
  %i.l = load i64, ptr %i.k, align 8, !dbg !166, !range !146, !invariant.load !14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #15, !dbg !167
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsidoPH4Qgqxm_12polars_async.exit.i.i.i.i, !dbg !168

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8, !dbg !169
  %i.o = load i64, ptr %i.n, align 8, !dbg !169, !range !145, !invariant.load !14 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !170
  br i1 %i.p, label %bb.j, label %bb.i, !dbg !170

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16, !dbg !169
  %i.r = load i64, ptr %i.q, align 8, !dbg !171, !range !146, !invariant.load !14
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #15, !dbg !172
  br label %bb.j, !dbg !173

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #15, !dbg !174
  resume { ptr, i32 } %i.m, !dbg !162

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsidoPH4Qgqxm_12polars_async.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #15, !dbg !175
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsidoPH4Qgqxm_12polars_async.exit, !dbg !176
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsidoPH4Qgqxm_12polars_async(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !1 !guid !177 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178
  %.val = load ptr, ptr %i.a, align 8, !dbg !178, !noundef !14
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsidoPH4Qgqxm_12polars_async(ptr %.val), !dbg !178
  ret void, !dbg !178
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCsh8eZTKRCwoO_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !179 !guid !187 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !192
  store ptr %0, ptr %i.a, align 8, !dbg !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !193 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !193
  %i.c = invoke noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b, !dbg !194

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !195, !alias.scope !188, !noundef !14
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsidoPH4Qgqxm_12polars_async(ptr %.val.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsidoPH4Qgqxm_12polars_async.exit unwind label %bb.i, !dbg !195

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !dbg !196, !noundef !14 ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !197

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.e, null, !dbg !198
  br i1 %.not, label %bb.g, label %bb.f, !dbg !199, !prof !31

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsidoPH4Qgqxm_12polars_async(ptr %i.e), !dbg !200
  br label %bb.f, !dbg !200

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ %i.e, %bb.d ], !dbg !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !200
  ret ptr %.sroa.0.0, !dbg !202

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16
          to label %bb.h unwind label %bb.b, !dbg !203

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #17, !dbg !204
  unreachable, !dbg !204

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsidoPH4Qgqxm_12polars_async.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !204
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsidoPH4Qgqxm_12polars_async(i64 noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !205 !guid !209 {
_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1, !dbg !210
  ret { i64, i64 } %i.a, !dbg !211
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB27_8Executor6global000uEs_000uEB29_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 !dbg !212 !guid !219 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !222, !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !222
  call void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread9spawnhookNtB4_15ChildSpawnHooks3run(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !223, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !224, !noalias !220
  call void asm sideeffect "", "~{memory}"() #15, !dbg !225, !srcloc !44
  ret void, !dbg !226
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB23_8Executor29spawn_runner_without_identity0uEs_000uEB25_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 !dbg !227 !guid !234 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !237, !noalias !235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !237
  call void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread9spawnhookNtB4_15ChildSpawnHooks3run(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !238, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !239, !noalias !235
  call void asm sideeffect "", "~{memory}"() #15, !dbg !240, !srcloc !44
  ret void, !dbg !241
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1j_8Executor6global000uEB1l_(i64 noundef %0) unnamed_addr #2 !dbg !242 !guid !247 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor6global(), !dbg !252
  tail call void @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor6runner(ptr noundef nonnull align 128 %i.a, i64 noundef 1, i64 %0), !dbg !253
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !254, !srcloc !44
  ret void, !dbg !255
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1f_8Executor29spawn_runner_without_identity0uEB1h_() unnamed_addr #2 !dbg !256 !guid !261 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor6global(), !dbg !264
  tail call void @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor6runner(ptr noundef nonnull align 128 %i.a, i64 noundef 0, i64 undef), !dbg !265
  tail call void asm sideeffect "", "~{memory}"() #15, !dbg !266, !srcloc !44
  ret void, !dbg !267
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECsidoPH4Qgqxm_12polars_async(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !268 !guid !575 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 1                ; 6 uses
  %i.t = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !723
  call void @_RNvXst_NtCscgRAwXFJnXP_4core5arrayAhj20_NtNtB7_7default7Default7defaultCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.t), !dbg !724
  %.val = load ptr, ptr %1, align 8, !dbg !725, !alias.scope !576, !nonnull !14, !noundef !14 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !726 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587), !dbg !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !728, !noalias !588
  %i.v = load i32, ptr %i.u, align 4, !dbg !728, !alias.scope !587, !noalias !592, !noundef !14
  %i.w = zext i32 %i.v to i64, !dbg !729
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b, !dbg !730

bb.b:                                             ; preds = %bb.s, %bb.a
  %.sroa.0.026.i.i = phi i64 [ 0, %bb.a ], [ %i.cq, %bb.s ] ; 3 uses
  %.sroa.06.025.i.i = phi i64 [ %i.w, %bb.a ], [ %i.cf, %bb.s ] ; 2 uses
  %i.as = icmp ugt i64 %.sroa.06.025.i.i, 63, !dbg !731
  br i1 %i.as, label %bb.c, label %bb.e, !dbg !731

.loopexit.i.i:                                    ; preds = %bb.s, %bb.o
  %.sroa.06.1.i.i = phi i64 [ %.sroa.06.3.i.i, %bb.o ], [ %i.cf, %bb.s ], !dbg !732 ; 2 uses
  %i.at = icmp ugt i64 %.sroa.06.1.i.i, 4294967295, !dbg !733
  br i1 %i.at, label %.split.i.i.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !733

.split.i.i.i:                                     ; preds = %.loopexit.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16, !dbg !734, !noalias !605
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.au = load i64, ptr %i.y, align 4, !dbg !735, !alias.scope !606, !noalias !592
  %i.av = icmp ugt i64 %i.au, 1023, !dbg !736
  br i1 %i.av, label %bb.d, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !736, !prof !31

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.x) #18, !dbg !737, !noalias !614
  br label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !737

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i: ; preds = %bb.d, %bb.c
  call void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.x, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.u), !dbg !738, !noalias !605
  br label %bb.e, !dbg !739

bb.e:                                             ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, %bb.b
  %.sroa.06.2.i.i = phi i64 [ 0, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i ], [ %.sroa.06.025.i.i, %bb.b ], !dbg !732 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !740, !noalias !615
  %i.aw = sub nuw nsw i64 32, %.sroa.0.026.i.i, !dbg !741
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.026.i.i, !dbg !742
  store ptr %i.ax, ptr %i.aa, align 8, !dbg !743, !alias.scope !618, !noalias !615
  store i64 %i.aw, ptr %i.ab, align 8, !dbg !743, !alias.scope !618, !noalias !615
  store ptr %i.z, ptr %i.r, align 8, !dbg !743, !alias.scope !618, !noalias !615
  store i64 0, ptr %i.ac, align 8, !dbg !743, !alias.scope !618, !noalias !615
  store i64 4, ptr %i.ad, align 8, !dbg !743, !alias.scope !618, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !744, !noalias !615
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.06.2.i.i, !dbg !745
  store ptr %i.ay, ptr %i.q, align 8, !dbg !746, !noalias !615
  store ptr %i.x, ptr %i.ae, align 8, !dbg !746, !noalias !615
  store ptr %i.r, ptr %i.p, align 8, !dbg !747, !alias.scope !629, !noalias !615
  store ptr %i.q, ptr %i.af, align 8, !dbg !747, !alias.scope !629, !noalias !615
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !dbg !747, !alias.scope !629, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !748, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !748, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !749, !noalias !640
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p), !dbg !750, !noalias !645
  %i.az = load i64, ptr %i.k, align 8, !dbg !751, !noalias !640, !noundef !14
  %i.ba = load i64, ptr %i.ah, align 8, !dbg !752, !range !646, !noalias !640, !noundef !14
  %i.bb = load i64, ptr %i.ai, align 8, !dbg !752, !noalias !640 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !753, !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !754, !noalias !640
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCsidoPH4Qgqxm_12polars_async(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af), !dbg !755, !noalias !645
  %i.bc = load i64, ptr %i.j, align 8, !dbg !756, !noalias !640, !noundef !14
  %i.bd = load i64, ptr %i.aj, align 8, !dbg !757, !range !646, !noalias !640, !noundef !14 ; 2 uses
  %i.be = load i64, ptr %i.ak, align 8, !dbg !757, !noalias !640 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !758, !noalias !640
  %i.bf = trunc nuw i64 %i.ba to i1, !dbg !759
  %i.bg = trunc nuw i64 %i.bd to i1, !dbg !759    ; 2 uses
  br i1 %i.bf, label %bb.f, label %bb.g, !dbg !759

bb.f:                                             ; preds = %bb.e
  br i1 %i.bg, label %bb.h, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i, !dbg !759

bb.g:                                             ; preds = %bb.e
  %.13.i.i.i = select i1 %i.bg, i64 %i.be, i64 undef, !dbg !760
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i, !dbg !760

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.i14.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.bb), !dbg !761
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i, !dbg !762

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.05.0.i.i.i = phi i64 [ 1, %bb.h ], [ %i.bd, %bb.g ], [ 1, %bb.f ], !dbg !763 ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.0.0.i14.i.i.i, %bb.h ], [ %.13.i.i.i, %bb.g ], [ %i.bb, %bb.f ], !dbg !763 ; 4 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az), !dbg !764 ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !9, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "drop_in_place<std::io::default_write_fmt::Adapter<std::sys::stdio::unix::Stderr>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !19, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!2 = distinct !DISubprogram(name: "write_str<std::sys::stdio::unix::Stderr>", linkageName: "_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCsidoPH4Qgqxm_12polars_async", scope: !54, file: !26, line: 627, type: !19, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!3 = distinct !DILexicalBlock(scope: !2, file: !26, line: 630, column: 17)
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 2, !"RtLibUseGOT", i32 1}
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!9 = !DIFile(filename: "crates/polars-async/src/lib.rs/@/polars_async.d42cb428d39527fe-cgu.12", directory: "/opt-bench/work/pola-rs/polars")
!10 = !{i64 5037184922741786317}
!11 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e257ba3fa91f9f150d8872ddddab6def")
!12 = !DINamespace(name: "core", scope: null)
!13 = !DINamespace(name: "ptr", scope: !12)
!14 = !{}
!15 = !DISubroutineType(cc: DW_CC_nocall, types: !14)
!16 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7c03c8e0ae695174f7f10881dc49d2cb")
!17 = !DINamespace(name: "mut_ptr", scope: !13)
!18 = !DINamespace(name: "{impl#0}", scope: !17)
!19 = !DISubroutineType(types: !14)
!20 = !DINamespace(name: "std", scope: null)
!21 = !DINamespace(name: "io", scope: !20)
!22 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "fddbcef1524c4b01c55888c6c3823b51")
!23 = !DINamespace(name: "option", scope: !12)
!24 = !DINamespace(name: "Option", scope: !23)
!25 = !{i64 8}
!26 = !DIFile(filename: "library/std/src/io/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "96ced2cbd770bef8afaec8172d7eb105")
!27 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7ebc974a4b69a504d7e902d792c422dd")
!28 = !DIFile(filename: "library/core/src/macros/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "05d0820999e50315dc32c83aa7c28669")
!29 = !DINamespace(name: "result", scope: !12)
!30 = !DINamespace(name: "Result", scope: !29)
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "949bb7af491f1c6ef62f3972592a0143")
!33 = !DINamespace(name: "slice", scope: !12)
!34 = !DINamespace(name: "index", scope: !33)
!35 = !DIFile(filename: "library/std/src/sys/backtrace.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "0469076862be40bd9e65965440a24fae")
!36 = !DINamespace(name: "sys", scope: !20)
!37 = !DINamespace(name: "backtrace", scope: !36)
!38 = !DIFile(filename: "library/std/src/thread/lifecycle.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "990c34c6641562b1886c6a140e080712")
!39 = !DINamespace(name: "thread", scope: !20)
!40 = !DINamespace(name: "lifecycle", scope: !39)
!41 = !DINamespace(name: "spawn_unchecked", scope: !40)
!42 = !DINamespace(name: "{closure#1}", scope: !41)
!43 = !DINamespace(name: "{closure#0}", scope: !42)
!44 = !{i64 12741321134261255}
!45 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3bdbac5c7616d584a36b114744411911")
!46 = !DINamespace(name: "hint", scope: !12)
!47 = !DIFile(filename: "crates/polars-async/src/executor/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "98a3a352f5e655287251d4a3240fb6eb")
!48 = !DINamespace(name: "polars_async", scope: null)
!49 = !DINamespace(name: "executor", scope: !48)
!50 = !DINamespace(name: "{impl#8}", scope: !49)
!51 = !DINamespace(name: "num", scope: !12)
!52 = !DIFile(filename: "crates/polars-async/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "2a69ec381c6f2d0d369b9dc5a44ffd51")
!53 = !DINamespace(name: "default_write_fmt", scope: !21)
!54 = !DINamespace(name: "{impl#0}", scope: !53)
!55 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6f02df1239ccca7a65adaa40e169af60")
!56 = !DINamespace(name: "fmt", scope: !12)
!57 = !DINamespace(name: "Write", scope: !56)
!58 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<(), std::io::error::Error>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !15, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!59 = distinct !DISubprogram(name: "addr<()>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOu4addrCsidoPH4Qgqxm_12polars_async", scope: !18, file: !16, line: 144, type: !19, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!60 = distinct !DISubprogram(name: "decode_repr<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>, std::io::error::repr_bitpacked::{impl#3}::drop::{closure_env#0}>", linkageName: "_RINvNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked11decode_reprINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtB4_6CustomENCNvXs1_B2_NtB2_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop0ECsidoPH4Qgqxm_12polars_async", scope: !132, file: !130, line: 244, type: !19, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!61 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs1_NtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpackedNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !133, file: !130, line: 230, type: !15, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!62 = distinct !DISubprogram(name: "drop_in_place<std::io::error::repr_bitpacked::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked4ReprECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !15, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!63 = distinct !DISubprogram(name: "drop_in_place<std::io::error::Error>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !15, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!64 = distinct !DILocation(line: 810, column: 1, scope: !58)
!65 = distinct !DILocation(line: 810, column: 1, scope: !63, inlinedAt: !64)
!66 = distinct !DILocation(line: 810, column: 1, scope: !62, inlinedAt: !65)
!67 = distinct !DILocation(line: 234, column: 21, scope: !61, inlinedAt: !66)
!68 = distinct !DILocation(line: 248, column: 29, scope: !60, inlinedAt: !67)
!69 = distinct !DILexicalBlock(scope: !60, file: !130, line: 248, column: 5)
!70 = distinct !DISubprogram(name: "unwrap_or_else<std::io::error::ErrorKind, std::io::error::repr_bitpacked::decode_repr::{closure_env#0}<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>, std::io::error::repr_bitpacked::{impl#3}::drop::{closure_env#0}>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCsh8eZTKRCwoO_3std2io5error9ErrorKindE14unwrap_or_elseNCINvNtBK_14repr_bitpacked11decode_reprINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtBK_6CustomENCNvXs1_B1L_NtB1L_4ReprNtNtNtB5_3ops4drop4Drop4drop0E0ECsidoPH4Qgqxm_12polars_async", scope: !24, file: !22, line: 1061, type: !19, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!71 = distinct !DILexicalBlock(scope: !69, file: !130, line: 255, column: 13)
!72 = distinct !DILocation(line: 256, column: 50, scope: !71, inlinedAt: !67)
!73 = distinct !DISubprogram(name: "wrapping_offset<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh15wrapping_offsetCsidoPH4Qgqxm_12polars_async", scope: !18, file: !16, line: 465, type: !19, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!74 = distinct !DISubprogram(name: "wrapping_sub<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh12wrapping_subCsidoPH4Qgqxm_12polars_async", scope: !18, file: !16, line: 1224, type: !19, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!75 = distinct !DISubprogram(name: "wrapping_byte_sub<()>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOu17wrapping_byte_subCsidoPH4Qgqxm_12polars_async", scope: !18, file: !16, line: 1244, type: !19, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!76 = distinct !DILocation(line: 276, column: 39, scope: !69, inlinedAt: !67)
!77 = distinct !DILocation(line: 1245, column: 27, scope: !75, inlinedAt: !76)
!78 = distinct !DILocation(line: 1228, column: 14, scope: !74, inlinedAt: !77)
!79 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomEECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !15, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!80 = distinct !DISubprogram(name: "drop_in_place<std::io::error::ErrorData<alloc::boxed::Box<std::io::error::Custom, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std2io5error9ErrorDataINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtBJ_6CustomEEECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !15, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!81 = distinct !DILocation(line: 234, column: 72, scope: !61, inlinedAt: !66)
!82 = distinct !DILocation(line: 810, column: 1, scope: !80, inlinedAt: !81)
!83 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1B_4SyncEL_EECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !15, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!84 = distinct !DISubprogram(name: "drop_in_place<std::io::error::Custom>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomECsidoPH4Qgqxm_12polars_async", scope: !13, file: !11, line: 810, type: !15, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!85 = distinct !DILocation(line: 810, column: 1, scope: !79, inlinedAt: !82)
!86 = distinct !DILocation(line: 810, column: 1, scope: !84, inlinedAt: !85)
!87 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB14_4SyncEL_ECsidoPH4Qgqxm_12polars_async", scope: !136, file: !135, line: 455, type: !19, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!88 = distinct !DISubprogram(name: "for_value_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1q_4SyncEL_ECsidoPH4Qgqxm_12polars_async", scope: !140, file: !137, line: 253, type: !19, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!89 = distinct !DISubprogram(name: "drop<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsidoPH4Qgqxm_12polars_async", scope: !144, file: !141, line: 1913, type: !15, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!90 = distinct !DILexicalBlock(scope: !89, file: !141, line: 1916, column: 9)
!91 = distinct !DILocation(line: 810, column: 1, scope: !83, inlinedAt: !86)
!92 = distinct !DILocation(line: 1919, column: 26, scope: !90, inlinedAt: !91)
!93 = distinct !DILocation(line: 255, column: 43, scope: !88, inlinedAt: !92)
!94 = distinct !DILexicalBlock(scope: !90, file: !141, line: 1919, column: 13)
!95 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB15_4SyncEL_ECsidoPH4Qgqxm_12polars_async", scope: !136, file: !135, line: 594, type: !19, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!96 = distinct !DISubprogram(name: "of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1r_4SyncEL_ECsidoPH4Qgqxm_12polars_async", scope: !149, file: !147, line: 123, type: !19, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!97 = distinct !DILocation(line: 255, column: 68, scope: !88, inlinedAt: !92)
!98 = distinct !DILocation(line: 125, column: 30, scope: !96, inlinedAt: !97)
!99 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !151, file: !150, line: 127, type: !19, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!100 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !152, file: !150, line: 219, type: !19, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!101 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !152, file: !150, line: 343, type: !19, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!102 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !153, file: !150, line: 460, type: !15, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!103 = distinct !DILocation(line: 1921, column: 24, scope: !94, inlinedAt: !91)
!104 = distinct !DILocation(line: 462, column: 23, scope: !102, inlinedAt: !103)
!105 = distinct !DILocation(line: 344, column: 9, scope: !101, inlinedAt: !104)
!106 = distinct !DILocation(line: 229, column: 22, scope: !100, inlinedAt: !105)
!107 = distinct !DILocation(line: 810, column: 1, scope: !83, inlinedAt: !86)
!108 = distinct !DILocation(line: 1919, column: 26, scope: !90, inlinedAt: !107)
!109 = distinct !DILocation(line: 255, column: 43, scope: !88, inlinedAt: !108)
!110 = distinct !DILocation(line: 255, column: 68, scope: !88, inlinedAt: !108)
!111 = distinct !DILocation(line: 125, column: 30, scope: !96, inlinedAt: !110)
!112 = distinct !DILocation(line: 1921, column: 24, scope: !94, inlinedAt: !107)
!113 = distinct !DILocation(line: 462, column: 23, scope: !102, inlinedAt: !112)
!114 = distinct !DILocation(line: 344, column: 9, scope: !101, inlinedAt: !113)
!115 = distinct !DILocation(line: 229, column: 22, scope: !100, inlinedAt: !114)
!116 = distinct !DISubprogram(name: "drop<std::io::error::Custom, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsh8eZTKRCwoO_3std2io5error6CustomENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsidoPH4Qgqxm_12polars_async", scope: !144, file: !141, line: 1913, type: !15, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!117 = distinct !DILexicalBlock(scope: !116, file: !141, line: 1916, column: 9)
!118 = distinct !DILexicalBlock(scope: !117, file: !141, line: 1919, column: 13)
!119 = distinct !DILocation(line: 810, column: 1, scope: !79, inlinedAt: !82)
!120 = distinct !DILocation(line: 1921, column: 24, scope: !118, inlinedAt: !119)
!121 = distinct !DILocation(line: 462, column: 23, scope: !102, inlinedAt: !120)
!122 = distinct !DILocation(line: 344, column: 9, scope: !101, inlinedAt: !121)
!123 = distinct !DILocation(line: 229, column: 22, scope: !100, inlinedAt: !122)
!124 = distinct !DILocation(line: 810, column: 1, scope: !79, inlinedAt: !82)
!125 = distinct !DILocation(line: 1921, column: 24, scope: !118, inlinedAt: !124)
!126 = distinct !DILocation(line: 462, column: 23, scope: !102, inlinedAt: !125)
!127 = distinct !DILocation(line: 344, column: 9, scope: !101, inlinedAt: !126)
!128 = distinct !DILocation(line: 229, column: 22, scope: !100, inlinedAt: !127)
!129 = !{i64 8329258513027099288}
!130 = !DIFile(filename: "library/std/src/io/error/repr_bitpacked.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "5eb8b63e91ae5a0b67b803836fec054a")
!131 = !DINamespace(name: "error", scope: !21)
!132 = !DINamespace(name: "repr_bitpacked", scope: !131)
!133 = !DINamespace(name: "{impl#3}", scope: !132)
!134 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!135 = !DIFile(filename: "library/core/src/mem/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f117990a17890c376e3a360d512003aa")
!136 = !DINamespace(name: "mem", scope: !12)
!137 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9b0fa2b5eccd748fb6b1e11a9156468")
!138 = !DINamespace(name: "alloc", scope: !12)
!139 = !DINamespace(name: "layout", scope: !138)
!140 = !DINamespace(name: "Layout", scope: !139)
!141 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c2c961396e00891ae9e97f5dc112a35a")
!142 = !DINamespace(name: "alloc", scope: null)
!143 = !DINamespace(name: "boxed", scope: !142)
!144 = !DINamespace(name: "{impl#10}", scope: !143)
!145 = !{i64 0, i64 -9223372036854775808}
!146 = !{i64 1, i64 536870913}
!147 = !DIFile(filename: "library/core/src/mem/alignment.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "04a3a61c673b016abd85a06a152fa744")
!148 = !DINamespace(name: "alignment", scope: !136)
!149 = !DINamespace(name: "Alignment", scope: !148)
!150 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "860ce4ea2346d0773913a27b0b87ad79")
!151 = !DINamespace(name: "alloc", scope: !142)
!152 = !DINamespace(name: "Global", scope: !151)
!153 = !DINamespace(name: "{impl#1}", scope: !151)
!154 = !DILocation(line: 810, column: 1, scope: !58)
!155 = !DILocation(line: 150, column: 18, scope: !59, inlinedAt: !68)
!156 = !DILocation(line: 249, column: 11, scope: !69, inlinedAt: !67)
!157 = !DILocation(line: 249, column: 5, scope: !69, inlinedAt: !67)
!158 = !DILocation(line: 1065, column: 15, scope: !70, inlinedAt: !72)
!159 = !DILocation(line: 1065, column: 9, scope: !70, inlinedAt: !72)
!160 = !DILocation(line: 267, column: 9, scope: !69, inlinedAt: !67)
!161 = !DILocation(line: 470, column: 18, scope: !73, inlinedAt: !78)
!162 = !DILocation(line: 810, column: 1, scope: !79, inlinedAt: !82)
!163 = !DILocation(line: 810, column: 1, scope: !83, inlinedAt: !86)
!164 = !DILocation(line: 457, column: 14, scope: !87, inlinedAt: !93)
!165 = !DILocation(line: 1920, column: 16, scope: !94, inlinedAt: !91)
!166 = !DILocation(line: 596, column: 14, scope: !95, inlinedAt: !98)
!167 = !DILocation(line: 128, column: 14, scope: !99, inlinedAt: !106)
!168 = !DILocation(line: 1920, column: 13, scope: !94, inlinedAt: !91)
!169 = !DILocation(line: 457, column: 14, scope: !87, inlinedAt: !109)
!170 = !DILocation(line: 1920, column: 16, scope: !94, inlinedAt: !107)
!171 = !DILocation(line: 596, column: 14, scope: !95, inlinedAt: !111)
!172 = !DILocation(line: 128, column: 14, scope: !99, inlinedAt: !115)
!173 = !DILocation(line: 1920, column: 13, scope: !94, inlinedAt: !107)
!174 = !DILocation(line: 128, column: 14, scope: !99, inlinedAt: !123)
!175 = !DILocation(line: 128, column: 14, scope: !99, inlinedAt: !128)
!176 = !DILocation(line: 810, column: 1, scope: !80, inlinedAt: !81)
!177 = !{i64 4005453412576929176}
!178 = !DILocation(line: 810, column: 1, scope: !1)
!179 = distinct !DISubprogram(name: "default_write_fmt<std::sys::stdio::unix::Stderr>", linkageName: "_RINvNtCsh8eZTKRCwoO_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECsidoPH4Qgqxm_12polars_async", scope: !21, file: !26, line: 615, type: !19, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!180 = distinct !DILexicalBlock(scope: !179, file: !26, line: 638, column: 5)
!181 = distinct !{!181, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsidoPH4Qgqxm_12polars_async"}
!182 = distinct !{!182, !181, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsidoPH4Qgqxm_12polars_async: argument 0"}
!183 = distinct !DILocation(line: 654, column: 1, scope: !179)
!184 = distinct !DISubprogram(name: "is_ok<(), std::io::error::Error>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE5is_okCsidoPH4Qgqxm_12polars_async", scope: !30, file: !27, line: 593, type: !19, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!185 = distinct !DILexicalBlock(scope: !184, file: !28, line: 429, column: 9)
!186 = distinct !DISubprogram(name: "is_err<(), std::io::error::Error>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE6is_errCsidoPH4Qgqxm_12polars_async", scope: !30, file: !27, line: 646, type: !19, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!187 = !{i64 -8909619942234689325}
!188 = !{!182}
!189 = !DILexicalBlockFile(scope: !185, file: !27, discriminator: 0)
!190 = !DILocation(line: 643, column: 29, scope: !180)
!191 = !DILocation(line: 647, column: 15, scope: !186, inlinedAt: !190)
!192 = !DILocation(line: 638, column: 9, scope: !179)
!193 = !DILocation(line: 638, column: 22, scope: !179)
!194 = !DILocation(line: 639, column: 11, scope: !180)
!195 = !DILocation(line: 810, column: 1, scope: !1, inlinedAt: !183)
!196 = !DILocation(line: 0, scope: !179)
!197 = !DILocation(line: 639, column: 5, scope: !180)
!198 = !DILocation(line: 594, column: 18, scope: !189, inlinedAt: !191)
!199 = !DILocation(line: 643, column: 16, scope: !180)
!200 = !DILocation(line: 654, column: 1, scope: !179)
!201 = !DILocation(line: 0, scope: !180)
!202 = !DILocation(line: 654, column: 2, scope: !179)
!203 = !DILocation(line: 648, column: 17, scope: !180)
!204 = !DILocation(line: 615, column: 1, scope: !179)
!205 = distinct !DISubprogram(name: "range<core::ops::range::RangeFull>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsidoPH4Qgqxm_12polars_async", scope: !34, file: !32, line: 907, type: !19, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!206 = distinct !DISubprogram(name: "into_slice_range", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core5slice5index16into_slice_range", scope: !34, file: !32, line: 1011, type: !19, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!207 = distinct !DILexicalBlock(scope: !205, file: !32, line: 911, column: 5)
!208 = distinct !DILocation(line: 912, column: 5, scope: !207)
!209 = !{i64 4764688114766310271}
!210 = !DILocation(line: 1038, column: 2, scope: !206, inlinedAt: !208)
!211 = !DILocation(line: 913, column: 2, scope: !205)
!212 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<std::thread::lifecycle::spawn_unchecked::{closure#1}::{closure#0}::{closure_env#0}<polars_async::executor::{impl#8}::global::{closure#0}::{closure#0}::{closure_env#0}, ()>, ()>", linkageName: "_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB27_8Executor6global000uEs_000uEB29_", scope: !37, file: !35, line: 162, type: !19, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!213 = distinct !{!213, i1 true, !"_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1e_8Executor6global000uEs_000B1g_"}
!214 = distinct !{!214, !213, !"_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1e_8Executor6global000uEs_000B1g_: argument 0"}
!215 = distinct !DISubprogram(name: "{closure#0}<polars_async::executor::{impl#8}::global::{closure#0}::{closure#0}::{closure_env#0}, ()>", linkageName: "_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1e_8Executor6global000uEs_000B1g_", scope: !43, file: !38, line: 90, type: !19, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!216 = distinct !DILocation(line: 166, column: 18, scope: !212)
!217 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint9black_boxuECsidoPH4Qgqxm_12polars_async", scope: !46, file: !45, line: 490, type: !19, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!218 = distinct !DILexicalBlock(scope: !212, file: !35, line: 166, column: 5)
!219 = !{i64 -8780066161624892987}
!220 = !{!214}
!221 = !DILocation(line: 169, column: 5, scope: !218)
!222 = !DILocation(line: 90, column: 68, scope: !215, inlinedAt: !216)
!223 = !DILocation(line: 90, column: 74, scope: !215, inlinedAt: !216)
!224 = !DILocation(line: 90, column: 78, scope: !215, inlinedAt: !216)
!225 = !DILocation(line: 491, column: 5, scope: !217, inlinedAt: !221)
!226 = !DILocation(line: 172, column: 2, scope: !212)
!227 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<std::thread::lifecycle::spawn_unchecked::{closure#1}::{closure#0}::{closure_env#0}<polars_async::executor::{impl#8}::spawn_runner_without_identity::{closure_env#0}, ()>, ()>", linkageName: "_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB23_8Executor29spawn_runner_without_identity0uEs_000uEB25_", scope: !37, file: !35, line: 162, type: !19, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!228 = distinct !{!228, i1 true, !"_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1a_8Executor29spawn_runner_without_identity0uEs_000B1c_"}
!229 = distinct !{!229, !228, !"_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1a_8Executor29spawn_runner_without_identity0uEs_000B1c_: argument 0"}
!230 = distinct !DISubprogram(name: "{closure#0}<polars_async::executor::{impl#8}::spawn_runner_without_identity::{closure_env#0}, ()>", linkageName: "_RNCNCNCINvNtNtCsh8eZTKRCwoO_3std6thread9lifecycle15spawn_uncheckedNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1a_8Executor29spawn_runner_without_identity0uEs_000B1c_", scope: !43, file: !38, line: 90, type: !19, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!231 = distinct !DILocation(line: 166, column: 18, scope: !227)
!232 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint9black_boxuECsidoPH4Qgqxm_12polars_async", scope: !46, file: !45, line: 490, type: !19, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!233 = distinct !DILexicalBlock(scope: !227, file: !35, line: 166, column: 5)
!234 = !{i64 3813086368636326812}
!235 = !{!229}
!236 = !DILocation(line: 169, column: 5, scope: !233)
!237 = !DILocation(line: 90, column: 68, scope: !230, inlinedAt: !231)
!238 = !DILocation(line: 90, column: 74, scope: !230, inlinedAt: !231)
!239 = !DILocation(line: 90, column: 78, scope: !230, inlinedAt: !231)
!240 = !DILocation(line: 491, column: 5, scope: !232, inlinedAt: !236)
!241 = !DILocation(line: 172, column: 2, scope: !227)
!242 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<polars_async::executor::{impl#8}::global::{closure#0}::{closure#0}::{closure_env#0}, ()>", linkageName: "_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1j_8Executor6global000uEB1l_", scope: !37, file: !35, line: 162, type: !19, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!243 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtBb_8Executor6global000Bd_", scope: !250, file: !47, line: 406, type: !19, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!244 = distinct !DILocation(line: 166, column: 18, scope: !242)
!245 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint9black_boxuECsidoPH4Qgqxm_12polars_async", scope: !46, file: !45, line: 490, type: !19, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!246 = distinct !DILexicalBlock(scope: !242, file: !35, line: 166, column: 5)
!247 = !{i64 -4722581759814621209}
!248 = !DINamespace(name: "global", scope: !50)
!249 = !DINamespace(name: "{closure#0}", scope: !248)
!250 = !DINamespace(name: "{closure#0}", scope: !249)
!251 = !DILocation(line: 169, column: 5, scope: !246)
!252 = !DILocation(line: 406, column: 40, scope: !243, inlinedAt: !244)
!253 = !DILocation(line: 406, column: 55, scope: !243, inlinedAt: !244)
!254 = !DILocation(line: 491, column: 5, scope: !245, inlinedAt: !251)
!255 = !DILocation(line: 172, column: 2, scope: !242)
!256 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<polars_async::executor::{impl#8}::spawn_runner_without_identity::{closure_env#0}, ()>", linkageName: "_RINvNtNtCsh8eZTKRCwoO_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB1f_8Executor29spawn_runner_without_identity0uEB1h_", scope: !37, file: !35, line: 162, type: !19, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!257 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB7_8Executor29spawn_runner_without_identity0B9_", scope: !262, file: !47, line: 354, type: !19, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!258 = distinct !DILocation(line: 166, column: 18, scope: !256)
!259 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_RINvNtCscgRAwXFJnXP_4core4hint9black_boxuECsidoPH4Qgqxm_12polars_async", scope: !46, file: !45, line: 490, type: !19, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!260 = distinct !DILexicalBlock(scope: !256, file: !35, line: 166, column: 5)
!261 = !{i64 -2054649177487391754}
!262 = !DINamespace(name: "spawn_runner_without_identity", scope: !50)
!263 = !DILocation(line: 169, column: 5, scope: !260)
!264 = !DILocation(line: 354, column: 28, scope: !257, inlinedAt: !258)
!265 = !DILocation(line: 354, column: 43, scope: !257, inlinedAt: !258)
!266 = !DILocation(line: 491, column: 5, scope: !259, inlinedAt: !263)
!267 = !DILocation(line: 172, column: 2, scope: !256)
!268 = distinct !DISubprogram(name: "from_rng<rand::rngs::small::SmallRng, rand::rngs::thread::ThreadRng>", linkageName: "_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECsidoPH4Qgqxm_12polars_async", scope: !574, file: !571, line: 147, type: !19, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!269 = distinct !{!269, i1 true, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!270 = distinct !{!270, !269, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!271 = distinct !DILexicalBlock(scope: !268, file: !571, line: 148, column: 9)
!272 = distinct !DISubprogram(name: "get<rand_core::block::BlockRng<rand::rngs::thread::ReseedingCore>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtCs53V80GKKPEw_9rand_core5block8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreEE3getCsidoPH4Qgqxm_12polars_async", scope: !579, file: !577, line: 2443, type: !19, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!273 = distinct !DISubprogram(name: "try_fill_bytes", linkageName: "_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes", scope: !584, file: !580, line: 232, type: !19, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!274 = distinct !DISubprogram(name: "fill_bytes<rand::rngs::thread::ThreadRng>", linkageName: "_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsidoPH4Qgqxm_12polars_async", scope: !586, file: !585, line: 84, type: !15, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!275 = distinct !DILocation(line: 149, column: 13, scope: !271)
!276 = distinct !DILocation(line: 85, column: 20, scope: !274, inlinedAt: !275)
!277 = distinct !DILocation(line: 235, column: 43, scope: !273, inlinedAt: !276)
!278 = distinct !{!278, i1 true, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async"}
!279 = distinct !{!279, !278, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async: argument 0"}
!280 = distinct !DILexicalBlock(scope: !273, file: !580, line: 235, column: 9)
!281 = distinct !{!281, i1 true, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsidoPH4Qgqxm_12polars_async"}
!282 = distinct !{!282, !281, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsidoPH4Qgqxm_12polars_async: argument 0"}
!283 = distinct !DISubprogram(name: "index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE5indexCsidoPH4Qgqxm_12polars_async", scope: !591, file: !589, line: 174, type: !19, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!284 = distinct !DISubprogram(name: "fill_bytes<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async", scope: !591, file: !589, line: 275, type: !19, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!285 = distinct !DILexicalBlock(scope: !284, file: !589, line: 276, column: 9)
!286 = distinct !DILocation(line: 236, column: 13, scope: !280, inlinedAt: !276)
!287 = distinct !DILocation(line: 277, column: 30, scope: !285, inlinedAt: !286)
!288 = distinct !{!288, i1 true, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!289 = distinct !{!289, !288, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!290 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFrommE8try_from", scope: !597, file: !593, line: 252, type: !19, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!291 = distinct !DISubprogram(name: "try_into<u32, usize>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertmINtB5_7TryIntojE8try_intoCsidoPH4Qgqxm_12polars_async", scope: !599, file: !598, line: 818, type: !19, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!292 = distinct !DISubprogram(name: "into_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10into_usize", scope: !603, file: !600, line: 40, type: !19, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!293 = distinct !DILocation(line: 175, column: 25, scope: !283, inlinedAt: !287)
!294 = distinct !DILocation(line: 41, column: 18, scope: !292, inlinedAt: !293)
!295 = distinct !DILocation(line: 819, column: 9, scope: !291, inlinedAt: !294)
!296 = distinct !DILexicalBlock(scope: !285, file: !589, line: 277, column: 9)
!297 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsmINtB9_7TryFromjE8try_from", scope: !604, file: !593, line: 294, type: !19, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!298 = distinct !DISubprogram(name: "try_into<usize, u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertjINtB5_7TryIntomE8try_intoCsidoPH4Qgqxm_12polars_async", scope: !599, file: !598, line: 818, type: !19, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!299 = distinct !DISubprogram(name: "from_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10from_usize", scope: !603, file: !600, line: 36, type: !19, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!300 = distinct !DISubprogram(name: "set_index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE9set_indexCsidoPH4Qgqxm_12polars_async", scope: !591, file: !589, line: 179, type: !19, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!301 = distinct !DILocation(line: 306, column: 14, scope: !296, inlinedAt: !286)
!302 = distinct !DILocation(line: 181, column: 27, scope: !300, inlinedAt: !301)
!303 = distinct !DILocation(line: 37, column: 17, scope: !299, inlinedAt: !302)
!304 = distinct !DILocation(line: 819, column: 9, scope: !298, inlinedAt: !303)
!305 = distinct !DISubprogram(name: "unwrap<u32, core::num::error::TryFromIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsidoPH4Qgqxm_12polars_async", scope: !30, file: !27, line: 1227, type: !19, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!306 = distinct !DILexicalBlock(scope: !305, file: !27, line: 1233, column: 13)
!307 = distinct !DILocation(line: 37, column: 28, scope: !299, inlinedAt: !302)
!308 = distinct !{!308, i1 true, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate"}
!309 = distinct !{!309, !308, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 0"}
!310 = distinct !DISubprogram(name: "get_block_pos", linkageName: "_RNvXs1_NtCsejN9i34LGCw_8chacha208variantsNtB5_6LegacyNtB5_7Variant13get_block_pos", scope: !610, file: !607, line: 69, type: !19, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!311 = distinct !DISubprogram(name: "get_block_pos<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMs1_CsejN9i34LGCw_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE13get_block_posCsidoPH4Qgqxm_12polars_async", scope: !612, file: !611, line: 279, type: !19, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!312 = distinct !DISubprogram(name: "generate", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate", scope: !613, file: !580, line: 52, type: !19, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!313 = distinct !DILocation(line: 280, column: 27, scope: !296, inlinedAt: !286)
!314 = distinct !DILocation(line: 53, column: 23, scope: !312, inlinedAt: !313)
!315 = distinct !DILocation(line: 280, column: 9, scope: !311, inlinedAt: !314)
!316 = distinct !{!316, !308, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 1"}
!317 = distinct !{!317, !278, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCsidoPH4Qgqxm_12polars_async: argument 1"}
!318 = distinct !DILexicalBlock(scope: !296, file: !589, line: 284, column: 13)
!319 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCsidoPH4Qgqxm_12polars_async", scope: !616, file: !32, line: 579, type: !19, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!320 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range9RangeFromjEE9index_mutCsidoPH4Qgqxm_12polars_async", scope: !617, file: !32, line: 30, type: !19, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!321 = distinct !DILocation(line: 285, column: 34, scope: !318, inlinedAt: !286)
!322 = distinct !DILocation(line: 31, column: 15, scope: !320, inlinedAt: !321)
!323 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckhECsidoPH4Qgqxm_12polars_async", scope: !34, file: !32, line: 94, type: !19, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!324 = distinct !DILexicalBlock(scope: !323, file: !32, line: 99, column: 5)
!325 = distinct !DILexicalBlock(scope: !319, file: !32, line: 585, column: 13)
!326 = distinct !DILocation(line: 586, column: 19, scope: !325, inlinedAt: !322)
!327 = distinct !{!327, i1 true, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsidoPH4Qgqxm_12polars_async"}
!328 = distinct !{!328, !327, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsidoPH4Qgqxm_12polars_async: argument 0"}
!329 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1x_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthE3newCsidoPH4Qgqxm_12polars_async", scope: !621, file: !619, line: 2028, type: !19, scopeLine: 2028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!330 = distinct !DILexicalBlock(scope: !329, file: !619, line: 2029, column: 9)
!331 = distinct !DILexicalBlock(scope: !330, file: !619, line: 2030, column: 9)
!332 = distinct !DILexicalBlock(scope: !331, file: !619, line: 2032, column: 9)
!333 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsidoPH4Qgqxm_12polars_async", scope: !623, file: !622, line: 1290, type: !15, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!334 = distinct !DILocation(line: 285, column: 47, scope: !318, inlinedAt: !286)
!335 = distinct !DILocation(line: 1292, column: 9, scope: !333, inlinedAt: !334)
!336 = distinct !DILexicalBlock(scope: !318, file: !589, line: 285, column: 13)
!337 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckmECsidoPH4Qgqxm_12polars_async", scope: !34, file: !32, line: 82, type: !19, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!338 = distinct !DILexicalBlock(scope: !337, file: !32, line: 87, column: 5)
!339 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSmE5indexCsidoPH4Qgqxm_12polars_async", scope: !616, file: !32, line: 567, type: !19, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!340 = distinct !DILexicalBlock(scope: !339, file: !32, line: 573, column: 13)
!341 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsidoPH4Qgqxm_12polars_async", scope: !624, file: !32, line: 18, type: !19, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!342 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>, 64>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAmj40_INtNtNtB7_3ops5index5IndexINtNtBH_5range9RangeFromjEE5indexCsidoPH4Qgqxm_12polars_async", scope: !627, file: !625, line: 389, type: !19, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!343 = distinct !DILocation(line: 286, column: 39, scope: !336, inlinedAt: !286)
!344 = distinct !DILocation(line: 390, column: 9, scope: !342, inlinedAt: !343)
!345 = distinct !DILocation(line: 19, column: 15, scope: !341, inlinedAt: !344)
!346 = distinct !DILocation(line: 574, column: 15, scope: !340, inlinedAt: !345)
!347 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCsidoPH4Qgqxm_12polars_async", scope: !628, file: !619, line: 96, type: !19, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!348 = distinct !DILexicalBlock(scope: !347, file: !619, line: 97, column: 9)
!349 = distinct !DILexicalBlock(scope: !348, file: !619, line: 98, column: 9)
!350 = distinct !DILexicalBlock(scope: !349, file: !619, line: 101, column: 13)
!351 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCsidoPH4Qgqxm_12polars_async", scope: !623, file: !622, line: 1040, type: !19, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!352 = distinct !DILocation(line: 286, column: 49, scope: !336, inlinedAt: !286)
!353 = distinct !DILocation(line: 1041, column: 9, scope: !351, inlinedAt: !352)
!354 = distinct !{!354, i1 true, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async"}
!355 = distinct !{!355, !354, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async: argument 0"}
!356 = distinct !{!356, i1 true, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async"}
!357 = distinct !{!357, !356, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async: argument 0"}
!358 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCsidoPH4Qgqxm_12polars_async", scope: !634, file: !630, line: 154, type: !19, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!359 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipQINtNtNtB8_5slice4iter14ChunksExactMuthEQINtBX_4ItermEE3newCsidoPH4Qgqxm_12polars_async", scope: !635, file: !630, line: 23, type: !19, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!360 = distinct !DISubprogram(name: "zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECsidoPH4Qgqxm_12polars_async", scope: !639, file: !636, line: 626, type: !19, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!361 = distinct !DILexicalBlock(scope: !336, file: !589, line: 286, column: 13)
!362 = distinct !DILocation(line: 288, column: 42, scope: !361, inlinedAt: !286)
!363 = distinct !DILocation(line: 631, column: 9, scope: !360, inlinedAt: !362)
!364 = distinct !DILocation(line: 24, column: 9, scope: !359, inlinedAt: !363)
!365 = distinct !DILexicalBlock(scope: !361, file: !589, line: 288, column: 13)
!366 = distinct !{!366, i1 true, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async"}
!367 = distinct !{!367, !366, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async: argument 1"}
!368 = distinct !{!368, !366, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async: argument 0"}
!369 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsidoPH4Qgqxm_12polars_async", scope: !634, file: !630, line: 220, type: !19, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!370 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipQINtNtNtBa_5slice4iter14ChunksExactMuthEQINtBZ_4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsidoPH4Qgqxm_12polars_async", scope: !641, file: !630, line: 89, type: !19, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!371 = distinct !DISubprogram(name: "len<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>>", linkageName: "_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtBU_4ItermEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCsidoPH4Qgqxm_12polars_async", scope: !644, file: !642, line: 116, type: !19, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!372 = distinct !DILocation(line: 289, column: 37, scope: !365, inlinedAt: !286)
!373 = distinct !DILocation(line: 117, column: 35, scope: !371, inlinedAt: !372)
!374 = distinct !DILocation(line: 90, column: 9, scope: !370, inlinedAt: !373)
!375 = distinct !DILexicalBlock(scope: !369, file: !630, line: 221, column: 9)
!376 = distinct !DILexicalBlock(scope: !375, file: !630, line: 222, column: 9)
!377 = distinct !DILexicalBlock(scope: !376, file: !630, line: 224, column: 9)
!378 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCsidoPH4Qgqxm_12polars_async", scope: !649, file: !647, line: 1073, type: !19, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!379 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECsidoPH4Qgqxm_12polars_async", scope: !648, file: !647, line: 1575, type: !19, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!380 = distinct !DILexicalBlock(scope: !377, file: !630, line: 227, column: 13)
!381 = distinct !DILocation(line: 227, column: 40, scope: !380, inlinedAt: !374)
!382 = distinct !DILocation(line: 1576, column: 8, scope: !379, inlinedAt: !381)
!383 = distinct !DILocation(line: 224, column: 21, scope: !376, inlinedAt: !374)
!384 = distinct !DILocation(line: 1576, column: 8, scope: !379, inlinedAt: !383)
!385 = distinct !DILexicalBlock(scope: !371, file: !642, line: 117, column: 9)
!386 = distinct !DISubprogram(name: "eq<usize>", linkageName: "_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionjENtNtB7_3cmp9PartialEq2eqCsidoPH4Qgqxm_12polars_async", scope: !650, file: !22, line: 2439, type: !19, scopeLine: 2439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!387 = distinct !DILexicalBlock(scope: !385, file: !28, line: 45, column: 13)
!388 = distinct !DILocation(line: 46, column: 21, scope: !387, inlinedAt: !372)
!389 = distinct !DILexicalBlock(scope: !387, file: !28, line: 47, column: 21)
!390 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1Q_8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB38_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async", scope: !641, file: !630, line: 99, type: !19, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!391 = distinct !DISubprogram(name: "for_each<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>, rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtBV_4ItermEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB2z_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0ECsidoPH4Qgqxm_12polars_async", scope: !639, file: !636, line: 877, type: !19, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!392 = distinct !DILexicalBlock(scope: !365, file: !589, line: 289, column: 13)
!393 = distinct !DILocation(line: 290, column: 20, scope: !392, inlinedAt: !286)
!394 = distinct !DILocation(line: 887, column: 14, scope: !391, inlinedAt: !393)
!395 = distinct !{!395, i1 true, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async"}
!396 = distinct !{!396, !395, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async: argument 0"}
!397 = distinct !{!397, i1 true, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async"}
!398 = distinct !{!398, !397, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async: argument 0"}
!399 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsidoPH4Qgqxm_12polars_async", scope: !634, file: !630, line: 244, type: !19, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !14)
!400 = distinct !DILocation(line: 103, column: 9, scope: !390, inlinedAt: !394)
end_hunk_1
