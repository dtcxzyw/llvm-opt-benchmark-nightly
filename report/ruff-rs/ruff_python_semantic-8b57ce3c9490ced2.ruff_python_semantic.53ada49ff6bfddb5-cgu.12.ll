Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.12?download=true
inline.NumInlined: 193
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [98 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/slice/sort/unstable/quicksort.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00o\00\00\00\0B\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"a\00\00\00\00\00\00\00\85\00\00\00\0B\00\00\00" }>, align 8
@3 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@4 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@5 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@6 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@7 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@8 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs7bpTdHNYxeX_20ruff_python_semantic = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs7bpTdHNYxeX_20ruff_python_semantic.46 = private unnamed_addr constant [6 x ptr] [ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SBT_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_BV_NtBV_13SemanticModel29resolve_qualified_import_name0s_0E0EBX_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 64
  %.val6 = load i32, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val7 = load i32, ptr %i.c, align 8, !noundef !3
  %i.d = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i14
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val4 = load i32, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %i.g = icmp ult i32 %.val4, %.val5
  br i1 %i.g, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.1.i17
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val = load i32, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.k = icmp ult i32 %.val, %.val3
  br i1 %i.k, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.l = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.l, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.n, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit
  br i1 %i.d, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit
  %i.o = or i64 %1, 1
  %i.p = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 1
  %i.s = xor i32 %i.r, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB17_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B19_NtB19_13SemanticModel29resolve_qualified_import_name0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i32 noundef %i.s, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName7reverseBy_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName7reverseBy_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B14_NtB14_13SemanticModel29resolve_qualified_import_name0s_0E0EB16_.exit.thread
  %i.t = lshr i64 %1, 1
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.v = xor i64 %.sroa.0.017.i.i, -1
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.x = getelementptr [40 x i8], ptr %i.u, i64 %i.v
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7bpTdHNYxeX_20ruff_python_semantic(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef 5)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.z = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.t
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBT_NtNtB8_3cmp10PartialOrd2ltEBZ_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val6 = load i8, ptr %i.b, align 1, !range !4, !noundef !3 ; 6 uses
  %.val7 = load i8, ptr %0, align 1, !range !4, !noundef !3 ; 4 uses
  %i.c = icmp ne i8 %.val6, 6
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i8 %.val6, -4
  %i.e = icmp samesign ugt i8 %.val6, 3
  %narrow.i.i.i = select i1 %i.e, i8 %i.d, i8 2   ; 2 uses
  %i.f = icmp ne i8 %.val7, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i8 %.val7, -4
  %i.h = icmp samesign ugt i8 %.val7, 3
  %narrow1.i.i.i = select i1 %i.h, i8 %i.g, i8 2  ; 2 uses
  %i.i = icmp eq i8 %narrow.i.i.i, 2
  %i.j = icmp eq i8 %narrow1.i.i.i, 2
  %or.cond.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i, label %.split, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit

.split:                                           ; preds = %bb.b
  %i.k = icmp samesign ult i8 %.val6, %.val7
  br i1 %i.k, label %.preheader, label %.preheader26

.preheader:                                       ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit, %.split
  %.not36 = icmp eq i64 %1, 2
  br i1 %.not36, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit, label %.lr.ph32

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit: ; preds = %bb.b
  %i.l = icmp samesign ult i8 %narrow.i.i.i, %narrow1.i.i.i
  br i1 %i.l, label %.preheader, label %.preheader26

.preheader26:                                     ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader26, %bb.c
  %.val5 = phi i8 [ %.val4, %bb.c ], [ %.val6, %.preheader26 ] ; 3 uses
  %.sroa.01.0.i28 = phi i64 [ %i.w, %bb.c ], [ 2, %.preheader26 ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i28
  %.val4 = load i8, ptr %i.m, align 1, !range !4, !noundef !3 ; 5 uses
  %i.n = icmp ne i8 %.val4, 6
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i8 %.val4, -4
  %i.p = icmp samesign ugt i8 %.val4, 3
  %narrow.i.i.i8 = select i1 %i.p, i8 %i.o, i8 2  ; 2 uses
  %i.q = add nsw i8 %.val5, -4
  %i.r = icmp samesign ugt i8 %.val5, 3
  %narrow1.i.i.i9 = select i1 %i.r, i8 %i.q, i8 2 ; 2 uses
  %i.s = icmp eq i8 %narrow.i.i.i8, 2
  %i.t = icmp eq i8 %narrow1.i.i.i9, 2
  %or.cond.i.i.i10 = and i1 %i.s, %i.t
  br i1 %or.cond.i.i.i10, label %.split20, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit12

.split20:                                         ; preds = %.lr.ph
  %i.u = icmp samesign ult i8 %.val4, %.val5
  br i1 %i.u, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit, label %bb.c

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit12: ; preds = %.lr.ph
  %i.v = icmp samesign ult i8 %narrow.i.i.i8, %narrow1.i.i.i9
  br i1 %i.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit, label %bb.c

bb.c:                                             ; preds = %.split20, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit12
  %i.w = add nuw nsw i64 %.sroa.01.0.i28, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %1
  br i1 %exitcond.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit, label %.lr.ph

.lr.ph32:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i8 [ %.val, %bb.d ], [ %.val6, %.preheader ] ; 3 uses
  %.sroa.01.1.i31 = phi i64 [ %i.ah, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.1.i31
  %.val = load i8, ptr %i.x, align 1, !range !4, !noundef !3 ; 5 uses
  %i.y = icmp ne i8 %.val, 6
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nsw i8 %.val, -4
  %i.aa = icmp samesign ugt i8 %.val, 3
  %narrow.i.i.i13 = select i1 %i.aa, i8 %i.z, i8 2 ; 2 uses
  %i.ab = add nsw i8 %.val3, -4
  %i.ac = icmp samesign ugt i8 %.val3, 3
  %narrow1.i.i.i14 = select i1 %i.ac, i8 %i.ab, i8 2 ; 2 uses
  %i.ad = icmp eq i8 %narrow.i.i.i13, 2
  %i.ae = icmp eq i8 %narrow1.i.i.i14, 2
  %or.cond.i.i.i15 = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i.i15, label %.split21, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit17

.split21:                                         ; preds = %.lr.ph32
  %i.af = icmp samesign ult i8 %.val, %.val3
  br i1 %i.af, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit17: ; preds = %.lr.ph32
  %i.ag = icmp samesign ult i8 %narrow.i.i.i13, %narrow1.i.i.i14
  br i1 %i.ag, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit

bb.d:                                             ; preds = %.split21, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit17
  %i.ah = add nuw nsw i64 %.sroa.01.1.i31, 1      ; 2 uses
  %exitcond40.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond40.not, label %iter.check, label %.lr.ph32

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit: ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit12, %.split20, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit17, %.split21, %.preheader26, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader26 ], [ true, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit17 ], [ true, %.split21 ], [ false, %.split20 ], [ false, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit12 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader26 ], [ %.sroa.01.1.i31, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit17 ], [ %.sroa.01.1.i31, %.split21 ], [ %.sroa.01.0.i28, %.split20 ], [ %.sroa.01.0.i28, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit12 ] ; 2 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit
  br i1 %.sroa.3.0.i, label %iter.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit
  %i.ak = or i64 %1, 1
  %i.al = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 1
  %i.ao = xor i32 %i.an, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) null, i32 noundef %i.ao, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit: ; preds = %bb.c, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.e, %bb.f
  ret void

iter.check:                                       ; preds = %bb.d, %bb.e
  %i.ap = lshr i64 %1, 1                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp samesign ult i64 %1, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ap, 4611686018427387888     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = xor i64 %index, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.ar
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !alias.scope !18, !noalias !17
  %i.au = getelementptr i8, ptr %i.at, i64 -15    ; 2 uses
  %wide.load50 = load <16 x i8>, ptr %i.au, align 1, !alias.scope !19, !noalias !16
  %reverse = shufflevector <16 x i8> %wide.load50, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.as, align 1, !alias.scope !18, !noalias !17
  %reverse51 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse51, ptr %i.au, align 1, !alias.scope !19, !noalias !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.aw = and i64 %1, 24
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = xor i64 %index53, -1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %index53 ; 2 uses
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ax
  %wide.load54 = load <4 x i8>, ptr %i.ay, align 1, !alias.scope !18, !noalias !17
  %i.ba = getelementptr i8, ptr %i.az, i64 -3     ; 2 uses
  %wide.load55 = load <4 x i8>, ptr %i.ba, align 1, !alias.scope !19, !noalias !16
  %reverse56 = shufflevector <4 x i8> %wide.load55, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse56, ptr %i.ay, align 1, !alias.scope !18, !noalias !17
  %reverse57 = shufflevector <4 x i8> %wide.load54, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse57, ptr %i.ba, align 1, !alias.scope !19, !noalias !16
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next58, %n.vec52
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ap, %n.vec52
  br i1 %cmp.n59, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec52, %vec.epilog.middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i.preheader ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.016.i.i, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.be = getelementptr i8, ptr %i.aq, i64 %i.bc  ; 2 uses
  %i.bf = load i8, ptr %i.bd, align 1, !range !4, !alias.scope !18, !noalias !17, !noundef !3
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !19, !noalias !16
  store i8 %i.bg, ptr %i.bd, align 1, !alias.scope !18, !noalias !17
  store i8 %i.bf, ptr %i.be, align 1, !alias.scope !19, !noalias !16
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseBA_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutBA_.exit11.i.i, !llvm.loop !15
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB14_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B16_NtB16_13SemanticModel29resolve_qualified_import_name0s_0E0EB18_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 28823037615171175) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SBZ_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B11_NtB11_13SemanticModel29resolve_qualified_import_name0s_0E0EB13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB14_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B16_NtB16_13SemanticModel29resolve_qualified_import_name0s_0E0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB14_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B16_NtB16_13SemanticModel29resolve_qualified_import_name0s_0E0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB14_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B16_NtB16_13SemanticModel29resolve_qualified_import_name0s_0E0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SBZ_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B11_NtB11_13SemanticModel29resolve_qualified_import_name0s_0E0EB13_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SBZ_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B11_NtB11_13SemanticModel29resolve_qualified_import_name0s_0E0EB13_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 24
  %.sroa.0.0.val13 = load i32, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 24
  %.sroa.04.0.val14 = load i32, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %i.p = icmp ult i32 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 24
  %.sroa.08.0.val12 = load i32, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.r = icmp ult i32 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i32 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i8, ptr %.sroa.0.0, align 1, !range !4, !noundef !3 ; 5 uses
  %.sroa.04.0.val14 = load i8, ptr %.sroa.04.0, align 1, !range !4, !noundef !3 ; 5 uses
  %i.n = icmp ne i8 %.sroa.0.0.val13, 6
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i8 %.sroa.0.0.val13, -4
  %i.p = icmp samesign ugt i8 %.sroa.0.0.val13, 3
  %narrow.i.i.i = select i1 %i.p, i8 %i.o, i8 2   ; 3 uses
  %i.q = icmp ne i8 %.sroa.04.0.val14, 6
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i8 %.sroa.04.0.val14, -4
  %i.s = icmp samesign ugt i8 %.sroa.04.0.val14, 3
  %narrow1.i.i.i = select i1 %i.s, i8 %i.r, i8 2  ; 3 uses
  %i.t = icmp eq i8 %narrow.i.i.i, 2              ; 2 uses
  %i.u = icmp eq i8 %narrow1.i.i.i, 2             ; 2 uses
  %or.cond.i.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i8 %narrow.i.i.i, %narrow1.i.i.i
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp samesign ult i8 %.sroa.0.0.val13, %.sroa.04.0.val14
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i = phi i1 [ %i.w, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %.sroa.08.0.val12 = load i8, ptr %.sroa.08.0, align 1, !range !4, !noundef !3 ; 5 uses
  %i.x = icmp ne i8 %.sroa.08.0.val12, 6
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i8 %.sroa.08.0.val12, -4
  %i.z = icmp samesign ugt i8 %.sroa.08.0.val12, 3
  %narrow1.i.i.i16 = select i1 %i.z, i8 %i.y, i8 2 ; 3 uses
  %i.aa = icmp eq i8 %narrow1.i.i.i16, 2          ; 2 uses
  %or.cond.i.i.i17 = and i1 %i.t, %i.aa
  br i1 %or.cond.i.i.i17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit
  %i.ab = icmp samesign ult i8 %narrow.i.i.i, %narrow1.i.i.i16
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit19

bb.g:                                             ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit
  %i.ac = icmp samesign ult i8 %.sroa.0.0.val13, %.sroa.08.0.val12
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit19

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit19: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i18 = phi i1 [ %i.ac, %bb.g ], [ %i.ab, %bb.f ]
  %i.ad = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i18
  br i1 %i.ad, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB15_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit19
end_hunk_0
