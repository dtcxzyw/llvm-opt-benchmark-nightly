Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.7?download=true
inline.NumInlined: 127
inline.NumDeleted: 95
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@1 = private unnamed_addr constant [77 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/vec/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\005\10\00\00\0D\00\00\00" }>, align 8
@3 = private unnamed_addr constant [106 x i8] c"Punctuated::push_punct: cannot push punctuation if Punctuated is empty or already has trailing punctuation", align 1
@4 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.98/src/punctuated.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\C3\00\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\C8\00\00\00%\00\00\00" }>, align 8
@7 = private unnamed_addr constant [87 x i8] c"Punctuated::push_value: cannot push value if Punctuated is missing trailing punctuation", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00\B3\00\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00F\01\00\00\19\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00A\01\00\00\19\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00w\01\00\00\19\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"a\00\00\00\00\00\00\00r\01\00\00\19\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCse52LceO7DeS_12typst_macros, ptr @_RNvXsx_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCse52LceO7DeS_12typst_macros }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCse52LceO7DeS_12typst_macros, ptr @_RNvXsy_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCse52LceO7DeS_12typst_macros }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCse52LceO7DeS_12typst_macros, ptr @_RNvXsx_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCse52LceO7DeS_12typst_macros, ptr @13, ptr @_RNvXsy_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCse52LceO7DeS_12typst_macros, ptr @14, ptr @_RNvXsA_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4attr13MetaNameValueNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCse52LceO7DeS_12typst_macros }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCse52LceO7DeS_12typst_macros, ptr @_RNvXsx_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCse52LceO7DeS_12typst_macros }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCse52LceO7DeS_12typst_macros, ptr @_RNvXsy_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCse52LceO7DeS_12typst_macros }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCse52LceO7DeS_12typst_macros, ptr @_RNvXsx_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCse52LceO7DeS_12typst_macros, ptr @16, ptr @_RNvXsy_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCse52LceO7DeS_12typst_macros, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCse52LceO7DeS_12typst_macros, ptr @17, ptr @_RNvXsA_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data7VariantNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCse52LceO7DeS_12typst_macros }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBY_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthBS_, ptr @_RNvXsx_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backBY_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backBS_ }>, align 8
@20 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBY_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthBS_, ptr @_RNvXsy_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenBY_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyBS_ }>, align 8
@21 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBY_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthBS_, ptr @_RNvXsx_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backBY_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byBS_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backBS_, ptr @19, ptr @_RNvXsy_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenBY_, ptr @_RNvYINtNtCsjMPGGl8VONr_3syn10punctuated11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyBS_, ptr @20, ptr @_RNvXsA_NtCsjMPGGl8VONr_3syn10punctuatedINtB5_11PrivateIterNtNtCse52LceO7DeS_12typst_macros4cast4CastNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxBY_ }>, align 8
@22 = private unnamed_addr constant [95 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/vec/spec_from_iter_nested.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"^\00\00\00\00\00\00\009\00\00\00\12\00\00\00" }>, align 8
@24 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-2.0.98/src/parse.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"\\\00\00\00\00\00\00\00 \05\00\00\09\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"\\\00\00\00\00\00\00\00\1F\05\00\00\14\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0EB1u_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0EB1O_.exit, label %.preheader10.i

.preheader10.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader10.i
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader10.i ] ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %.sroa.0.0.i
  %i.i = call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0B5_(ptr nonnull %i.a, ptr align 8 %i.h) #22
  %i.j = add nuw i64 %.sroa.0.0.i, 1              ; 5 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0EB1O_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  store ptr %0, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %.sroa.0.0.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4attr9AttributeEBF_(ptr align 8 %i.p)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.d
  %i.q = icmp ult i64 %i.j, %i.d
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.e, %.lr.ph.i
  %1 = phi i64 [ %i.x, %bb.e ], [ %i.s, %.lr.ph.i ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %1, ptr %i.l, align 8
  store i64 %i.t, ptr %i.m, align 8
  br label %2

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  br label %2

2:                                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp9, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMs_NtCs1xwejQucwHj_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardNtNtCsjMPGGl8VONr_3syn4attr9AttributeNtNtBL_5alloc6GlobalEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.b) #23
          to label %bb.i unwind label %bb.h

._crit_edge.i:                                    ; preds = %bb.g, %.preheader.i
  %i.r = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %i.ab, %bb.g ]
  store i64 %i.r, ptr %i.c, align 8
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0EB1O_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %i.s = phi i64 [ %i.ac, %bb.g ], [ %i.j, %.preheader.i ] ; 4 uses
  %i.t = phi i64 [ %i.ab, %bb.g ], [ %.sroa.0.0.i, %.preheader.i ] ; 4 uses
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw [256 x i8], ptr %i.u, i64 %i.s ; 3 uses
  %i.w = invoke zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0B5_(ptr nonnull %i.a, ptr align 8 %i.v) #22
          to label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0B1w_.exit.i unwind label %.loopexit.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0B1w_.exit.i: ; preds = %.lr.ph.i
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0B1w_.exit.i
  %i.x = add nuw i64 %i.s, 1                      ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4attr9AttributeEBF_(ptr align 8 %i.v)
          to label %bb.g unwind label %.loopexit.i

bb.f:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0B1w_.exit.i
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.y, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.z, ptr noundef nonnull align 8 dereferenceable(256) %i.v, i64 256, i1 false)
  %i.aa = add i64 %i.t, 1
  %3 = add nuw i64 %i.s, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.t, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ac = phi i64 [ %i.x, %bb.e ], [ %3, %bb.f ]  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.d
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

bb.h:                                             ; preds = %2
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %2
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4attr9AttributeE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros2ty2ty0E0EB1O_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0EB1t_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0EB1N_.exit, label %.preheader10.i

.preheader10.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader10.i
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader10.i ] ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [592 x i8], ptr %i.g, i64 %.sroa.0.0.i
  %i.i = call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0B5_(ptr nonnull %i.a, ptr align 8 %i.h) #22
  %i.j = add nuw i64 %.sroa.0.0.i, 1              ; 5 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0EB1N_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  store ptr %0, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.d, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw [592 x i8], ptr %i.o, i64 %.sroa.0.0.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4item8ImplItemEBF_(ptr align 8 %i.p)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.d
  %i.q = icmp ult i64 %i.j, %i.d
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.e, %.lr.ph.i
  %1 = phi i64 [ %i.x, %bb.e ], [ %i.s, %.lr.ph.i ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %1, ptr %i.l, align 8
  store i64 %i.t, ptr %i.m, align 8
  br label %2

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  br label %2

2:                                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp9, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvMs_NtCs1xwejQucwHj_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardNtNtCsjMPGGl8VONr_3syn4item8ImplItemNtNtBL_5alloc6GlobalEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.b) #23
          to label %bb.i unwind label %bb.h

._crit_edge.i:                                    ; preds = %bb.g, %.preheader.i
  %i.r = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %i.ab, %bb.g ]
  store i64 %i.r, ptr %i.c, align 8
  br label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0EB1N_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %i.s = phi i64 [ %i.ac, %bb.g ], [ %i.j, %.preheader.i ] ; 4 uses
  %i.t = phi i64 [ %i.ab, %bb.g ], [ %.sroa.0.0.i, %.preheader.i ] ; 4 uses
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw [592 x i8], ptr %i.u, i64 %i.s ; 3 uses
  %i.w = invoke zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0B5_(ptr nonnull %i.a, ptr align 8 %i.v) #22
          to label %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0B1v_.exit.i unwind label %.loopexit.i

_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0B1v_.exit.i: ; preds = %.lr.ph.i
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0B1v_.exit.i
  %i.x = add nuw i64 %i.s, 1                      ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsjMPGGl8VONr_3syn4item8ImplItemEBF_(ptr align 8 %i.v)
          to label %bb.g unwind label %.loopexit.i

bb.f:                                             ; preds = %_RNCINvMs_NtCs1xwejQucwHj_5alloc3vecINtB7_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0B1v_.exit.i
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw [592 x i8], ptr %i.y, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.z, ptr noundef nonnull align 8 dereferenceable(592) %i.v, i64 592, i1 false)
  %i.aa = add i64 %i.t, 1
  %3 = add nuw i64 %i.s, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.t, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ac = phi i64 [ %i.x, %bb.e ], [ %3, %bb.f ]  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.d
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

bb.h:                                             ; preds = %2
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %2
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsjMPGGl8VONr_3syn4item8ImplItemE10retain_mutNCINvB2_6retainNCNvNtCse52LceO7DeS_12typst_macros5scope5scopes1_0E0EB1N_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3mem11conjure_zstNCINvMsg_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtBN_6Client7expand1NvCse52LceO7DeS_12typst_macros11derive_castE0EB1R_() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3mem11conjure_zstNCINvMsg_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtBN_6Client7expand1NvCse52LceO7DeS_12typst_macros4castE0EB1R_() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3mem11conjure_zstNCINvMsg_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtBN_6Client7expand2NvCse52LceO7DeS_12typst_macros2tyE0EB1R_() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3mem11conjure_zstNCINvMsg_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtBN_6Client7expand2NvCse52LceO7DeS_12typst_macros4elemE0EB1R_() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3mem11conjure_zstNCINvMsg_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtBN_6Client7expand2NvCse52LceO7DeS_12typst_macros4funcE0EB1R_() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3mem11conjure_zstNCINvMsg_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtBN_6Client7expand2NvCse52LceO7DeS_12typst_macros4timeE0EB1R_() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core3mem11conjure_zstNCINvMsg_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtBN_6Client7expand2NvCse52LceO7DeS_12typst_macros5scopeE0EB1R_() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB19_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3M_2kw8keywordsE0EEB3O_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2D_2kw8keywordsE0ENtB2_12IntoIterator9into_iterB2F_(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr align 8 %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2n_2kw8keywordsE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.g)
          to label %bb.b unwind label %bb.q, !noalias !10

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !10
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !10
  %i.m = invoke { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscVvfRCjUNk2_11proc_macro2(i64 %i.l, i64 8, i64 24)
          to label %bb.e unwind label %bb.q, !noalias !10 ; 2 uses

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @23) #25
          to label %bb.o unwind label %bb.q, !noalias !10

bb.e:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  store i64 %i.n, ptr %i.f, align 8, !noalias !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !noalias !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.q, align 8, !noalias !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2n_2kw8keywordsE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2p_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.d)
          to label %bb.f unwind label %bb.k, !noalias !10

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !10
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !10 ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.n
  br i1 %i.w, label %bb.h, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3a_2kw8keywordsE0EEB3c_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.f, i64 0, i64 %i.v, i64 8, i64 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i.i unwind label %bb.k, !noalias !10

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i.i: ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !10
  %.pre.i.i = load ptr, ptr %i.p, align 8, !noalias !10
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3a_2kw8keywordsE0EEB3c_.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @2) #25
          to label %bb.j unwind label %bb.k, !noalias !10

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.e
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2A_2kw8keywordsE0EEB2C_(ptr nonnull align 8 %i.d) #23
          to label %.body.i.i unwind label %bb.l, !noalias !10

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !10
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3a_2kw8keywordsE0EEB3c_.exit.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i.i, %bb.g
  %i.y = phi ptr [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i.i ], [ %i.o, %bb.g ]
  %i.z = phi i64 [ %.pre.i.i.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCse52LceO7DeS_12typst_macros.exit_crit_edge.i.i.i.i ], [ 0, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !10
  store ptr %i.q, ptr %i.a, align 8, !noalias !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !10
  invoke void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2i_2kw8keywordsE0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_BW_INtBW_3VecNtNtBY_6string6StringE14extend_trustedB3_E0EB2k_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3R_2kw8keywordsE0EE9from_iterB3T_.exit unwind label %bb.m, !noalias !10

bb.m:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3a_2kw8keywordsE0EEB3c_.exit.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %lpad.thr_comm.i.i.i.i, %bb.k ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.f) #23
          to label %bb.p unwind label %bb.n, !noalias !10

bb.n:                                             ; preds = %bb.q, %.body.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !10
  unreachable

bb.o:                                             ; preds = %bb.d
  unreachable

bb.p:                                             ; preds = %bb.q, %.body.i.i
  %.pn5.i.i = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %.pn5.i.i

bb.q:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB2A_2kw8keywordsE0EEB2C_(ptr nonnull align 8 %i.g) #23
          to label %bb.p unwind label %bb.n, !noalias !10

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3R_2kw8keywordsE0EE9from_iterB3T_.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCsjMPGGl8VONr_3syn3lit6LitStrENCINvNtCse52LceO7DeS_12typst_macros4util18parse_string_arrayNtNtB3a_2kw8keywordsE0EEB3c_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1v_8adapters12GenericShuntINtNtB2F_3map3MapINtNtCsjMPGGl8VONr_3syn10punctuated4IterNtNtB3u_4data5FieldENvBI_11parse_fieldEINtNtB1x_6result6ResultzNtNtB3u_5error5ErrorEEEBK_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [920 x i8], align 8               ; 5 uses
  %i.c = alloca [920 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [920 x i8], align 8               ; 5 uses
  %i.g = alloca [920 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
