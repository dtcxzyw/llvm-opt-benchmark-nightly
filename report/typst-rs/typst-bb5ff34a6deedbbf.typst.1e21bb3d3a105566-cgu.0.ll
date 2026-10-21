Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst-bb5ff34a6deedbbf.typst.1e21bb3d3a105566-cgu.0?download=true
inline.NumInlined: 451
inline.NumDeleted: 242
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2AodJlUx5rK_5typst, ptr @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0Cs2AodJlUx5rK_5typst }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant [91 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/ecow-0.2.6/src/vec.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"Z\00\00\00\00\00\00\00\8B\01\00\00\18\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"Z\00\00\00\00\00\00\00\8E\01\00\00\18\00\00\00" }>, align 8
@6 = private unnamed_addr constant [24 x i8] c"reference count overflow", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"Z\00\00\00\00\00\00\00\D2\04\00\00\05\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@9 = private unnamed_addr constant [3 x i8] c"typ", align 1
@10 = private unnamed_addr constant [24 x i8] c"crates/typst/src/lib.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\17\00\00\00\00\00\00\00\EE\00\00\00)\00\00\00" }>, align 8
@12 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@13 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @12, [24 x i8] zeroinitializer }>, align 8
@14 = private unnamed_addr constant [55 x i8] c"a file without an extension is not usually a Typst file", align 1
@15 = private unnamed_addr constant [61 x i8] c"\12a file with the `.\C0'` extension is not usually a Typst file\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs2AodJlUx5rK_5typst }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\17\00\00\00\00\00\00\00\E3\00\00\00!\00\00\00" }>, align 8
@18 = private unnamed_addr constant [54 x i8] c"check if you meant to use the `.typ` extension instead", align 1
@19 = private unnamed_addr constant [62 x i8] c"html export is only available when `--features html` is passed", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\17\00\00\00\00\00\00\00\02\01\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant [54 x i8] c"html export is under active development and incomplete", align 1
@22 = private unnamed_addr constant [42 x i8] c"https://github.com/typst/typst/issues/5512", align 1
@23 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @22, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@24 = private unnamed_addr constant [29 x i8] c"\04see \C0\15 for more information\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"\17\00\00\00\00\00\00\00\FA\00\00\00\13\00\00\00" }>, align 8
@26 = private unnamed_addr constant [36 x i8] c"its behaviour may change at any time", align 1
@27 = private unnamed_addr constant [52 x i8] c"do not rely on this feature for production use cases", align 1
@28 = private unnamed_addr constant [66 x i8] c"bundle export is only available when `--features bundle` is passed", align 1
@29 = private unnamed_addr constant [29 x i8] c"bundle export is experimental", align 1
@_RNvCs2AodJlUx5rK_5typst8ROUTINES = internal global <{ ptr, [56 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvCs2AodJlUx5rK_5typst8ROUTINES0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_, [56 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@30 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@31 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC = external local_unnamed_addr global { { { ptr } } }
@_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC = external local_unnamed_addr global { { { ptr } } }
@32 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = load i32, ptr %0, align 8, !range !5, !noundef !6 ; 5 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !46, !nonnull !6, !noundef !6
  %1 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !46
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.k = icmp ne i32 %i.f, 11
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i32 %i.f, -5
  %i.m = icmp samesign ugt i32 %i.f, 4
  %narrow.i = select i1 %i.m, i32 %i.l, i32 6
  switch i32 %narrow.i, label %bb.e [
    i32 0, label %bb.i
    i32 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit
    i32 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit
    i32 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit
    i32 4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit
    i32 5, label %bb.k
    i32 6, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.o = load i64, ptr %i.n, align 8, !range !7, !alias.scope !49, !noundef !6
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !51 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val1.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !51, !noundef !6
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.s = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %bb.g
  %2 = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !51
  %.not.i.i.i.i.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !51
  %i.t = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !51, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !51
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  %i.u = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.v, align 8, !noalias !51
  store i64 8, ptr %i.e, align 8, !noalias !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.u, ptr %i.w, align 8, !noalias !51
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !51
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.x, align 8, !alias.scope !47 ; 2 uses
  %i.y = icmp eq i64 %.val.i, 0
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.z, align 8, !alias.scope !47, !nonnull !6, !noundef !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.k:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.aa, align 8, !alias.scope !52 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val3.i = load i8, ptr %i.ab, align 1, !alias.scope !52, !noundef !6
  %.not.i.i.i.i4.i = icmp sgt i8 %.val3.i, -1
  br i1 %.not.i.i.i.i4.i, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %.val2.i, inttoptr (i64 16 to ptr)
  %i.ac = getelementptr inbounds i8, ptr %.val2.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i5.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i6.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i6.i: ; preds = %bb.l
  %3 = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !53
  %.not.i.i.i.i.i7.i = icmp eq i64 %3, 1
  br i1 %.not.i.i.i.i.i7.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i8.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i8.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i6.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !53
  %i.ad = getelementptr i8, ptr %.val2.i, i64 -8
  %.val.i.i.i.i.i.i9.i = load i64, ptr %i.ad, align 8, !noalias !53, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i10.i = icmp ult i64 %.val.i.i.i.i.i.i9.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i10.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i11.i, label %bb.m, !prof !8

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i8.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !53
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i11.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i8.i
  %i.ae = add nuw nsw i64 %.val.i.i.i.i.i.i9.i, 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ac, ptr %i.af, align 8, !noalias !53
  store i64 8, ptr %i.d, align 8, !noalias !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !noalias !53
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !53
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.n:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  switch i32 %i.f, label %bb.o [
    i32 0, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.ai = load i64, ptr %i.ah, align 8, !range !7, !alias.scope !56, !noundef !6
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !58 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val1.i.i.i.i = load i8, ptr %i.al, align 1, !alias.scope !58, !noundef !6
  %.not.i.i.i.i.i12.i = icmp sgt i8 %.val1.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i12.i, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.am = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %4 = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !58
  %.not.i.i.i.i.i.i13.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i.i.i13.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58
  %i.an = getelementptr i8, ptr %.val.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !noalias !58, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, label %bb.r, !prof !8

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i
  %i.ao = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.am, ptr %i.ap, align 8, !noalias !58
  store i64 8, ptr %i.c, align 8, !noalias !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !noalias !58
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.s:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ar)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.t:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.as)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.u:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.au = load i64, ptr %i.at, align 8, !range !7, !alias.scope !60, !noundef !6
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %.val.i.i1.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !62 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val1.i.i2.i.i = load i8, ptr %i.ax, align 1, !alias.scope !62, !noundef !6
  %.not.i.i.i.i3.i.i = icmp sgt i8 %.val1.i.i2.i.i, -1
  br i1 %.not.i.i.i.i3.i.i, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i1.i.i) ]
  %.not.i.i.i.i.i.i4.i.i = icmp eq ptr %.val.i.i1.i.i, inttoptr (i64 16 to ptr)
  %i.ay = getelementptr inbounds i8, ptr %.val.i.i1.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i4.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i5.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i5.i.i: ; preds = %bb.w
  %5 = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !62
  %.not.i.i.i.i.i6.i.i = icmp eq i64 %5, 1
  br i1 %.not.i.i.i.i.i6.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i7.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i7.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i5.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62
  %i.az = getelementptr i8, ptr %.val.i.i1.i.i, i64 -8
  %.val.i.i.i.i.i.i8.i.i = load i64, ptr %i.az, align 8, !noalias !62, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i9.i.i = icmp ult i64 %.val.i.i.i.i.i.i8.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i9.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i10.i.i, label %bb.x, !prof !8

bb.x:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i7.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !62
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i10.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i7.i.i
  %i.ba = add nuw nsw i64 %.val.i.i.i.i.i.i8.i.i, 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ay, ptr %i.bb, align 8, !noalias !62
  store i64 8, ptr %i.b, align 8, !noalias !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !noalias !62
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.y:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.be = load i64, ptr %i.bd, align 8, !range !7, !alias.scope !64, !noundef !6
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %.val.i.i12.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !66 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val1.i.i13.i.i = load i8, ptr %i.bh, align 1, !alias.scope !66, !noundef !6
  %.not.i.i.i.i14.i.i = icmp sgt i8 %.val1.i.i13.i.i, -1
  br i1 %.not.i.i.i.i14.i.i, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i12.i.i) ]
  %.not.i.i.i.i.i.i15.i.i = icmp eq ptr %.val.i.i12.i.i, inttoptr (i64 16 to ptr)
  %i.bi = getelementptr inbounds i8, ptr %.val.i.i12.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i15.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i16.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i16.i.i: ; preds = %bb.aa
  %6 = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !66
  %.not.i.i.i.i.i17.i.i = icmp eq i64 %6, 1
  br i1 %.not.i.i.i.i.i17.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i18.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i18.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i16.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.bj = getelementptr i8, ptr %.val.i.i12.i.i, i64 -8
  %.val.i.i.i.i.i.i19.i.i = load i64, ptr %i.bj, align 8, !noalias !66, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i20.i.i = icmp ult i64 %.val.i.i.i.i.i.i19.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i20.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i21.i.i, label %bb.ab, !prof !8

bb.ab:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i18.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !66
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i21.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i18.i.i
  %i.bk = add nuw nsw i64 %.val.i.i.i.i.i.i19.i.i, 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bi, ptr %i.bl, align 8, !noalias !66
  store i64 8, ptr %i.a, align 8, !noalias !66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !noalias !66
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i21.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i16.i.i, %bb.aa, %bb.z, %bb.y, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i10.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i5.i.i, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, %bb.q, %bb.p, %bb.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i11.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i6.i, %bb.l, %bb.k, %bb.j, %bb.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.16.val, i8 %.31.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.31.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.16.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.16.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %bb.b
  %0 = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !69
  %.not.i.i.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  %i.c = getelementptr i8, ptr %.16.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !69, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !69
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.d = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8, !noalias !69
  store i64 8, ptr %i.a, align 8, !noalias !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8, !noalias !69
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.e = load i64, ptr %0, align 8, !range !83, !alias.scope !82, !noundef !6 ; 2 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 1)
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !85 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i = load i8, ptr %i.h, align 1, !alias.scope !85, !noundef !6
  %.not.i.i.i.i = icmp sgt i8 %.val1.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.i = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %bb.c
  %1 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !85
  %.not.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85
  %i.j = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !85, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i, label %bb.d, !prof !8

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !85
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  %i.k = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.l, align 8, !noalias !85
  store i64 8, ptr %i.d, align 8, !noalias !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !85
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !85
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.n = icmp eq i64 %i.e, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !88 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !88, !noundef !6
  %.not.i.i.i.i1.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i.i1.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.q = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %bb.g
  %2 = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !88
  %.not.i.i.i.i.i2.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i2.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88
  %i.r = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !88, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !88
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  %i.s = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.q, ptr %i.t, align 8, !noalias !88
  store i64 8, ptr %i.c, align 8, !noalias !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.s, ptr %i.u, align 8, !noalias !88
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %.val.i3.i = load ptr, ptr %i.v, align 8, !alias.scope !90 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i4.i = load i8, ptr %i.w, align 1, !alias.scope !90, !noundef !6
  %.not.i.i.i5.i = icmp sgt i8 %.val1.i4.i, -1
  br i1 %.not.i.i.i5.i, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i3.i) ]
  %.not.i.i.i.i.i6.i = icmp eq ptr %.val.i3.i, inttoptr (i64 16 to ptr)
  %i.x = getelementptr inbounds i8, ptr %.val.i3.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i6.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i7.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i7.i: ; preds = %bb.j
  %3 = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !90
  %.not.i.i.i.i8.i = icmp eq i64 %3, 1
  br i1 %.not.i.i.i.i8.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i9.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i9.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i7.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90
  %i.y = getelementptr i8, ptr %.val.i3.i, i64 -8
  %.val.i.i.i.i.i10.i = load i64, ptr %i.y, align 8, !noalias !90, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i11.i = icmp ult i64 %.val.i.i.i.i.i10.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i11.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i12.i, label %bb.k, !prof !8

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i9.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !90
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i12.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i9.i
  %i.z = add nuw nsw i64 %.val.i.i.i.i.i10.i, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.x, ptr %i.aa, align 8, !noalias !90
  store i64 8, ptr %i.b, align 8, !noalias !90
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !90
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.val.i14.i = load ptr, ptr %i.ac, align 8, !alias.scope !92 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i15.i = load i8, ptr %i.ad, align 1, !alias.scope !92, !noundef !6
  %.not.i.i.i16.i = icmp sgt i8 %.val1.i15.i, -1
  br i1 %.not.i.i.i16.i, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14.i) ]
  %.not.i.i.i.i.i17.i = icmp eq ptr %.val.i14.i, inttoptr (i64 16 to ptr)
  %i.ae = getelementptr inbounds i8, ptr %.val.i14.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i17.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i18.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i18.i: ; preds = %bb.m
  %4 = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !92
  %.not.i.i.i.i19.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i19.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i20.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i20.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i18.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  %i.af = getelementptr i8, ptr %.val.i14.i, i64 -8
  %.val.i.i.i.i.i21.i = load i64, ptr %i.af, align 8, !noalias !92, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i22.i = icmp ult i64 %.val.i.i.i.i.i21.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i22.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i23.i, label %bb.n, !prof !8

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i20.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !92
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i23.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i20.i
  %i.ag = add nuw nsw i64 %.val.i.i.i.i.i21.i, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ae, ptr %i.ah, align 8, !noalias !92
  store i64 8, ptr %i.a, align 8, !noalias !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !92
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst.exit: ; preds = %bb.b, %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i, %bb.e, %bb.f, %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %bb.i, %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i7.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i12.i, %bb.l, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i18.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i23.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.a
  %0 = atomicrmw add ptr %i.d, i64 -1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.f = icmp ult i64 %.val.i.i, 576460752303423488
  %i.g = shl nuw i64 %.val.i.i, 5
  %i.h = or disjoint i64 %i.g, 16                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775799
  %narrow.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.j, align 8
  store i64 8, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.h, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.l = icmp eq i64 %.8.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val8.i.i = load ptr, ptr %i.q, align 8, !alias.scope !102 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 31
  %.val9.i.i = load i8, ptr %i.r, align 1, !alias.scope !102, !noundef !6
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i, inttoptr (i64 16 to ptr)
  %i.s = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %1 = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !103
  %.not.i.i.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103
  %i.t = getelementptr i8, ptr %.val8.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !103, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !101

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i
  %i.u = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.s, ptr %i.m, align 8, !noalias !103
  store i64 8, ptr %i.b, align 8, !noalias !103
  store i64 %i.u, ptr %i.n, align 8, !noalias !103
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !101

.noexc10.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %.noexc10.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.v = icmp eq i64 %i.p, %.8.val
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, label %bb.c

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i.i, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %i.p, %.8.val
  br i1 %i.w, label %.body.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, %.lr.ph.i
  %.sroa.0.1.i6.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i6.i ; 2 uses
  %i.aa = add i64 %.sroa.0.1.i6.i, 1              ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val.i10.i = load ptr, ptr %i.ab, align 8, !alias.scope !102 ; 4 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 31
  %.val7.i.i = load i8, ptr %i.ac, align 1, !alias.scope !102, !noundef !6
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !101
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.ad = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %bb.g
  %2 = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !104
  %.not.i.i.i.i.i12.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  fence acquire, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  %i.ae = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !104, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.h
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  %i.af = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.ad, ptr %i.x, align 8, !noalias !104
  store i64 8, ptr %i.a, align 8, !noalias !104
  store i64 %i.af, ptr %i.y, align 8, !noalias !104
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %bb.g, %bb.f
  %i.ag = icmp eq i64 %i.aa, %.8.val
  br i1 %i.ag, label %.body.i, label %bb.f

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %bb.h
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !101
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %.body.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.loopexit.split-lp

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.a
  %0 = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = icmp ult i64 %.val.i.i, 576460752303423488
  %i.e = shl nuw i64 %.val.i.i, 5
  %i.f = or disjoint i64 %i.e, 16                 ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775799
  %narrow.i.i.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  store i64 8, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.i, align 8
  %i.j = icmp eq i64 %.8.val, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %.8.val
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i, %bb.c
  %.sroa.0.0.i10.i2 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i2
  %i.m = add nuw nsw i64 %.sroa.0.0.i10.i2, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.l)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph4
  %i.n = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.o = icmp eq i64 %i.n, %.8.val
  br i1 %i.o, label %.body.i, label %.lr.ph4

bb.e:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %.8.val
  br i1 %i.q, label %.body.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i3 = phi i64 [ %i.n, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.r) #28
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph4
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !107
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

bb.g:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.p

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.a
  %0 = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 128102389400760774
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i, !prof !9

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.d = mul nuw nsw i64 %.val.i.i, 72
  %i.e = add nuw nsw i64 %i.d, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  %i.h = icmp eq i64 %.8.val, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.8.val
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i, %bb.c
  %.sroa.0.0.i10.i1 = phi i64 [ %i.k, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.k = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.j)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph3
  %i.l = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.m = icmp eq i64 %i.l, %.8.val
  br i1 %i.m, label %.body.i, label %.lr.ph3

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.8.val
  br i1 %i.o, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i2 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.p) #28
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !110
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

bb.g:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.n

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.a
  %0 = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i, 9223372036854775783
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.d = add nuw nsw i64 %.val.i.i, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.a = load i64, ptr %0, align 8, !alias.scope !126, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !126, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i.i3
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i3, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.k = add i64 %.sroa.0.1.i.i.i.i.i.i4, 1       ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i.i.i4 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i.i4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #28
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !127
  unreachable

_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = icmp slt i64 %.8.val, 1152921504606846975
  tail call void @llvm.assume(i1 %i.b)
  %i.c = shl i64 %.8.val, 4                       ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add nsw i64 %.8.val, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.0.val, i64 %i.j
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !132 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.val1.i = load i8, ptr %i.c, align 1, !alias.scope !132, !noundef !6
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %bb.b
  %1 = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !132
  %.not.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !132
  %i.e = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !132, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.f = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.g, align 8, !noalias !132
  store i64 8, ptr %i.b, align 8, !noalias !132
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.h, align 8, !noalias !132
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !132
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

bb.d:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #28
          to label %bb.h unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %.noexc1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %.val.i2 = load ptr, ptr %i.k, align 8, !alias.scope !133 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val1.i3 = load i8, ptr %i.l, align 1, !alias.scope !133, !noundef !6
  %.not.i.i.i4 = icmp sgt i8 %.val1.i3, -1
  br i1 %.not.i.i.i4, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit12

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i2) ]
  %.not.i.i.i.i.i5 = icmp eq ptr %.val.i2, inttoptr (i64 16 to ptr)
  %i.m = getelementptr inbounds i8, ptr %.val.i2, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit12, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i6

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i6: ; preds = %bb.e
  %2 = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !133
  %.not.i.i.i.i7 = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i7, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit12

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i8: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i6
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  %i.n = getelementptr i8, ptr %.val.i2, i64 -8
  %.val.i.i.i.i.i9 = load i64, ptr %i.n, align 8, !noalias !133, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i10 = icmp ult i64 %.val.i.i.i.i.i9, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i10, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i11, label %bb.f, !prof !8

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i8
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25, !noalias !133
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i11: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i8
  %i.o = add nuw nsw i64 %.val.i.i.i.i.i9, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.p, align 8, !noalias !133
  store i64 8, ptr %i.a, align 8, !noalias !133
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.q, align 8, !noalias !133
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit12

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit12: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit, %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i6, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i11
  ret void

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.val1 = load i8, ptr %i.b, align 1, !noundef !6
  %.not.i.i = icmp sgt i8 %.val1, -1
  br i1 %.not.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.not.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i: ; preds = %bb.b
  %1 = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %.not.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  %i.e = add nuw nsw i64 %.val.i.i.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !136 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 63
  %.val1.i = load i8, ptr %i.c, align 1, !alias.scope !136, !noundef !6
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %bb.b
  %1 = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !136
  %.not.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  %i.e = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !136, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.f = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8, !noalias !136
  store i64 8, ptr %i.a, align 8, !noalias !136
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.h, align 8, !noalias !136
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc9 unwind label %bb.d

.noexc9:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit

bb.d:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load i64, ptr %i.k, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr nonnull %.val3, i64 %.val4) #28
          to label %bb.e unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %.noexc9, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr nonnull %.val, i64 %.val2)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load i64, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %.val7, i64 %.val8) #28
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load i64, ptr %i.r, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %.val5, i64 %.val6)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles13NativeRuleMapECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !143, !noundef !6 ; 4 uses
  %i.b = icmp eq i64 %.val1.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs2AodJlUx5rK_5typst.exit.i.i, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !143, !nonnull !6, !noundef !6
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.d = shl i64 %.val1.i.i, 3
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1.i.i, 17
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub nuw nsw i64 -16, %i.e
  %i.l = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !143
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs2AodJlUx5rK_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.a
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !143 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs2AodJlUx5rK_5typst.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.n, align 8, !alias.scope !143, !nonnull !6, !noundef !6
  %i.o = mul nuw i64 %.val2.i.i, 40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !143
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs2AodJlUx5rK_5typst.exit.i.i, %bb.b
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECs2AodJlUx5rK_5typst(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #29
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXsF_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB6_11PackageSpecNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !182, !noundef !6 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !182, !nonnull !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !182
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  tail call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i) #30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !183, !noundef !6
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !183
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !183, !noundef !6 ; 4 uses
  %i.m = sub i64 8, %i.l                          ; 2 uses
  %i.n = shl i64 %i.l, 3
  %i.o = and i64 %i.n, 56
  %i.p = shl nuw i64 255, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !183, !noundef !6
  %i.s = or i64 %i.p, %i.r                        ; 3 uses
  store i64 %i.s, ptr %i.q, align 8, !alias.scope !183
  %i.t = icmp ugt i64 %i.m, 1
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !183, !noundef !6
  %i.w = xor i64 %i.v, %i.s                       ; 3 uses
  %i.x = load i64, ptr %1, align 8, !alias.scope !184, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !184, !noundef !6 ; 3 uses
  %i.aa = add i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ac = xor i64 %i.ab, %i.aa                    ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !184, !noundef !6
  %i.ag = add i64 %i.af, %i.w                     ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ai = xor i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = add i64 %i.ai, %i.ad                    ; 2 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst:bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %0, align 8
  store i64 %i.ap, ptr %i.f, align 8
  br label %common.resume

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.k
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.noexc25.thread:                                  ; preds = %.noexc26, %.noexc25, %.noexc
  %i.ao = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ap = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %i.u, i64 %i.v)
          to label %bb.q unwind label %bb.p

bb.q:                                             ; preds = %.noexc25.thread
  store ptr %i.ao, ptr %0, align 8
  store i64 %i.ap, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, %bb.q
  ret void

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val12 = load i64, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val11, i64 %.val12) #28
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %.thread
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !9

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i18, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i18 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 8)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %.not.i19 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i19, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre3.i = load i64, ptr %i.o, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i20 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i20) #28
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ai, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.r = phi i64 [ %.pre3.i, %._crit_edge.i ], [ 0, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i64 %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.v = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %.not.i22 = icmp eq i64 %i.v, 0
  br i1 %.not.i22, label %._crit_edge, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.k
  %.pre46.pre = load ptr, ptr %i.c, align 8
  %.pre47.pre = load i64, ptr %i.t, align 8
  br label %.lr.ph

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.v)
          to label %.lr.ph.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !807

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc23
  %.val.i26 = phi ptr [ %i.ad, %.noexc23 ], [ %.pre46.pre, %.lr.ph.preheader ] ; 2 uses
  %i.x = phi i64 [ %i.ag, %.noexc23 ], [ %.pre47.pre, %.lr.ph.preheader ]
  %.sroa.031.043 = phi ptr [ %i.y, %.noexc23 ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.031.043, i64 1 ; 2 uses
  %i.z = load i8, ptr %.sroa.031.043, align 1, !alias.scope !815, !noalias !816, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %.not.i.i27 = icmp eq ptr %.val.i26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i27, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.val.i26, i64 -8
  %.val.i.i = load i64, ptr %i.aa, align 8, !noalias !817, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.l, %.lr.ph
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.l ], [ 0, %.lr.ph ]
  %i.ab = icmp eq i64 %i.x, %.sroa.02.0.i.i
  %i.ac = zext i1 %i.ab to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.ac)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !814

.noexc23:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ad = load ptr, ptr %i.c, align 8, !alias.scope !817, !nonnull !6, !noundef !6 ; 3 uses
  %i.ae = load i64, ptr %i.t, align 8, !alias.scope !817, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.z, ptr %i.af, align 1
  %i.ag = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !817
  %.not = icmp eq ptr %i.y, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit
  %i.ah = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.ah, label %bb.q, label %bb.o

bb.m:                                             ; preds = %bb.n, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %0, align 8
  store i64 %i.aj, ptr %i.f, align 8
  br label %common.resume

._crit_edge:                                      ; preds = %.noexc23, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit
  %i.aj = phi i64 [ %i.r, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit ], [ %i.ag, %.noexc23 ] ; 2 uses
  %i.ak = phi ptr [ %i.s, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit ], [ %i.ad, %.noexc23 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, inttoptr (i64 16 to ptr)
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %._crit_edge
  %2 = atomicrmw add ptr %i.al, i64 -1 release, align 8
  %.not.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = getelementptr i8, ptr %i.u, i64 -8
  %.val.i.i.i = load i64, ptr %i.am, align 8, !noundef !6 ; 2 uses
  %narrow.i.i.i.i = icmp ult i64 %.val.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i, label %bb.n, !prof !8

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.n
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i
  %i.an = add nuw nsw i64 %.val.i.i.i, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.ao, align 8
  store i64 8, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.an, ptr %i.ap, align 8
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit: ; preds = %.noexc25, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i, %._crit_edge
  store ptr %i.ak, ptr %0, align 8
  store i64 %i.aj, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i, %bb.k
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val11) #28
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.q:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs2AodJlUx5rK_5typst8ROUTINES, i64 64) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0ECs2AodJlUx5rK_5typst.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvCs2AodJlUx5rK_5typst8ROUTINES, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCs2AodJlUx5rK_5typst8ROUTINES, i64 64), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0ECs2AodJlUx5rK_5typst.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  call void @_RNvMs_CsdaEETE4DqmE_13typst_libraryNtB4_14LibraryBuilder13from_routines(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @_RNvCs2AodJlUx5rK_5typst8ROUTINES)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7default(ptr dead_on_unwind noalias nofree noundef writable sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCs2AodJlUx5rK_5typst8ROUTINES, i64 64) acquire, align 8, !noalias !820
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !820
  store ptr @_RNvCs2AodJlUx5rK_5typst8ROUTINES, ptr %i.b, align 8, !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !820
  store ptr %i.b, ptr %i.a, align 8, !noalias !820
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCs2AodJlUx5rK_5typst8ROUTINES, i64 64), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !820
  br label %_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder.exit

_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder.exit: ; preds = %bb.a, %bb.b
  call void @_RNvMs_CsdaEETE4DqmE_13typst_libraryNtB4_14LibraryBuilder13from_routines(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @_RNvCs2AodJlUx5rK_5typst8ROUTINES)
  call void @_RNvMs_CsdaEETE4DqmE_13typst_libraryNtB4_14LibraryBuilder5build(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !832, !noundef !6
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !832
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !832, !noundef !6 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !834
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !834
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !834, !noundef !6
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !832, !noundef !6
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !832
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !832
end_hunk_1
begin_hunk_2_@_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.d = icmp samesign ult i32 %1, 128
  %.sink2.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.sink2.i.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.sink2.i.i.sroa.gep2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !853
  store i32 0, ptr %i.c, align 4, !noalias !853
  %i.e = icmp samesign ult i32 %1, 2048
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = or disjoint i8 %i.g, -64
  store i8 %i.q, ptr %i.c, align 4, !alias.scope !854, !noalias !853
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i32 %1, 65536
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = or disjoint i8 %i.k, -32
  store i8 %i.s, ptr %i.c, align 4, !alias.scope !854, !noalias !853
  store i8 %i.i, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !854, !noalias !853
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.f:                                             ; preds = %bb.d
  store i8 %i.p, ptr %i.c, align 4, !alias.scope !854, !noalias !853
  store i8 %i.m, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !854, !noalias !853
  store i8 %i.i, ptr %.sink2.i.i.sroa.gep1.i, align 2, !alias.scope !854, !noalias !853
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.f ]
  %.sink2.i.i.sroa.phi.i = phi ptr [ %.sink2.i.i.sroa.gep.i, %bb.c ], [ %.sink2.i.i.sroa.gep1.i, %bb.e ], [ %.sink2.i.i.sroa.gep2.i, %bb.f ]
  %i.t = trunc i32 %1 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  store i8 %i.v, ptr %.sink2.i.i.sroa.phi.i, align 1, !alias.scope !854, !noalias !853
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !853
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.g:                                             ; preds = %bb.a
  %i.w = trunc nuw nsw i32 %1 to i8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !856, !noundef !6 ; 3 uses
  %.not.i.i = icmp sgt i8 %i.y, -1
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !858, !noundef !6
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !858, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !858, !noundef !6
  br label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  %i.ac = icmp eq i64 %i.aa, %.sroa.02.0.i.i.i.i
  %i.ad = zext i1 %i.ac to i64
  tail call fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ad), !inline_history !846
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !858, !nonnull !6, !noundef !6
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !858, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 %i.w, ptr %i.ag, align 1, !noalias !858
  %i.ah = add i64 %i.af, 1
  store i64 %i.ah, ptr %i.z, align 8, !alias.scope !858
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.j:                                             ; preds = %bb.g
  %i.ai = and i8 %i.y, 127                        ; 3 uses
  %i.aj = icmp samesign ult i8 %i.ai, 15
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !856
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !859
  %i.ak = tail call noundef align 8 dereferenceable_or_null(46) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 46, i64 noundef 8) #26, !noalias !859 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.noexc33.i.i, label %bb.p, !prof !9

.noexc33.i.i:                                     ; preds = %bb.k
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 46) #25, !noalias !856
  unreachable

common.resume.i.i:                                ; preds = %bb.t, %bb.m
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.bn, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = zext nneg i8 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store i8 %i.w, ptr %i.an, align 1, !alias.scope !856
  %i.ao = add nsw i8 %i.y, 1
  %i.ap = or i8 %i.ao, -128
  store i8 %i.ap, ptr %i.x, align 1, !alias.scope !856
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.m:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i, %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.be, ptr %0, align 8, !alias.scope !856
  store i64 %i.bh, ptr %i.bc, align 8, !alias.scope !856
  br label %common.resume.i.i

bb.n:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.b, align 8, !noalias !856, !nonnull !6, !noundef !6 ; 3 uses
  %i.as = load i64, ptr %i.az, align 8, !noalias !856, !noundef !6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 8 dereferenceable(16) %0, i64 %i.ba, i1 false)
  %i.au = add i64 %i.as, %i.ba                    ; 2 uses
  store i64 %i.au, ptr %i.az, align 8, !noalias !856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %.not.i.i23.i.i = icmp eq ptr %i.ar, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i23.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr i8, ptr %i.ar, i64 -8
  %.val.i.i24.i.i = load i64, ptr %i.av, align 8, !noalias !861, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.02.0.i.i25.i.i = phi i64 [ %.val.i.i24.i.i, %bb.o ], [ 0, %bb.n ]
  %i.aw = icmp eq i64 %i.au, %.sroa.02.0.i.i25.i.i
  %i.ax = zext i1 %i.aw to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.ax)
          to label %bb.q unwind label %bb.t, !noalias !856, !inline_history !846

bb.p:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 1, ptr %i.ak, align 8, !noalias !859
  %.sroa.4.0..sroa.06.0.10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 30, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx.i.i.i, align 8, !noalias !859
  store ptr %i.ay, ptr %i.b, align 8, !noalias !856
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 0, ptr %i.az, align 8, !noalias !856
  %i.ba = zext nneg i8 %i.ai to i64               ; 3 uses
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !862 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !862
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %i.ba)
          to label %bb.n unwind label %bb.t, !noalias !856

bb.q:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  %i.be = load ptr, ptr %i.b, align 8, !alias.scope !860, !noalias !856, !nonnull !6, !noundef !6 ; 3 uses
  %i.bf = load i64, ptr %i.az, align 8, !alias.scope !860, !noalias !856, !noundef !6 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  store i8 %i.w, ptr %i.bg, align 1, !noalias !861
  %i.bh = add i64 %i.bf, 1                        ; 2 uses
  %.not.i.i27.i.i = icmp sgt i64 %i.bd, -1
  br i1 %.not.i.i27.i.i, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, inttoptr (i64 16 to ptr)
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %bb.r
  %2 = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !856
  %.not.i.i.i.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !856
  %i.bj = getelementptr i8, ptr %i.bb, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !noalias !856, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i, label %bb.s, !prof !8

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc.i.i unwind label %bb.m, !noalias !856

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  %i.bk = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bi, ptr %i.bl, align 8, !noalias !856
  store i64 8, ptr %i.a, align 8, !noalias !856
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !noalias !856
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc28.i.i unwind label %bb.m, !noalias !856

.noexc28.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !856
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %.noexc28.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i, %bb.r, %bb.q
  store ptr %i.be, ptr %0, align 8, !alias.scope !856
  store i64 %i.bh, ptr %i.bc, align 8, !alias.scope !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !856
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.t:                                             ; preds = %bb.p, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.val20.i.i = load ptr, ptr %i.b, align 8, !noalias !856, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val20.i.i) #28
          to label %common.resume.i.i unwind label %bb.u, !noalias !856

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !856
  unreachable

_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !890
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  store i64 0, ptr %i.b, align 8, !alias.scope !892, !noalias !890
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !892, !noalias !890
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !893, !noalias !889
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !894

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !890
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !895, !noalias !890, !noundef !6 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !895, !noalias !890 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !896, !noalias !890 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !889, !nonnull !6
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !889 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !889
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !890
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !889
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !889
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !890
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.s, %i.n
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.s = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.r)
          to label %bb.d unwind label %bb.f, !noalias !890

bb.e:                                             ; preds = %.lr.ph7
  %i.t = add i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1  ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.n
  br i1 %i.u, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %i.s, %i.n
  br i1 %i.w, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.t, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.x) #28
          to label %bb.e unwind label %bb.g, !noalias !890

bb.g:                                             ; preds = %.lr.ph7
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !899
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !890
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #28
          to label %.body unwind label %bb.h, !noalias !890

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val, i64 %.val3) #28
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !890
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.ac = load i64, ptr %i.d, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.ac, 1
  ret { ptr, i64 } %i.ae

bb.j:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
end_hunk_2
