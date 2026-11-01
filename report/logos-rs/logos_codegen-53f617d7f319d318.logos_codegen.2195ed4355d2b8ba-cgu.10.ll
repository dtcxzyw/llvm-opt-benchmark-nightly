Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.10?download=true
inline.NumInlined: 102
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [27 x i8] c"logos-codegen/src/error.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1A\00\00\00\00\00\00\00\11\00\00\00\1E\00\00\00" }>, align 8
@2 = private unnamed_addr constant [78 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/mod.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"M\00\00\00\00\00\00\00\F1\03\00\00\1C\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"M\00\00\00\00\00\00\00\F2\03\00\00\1C\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"M\00\00\00\00\00\00\00\F6\03\00\00 \00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"M\00\00\00\00\00\00\00\F6\03\00\00+\00\00\00" }>, align 8
@7 = private unnamed_addr constant [2 x i8] c"fn", align 1
@8 = private unnamed_addr constant [28 x i8] c"_logos_derive_compile_errors", align 1
@9 = private unnamed_addr constant [13 x i8] c"unimplemented", align 1
@10 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsC_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen, ptr @10 }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsC_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_2ty9BareFnArgNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen, ptr @12 }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsC_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4data7VariantNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen, ptr @14 }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsC_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_4path15GenericArgumentNtNtB7_5token5CommaENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen, ptr @16 }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsB_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsC_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsD_NtCshx33xqnyVJN_3syn10punctuatedINtB5_14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYINtNtCshx33xqnyVJN_3syn10punctuated14PrivateIterMutNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2SM5xCHwwDm_13logos_codegen, ptr @18 }>, align 8
@20 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@21 = private unnamed_addr constant [27 x i8] c"chunk size must be non-zero", align 1
@22 = private unnamed_addr constant [10 x i8] c"MatchError", align 1
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaKDqXqZWSq0_14regex_automata4util6search14MatchErrorKindENtB6_5Debug3fmtB1b_ }>, align 8
@24 = private unnamed_addr constant [13 x i8] c"compile_error", align 1

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errNtNtCsexYYUdYSQU6_5alloc6string6StringEB5_(ptr returned align 8 %0, ptr nofree readonly align 8 captures(none) %1, i32 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoINtNtBC_6borrow3CoweEE4intoCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull align 8 @1) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %2, ptr %i.d, align 8
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5error12SpannedErrorE4pushBJ_(ptr align 8 %0, ptr nonnull align 8 %i.c) #25
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden align 8 ptr @_RINvMNtCs2SM5xCHwwDm_13logos_codegen5errorNtB3_6Errors3errReEB5_(ptr returned align 8 %0, ptr %1, i64 %2, i32 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4intoCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %1, i64 %2, ptr nonnull align 8 @1) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %3, ptr %i.c, align 8
  call void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5error12SpannedErrorE4pushBJ_(ptr align 8 %0, ptr nonnull align 8 %i.b) #25
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core5sliceSTRAbj100_RjE20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB19_9Generator11render_luts0EB1b_(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 21
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTRAbj100_RjENCINvMB6_SBT_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB1K_9Generator11render_luts0E0EB1M_(ptr align 8 %0, i64 %1, ptr nonnull align 8 %i.b) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRAbj100_RjENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvMNtCs2SM5xCHwwDm_13logos_codegen9generatorNtB2e_9Generator11render_luts0E0EB2g_(ptr align 8 %0, i64 %1, i64 1, ptr nonnull align 8 %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB3_5Input3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 4), (8, 41)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsJ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_refCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %1) #25 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.c, ptr %i.g, align 8
  store i32 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB3_5Input3neweECs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 4), (8, 41)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs_NtCskKLDkoKarTP_4core3streINtNtB6_7convert5AsRefShE6as_refCs2SM5xCHwwDm_13logos_codegen(ptr %1, i64 %2) #25 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.c, ptr %i.g, align 8
  store i32 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB21_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0ENCB36_s_0EIB1X_NtB2F_15GenericArgumentEE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4t_uNCINvNvB5t_8for_each4callQB4y_NCB36_s0_0E0E0EB3c_(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %2 = load <2 x ptr>, ptr %i.d, align 8
  store <2 x ptr> %2, ptr %i.c, align 16
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i: ; preds = %bb.d, %bb.b
  %i.f = load ptr, ptr %i.c, align 16
  %i.g = load ptr, ptr %1, align 8
  %i.h = invoke { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_4path15GenericArgumentEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.f, ptr align 8 %i.g)
          to label %.noexc.i.i unwind label %bb.c ; 2 uses

.noexc.i.i:                                       ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !4, !nonnull !4
  %i.m = invoke align 8 ptr %i.l(ptr %i.i) #25
          to label %_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i unwind label %bb.c, !inline_history !5 ; 2 uses

bb.c:                                             ; preds = %bb.d, %.noexc.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c) #27
          to label %.body.thread unwind label %bb.e

_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i: ; preds = %.noexc.i.i
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i
  invoke void @_RNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0B7_(ptr nonnull %i.a, ptr nonnull align 8 %i.m) #25
          to label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i unwind label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i: ; preds = %_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.c)
          to label %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB29_4path15GenericArgumentEuNCINvNvB1j_8for_each4callQB2L_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0E0B3T_.exit unwind label %.body

_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB29_4path15GenericArgumentEuNCINvNvB1j_8for_each4callQB2L_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0E0B3T_.exit: ; preds = %_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB29_4path15GenericArgumentEuNCINvNvB1j_8for_each4callQB2L_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0E0B3T_.exit, %bb.a
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %.not7 = icmp eq ptr %i.p, null
  br i1 %.not7, label %bb.h, label %bb.g

.body.thread30:                                   ; preds = %_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i13, %bb.g
  %.sroa.04.0.ph = phi i1 [ true, %bb.g ], [ false, %_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i13 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread26

.body:                                            ; preds = %_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB1w_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0ENCB2B_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4N_13FlattenCompatppE9iter_fold7flattenIB1s_NtB2a_15GenericArgumentEuNCINvNvXsi_B4N_B50_B3Y_4fold7flattenB5H_uNCINvNvB3Y_8for_each4callQB5M_NCB2B_s0_0E0E0E0EB2H_(ptr nonnull %i.p, ptr align 8 %i.r, ptr nonnull %i.a)
          to label %bb.h unwind label %.body.thread30

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not8 = icmp eq ptr %i.t, null
  br i1 %.not8, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %4 = load <2 x ptr>, ptr %i.s, align 8
  store <2 x ptr> %4, ptr %i.b, align 16
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i9

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i9: ; preds = %bb.k, %bb.i
  %i.u = load ptr, ptr %i.b, align 16
  %i.v = load ptr, ptr %3, align 8
  %i.w = invoke { ptr, ptr } @_RNvXs0_NtCshx33xqnyVJN_3syn5dropsINtB5_6NoDropDINtNtB7_10punctuated12IterMutTraitNtNtB7_4path15GenericArgumentEp4ItemQB1h_EL_ENtNtNtCskKLDkoKarTP_4core3ops5deref8DerefMut9deref_mutCs2SM5xCHwwDm_13logos_codegen(ptr %i.u, ptr align 8 %i.v)
          to label %.noexc.i.i10 unwind label %bb.j ; 2 uses

.noexc.i.i10:                                     ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i9
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !4, !nonnull !4
  %i.ab = invoke align 8 ptr %i.aa(ptr %i.x) #25
          to label %_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i11 unwind label %bb.j, !inline_history !5 ; 2 uses

bb.j:                                             ; preds = %bb.k, %.noexc.i.i10, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i9
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b) #27
          to label %.body.thread26.thread unwind label %bb.l

_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i11: ; preds = %.noexc.i.i10
  %.not.i.i12 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i12, label %_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i13, label %bb.k

bb.k:                                             ; preds = %_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i11
  invoke void @_RNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0B7_(ptr nonnull %i.a, ptr nonnull align 8 %i.ab) #25
          to label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callQNtNtCshx33xqnyVJN_3syn4path15GenericArgumentNCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0INtB7_5FnMutTuB1O_EE8call_mutB2F_.exit.i.i9 unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i13: ; preds = %_RNvXsy_NtCshx33xqnyVJN_3syn10punctuatedINtB5_7IterMutNtNtB7_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen.exit.i.i11
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.b)
          to label %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB29_4path15GenericArgumentEuNCINvNvB1j_8for_each4callQB2L_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0E0B3T_.exit18 unwind label %.body.thread30

_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB29_4path15GenericArgumentEuNCINvNvB1j_8for_each4callQB2L_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0E0B3T_.exit18: ; preds = %_RINvYINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB8_4path15GenericArgumentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvB1e_8for_each4callQBK_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0EB2R_.exit.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvNvXsi_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB29_4path15GenericArgumentEuNCINvNvB1j_8for_each4callQB2L_NCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetimes0_0E0E0B3T_.exit18, %bb.h
  ret void

.body.thread26:                                   ; preds = %.body.thread30, %.body.thread
  %eh.lpad-body24 = phi { ptr, i32 } [ %eh.lpad-body25, %.body.thread ], [ %lpad.thr_comm, %.body.thread30 ] ; 2 uses
  %.sroa.04.0.lpad-body22 = phi i1 [ true, %.body.thread ], [ %.sroa.04.0.ph, %.body.thread30 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp ne ptr %i.af, null
  %or.cond = and i1 %.sroa.04.0.lpad-body22, %i.ag
  br i1 %or.cond, label %bb.o, label %.body.thread26.thread

.body.thread:                                     ; preds = %bb.c, %.body
  %eh.lpad-body25 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.n, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtBG_3map3MapINtNtBG_10filter_map9FilterMapINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtB20_4path11PathSegmentENCNvNtNtCs2SM5xCHwwDm_13logos_codegen6parser11type_params16replace_lifetime0ENCB35_s_0EEEB3b_(ptr align 8 %0) #27
          to label %.body.thread26 unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %.body.thread
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body.thread26.thread:                            ; preds = %bb.j, %bb.o, %.body.thread26
  %eh.lpad-body2437 = phi { ptr, i32 } [ %eh.lpad-body24, %.body.thread26 ], [ %eh.lpad-body24, %bb.o ], [ %i.ac, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body2437

bb.o:                                             ; preds = %.body.thread26
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshx33xqnyVJN_3syn10punctuated7IterMutNtNtBG_4path15GenericArgumentEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %i.ae) #27
          to label %.body.thread26.thread unwind label %bb.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define i24 @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IterINtNtNtB8_3ops5range14RangeInclusivehEEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i24 @_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterINtNtNtBe_3ops5range14RangeInclusivehEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtB1u_8function6FnOnceTQB5_EE9call_onceCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %0) #25 ; 2 uses
  %.sroa.05.0.extract.trunc = trunc i24 %i.b to i8 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i24 %i.b, 8
  %.sroa.2.0.extract.trunc = trunc nuw i24 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %.not6 = icmp eq i8 %.sroa.05.0.extract.trunc, 2
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d, %bb.a
  %.sroa.3.0 = phi i16 [ undef, %bb.a ], [ %.sroa.2.0.extract.trunc, %bb.d ], [ %.sroa.2.0.extract.trunc, %bb.b ]
  %.sroa.0.0 = phi i8 [ 2, %bb.a ], [ 2, %bb.d ], [ %.sroa.05.0.extract.trunc, %bb.b ]
  %.sroa.3.0.insert.ext = zext i16 %.sroa.3.0 to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapINtNtNtB7_3ops5range14RangeInclusivehEECs2SM5xCHwwDm_13logos_codegen(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB4_3ops5range14RangeInclusivehE12split_at_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr %0, i64 %1, i64 %4, ptr nonnull align 8 @3) #25
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtNtB4_3ops5range14RangeInclusivehE12split_at_mutCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr %2, i64 %3, i64 %4, ptr nonnull align 8 @4) #25
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.09 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.0.09, %i.f
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = xor i64 %.sroa.0.09, -1
  %i.k = add i64 %4, %i.j                         ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.f, i64 %i.f, ptr nonnull align 8 @5) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [3 x i8], ptr %i.d, i64 %.sroa.0.09 ; 2 uses
  %i.n = getelementptr inbounds nuw [3 x i8], ptr %i.g, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) %i.m, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %i.n, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.n, ptr noundef nonnull align 1 dereferenceable(3) %i.a, i64 3, i1 false)
  %i.o = add nuw i64 %.sroa.0.09, 1               ; 2 uses
  %exitcond13.not = icmp eq i64 %i.o, %4
  br i1 %exitcond13.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.k, i64 %i.i, ptr nonnull align 8 @6) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorEBS_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError12split_at_mutBy_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr align 8 %0, i64 %1, i64 %4, ptr nonnull align 8 @3) #25
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError12split_at_mutBy_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, i64 %3, i64 %4, ptr nonnull align 8 @4) #25
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.09 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.0.09, %i.f
  br i1 %exitcond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = xor i64 %.sroa.0.09, -1
  %i.k = add i64 %4, %i.j                         ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.f, i64 %i.f, ptr nonnull align 8 @5) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.09 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.o = add nuw i64 %.sroa.0.09, 1               ; 2 uses
  %exitcond13.not = icmp eq i64 %i.o, %4
  br i1 %exitcond13.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.k, i64 %i.i, ptr nonnull align 8 @6) #29
  unreachable
}

end_hunk_0
