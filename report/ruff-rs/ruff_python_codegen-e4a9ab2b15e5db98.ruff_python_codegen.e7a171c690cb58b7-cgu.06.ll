Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_codegen-e4a9ab2b15e5db98.ruff_python_codegen.e7a171c690cb58b7-cgu.06?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [14 x i8] c"reentrant init", align 1
@1 = private unnamed_addr constant [78 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/cell/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"M\00\00\00\00\00\00\00,\01\00\00B\00\00\00" }>, align 8
@_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN = external local_unnamed_addr global { { { ptr } } }

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE15get_or_try_initNCINvB2_11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB2s_7Stylist11line_ending0E0zEB2u_(ptr nofree noundef nonnull returned captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !3, !noundef !4
  %.not = icmp eq i8 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef nonnull ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE8try_initNCINvB2_11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB2k_7Stylist11line_ending0E0zEB2m_(ptr noundef nonnull %0, ptr noundef nonnull align 8 %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE8try_initNCINvB2_11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB2k_7Stylist11line_ending0E0zEB2m_(ptr nofree noundef nonnull returned captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !noundef !4 ; 3 uses
  %.sroa.04.0.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.04.0.i.i = load ptr, ptr %.sroa.04.0.in.i.i, align 8, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 %.sroa.3.0.i.i
  %i.b = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !14, !nonnull !4, !noundef !4
  %i.c = tail call { i64, ptr } %i.b(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.04.0.i.i, ptr noundef nonnull readonly %i.a), !noalias !15, !inline_history !10 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.c, 1
  %i.g = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsjSXNr8pNfhj_19ruff_python_codegen(ptr noundef %i.f, ptr noundef nonnull readonly %.sroa.04.0.i.i) ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.g, %.sroa.3.0.i.i
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !13, !noundef !4
  switch i8 %i.i, label %_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit [
    i8 10, label %bb.c
    i8 13, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.j, %.sroa.3.0.i.i
  br i1 %i.k, label %bb.e, label %_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !13, !noundef !4
  %i.n = icmp eq i8 %i.m, 10
  %spec.select.i.i.i = select i1 %i.n, i8 2, i8 1
  br label %_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit

_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %i.o = phi i8 [ -1, %bb.a ], [ %spec.select.i.i.i, %bb.e ], [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.d ] ; 2 uses
  %i.p = load i8, ptr %0, align 1, !range !3, !noundef !4
  %.not.not = icmp eq i8 %i.p, -1
  br i1 %.not.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit
  %.not5.i.i = icmp eq i8 %i.o, -1
  %spec.select = select i1 %.not5.i.i, i8 0, i8 %i.o
  store i8 %spec.select, ptr %0, align 1, !alias.scope !16
  ret ptr %0

.critedge:                                        ; preds = %_RNCINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB5_8OnceCellNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE11get_or_initNCNvMNtCsjSXNr8pNfhj_19ruff_python_codegen7stylistNtB25_7Stylist11line_ending0E0B27_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsjSXNr8pNfhj_19ruff_python_codegen(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i8 -1, i8 3}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, i1 true, !"_RNvNtCs9BeaGo73rC4_16ruff_source_file8newlines12find_newline"}
!7 = distinct !{!7, !6, !"_RNvNtCs9BeaGo73rC4_16ruff_source_file8newlines12find_newline: argument 0"}
!8 = distinct !{!8, i1 true, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20CsjSXNr8pNfhj_19ruff_python_codegen"}
!9 = distinct !{!9, !8, !"_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20CsjSXNr8pNfhj_19ruff_python_codegen: argument 0"}
!10 = distinct !{null, null, null, null}
!11 = distinct !{!11, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE6insertCsjSXNr8pNfhj_19ruff_python_codegen"}
!12 = distinct !{!12, !11, !"_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines10LineEndingE6insertCsjSXNr8pNfhj_19ruff_python_codegen: argument 0"}
!13 = !{!7}
!14 = !{!9, !7}
!15 = !{!9}
!16 = !{!12}
end_hunk_0
