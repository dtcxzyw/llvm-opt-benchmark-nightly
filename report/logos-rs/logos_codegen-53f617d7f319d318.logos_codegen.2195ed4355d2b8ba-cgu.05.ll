Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.05?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.9/src/dfa/regex.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00i\01\00\00\1B\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"j\00\00\00\00\00\00\00j\01\00\00D\00\00\00" }>, align 8
@3 = private unnamed_addr constant [75 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/slice.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"J\00\00\00\00\00\00\00\B0\01\00\00\15\00\00\00" }>, align 8
@5 = private unnamed_addr constant [2 x i8] c"  ", align 1
@6 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@7 = private unnamed_addr constant [31 x i8] c"logos-codegen/src/graph/mod.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00n\02\00\00&\00\00\00" }>, align 8
@9 = private unnamed_addr constant [64 x i8] c"=Logos encountered an error compiling the DFA for this regex: \C0\00", align 1
@10 = private unnamed_addr constant [64 x i8] c"=Logos encountered an error compiling the NFA for this regex: \C0\00", align 1
@11 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1
@12 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@13 = private unnamed_addr constant [11 x i8] c"\02  \C0\04 => \C0\00", align 1
@14 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaKDqXqZWSq0_14regex_automata4util6search10MatchErrorEBH_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs19_NtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB6_10MatchErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2SM5xCHwwDm_13logos_codegen }>, align 8
@16 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@17 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@18 = private unnamed_addr constant [8 x i8] c"\05State\C0\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00y\00\00\00\1B\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\9C\00\00\00$\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\9D\00\00\00\1A\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\9E\00\00\00\1B\00\00\00" }>, align 8
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\D2\00\00\00\10\00\00\00" }>, align 8
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\A1\02\00\00.\00\00\00" }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\C1\01\00\00 \00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00K\02\00\00/\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00R\02\00\00=\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\004\02\00\00/\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\11\02\00\00!\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\04\02\00\00!\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\C8\01\00\00/\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\E6\01\00\00 \00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\EA\01\00\00\1D\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\D8\01\00\00,\00\00\00" }>, align 8
@35 = private unnamed_addr constant [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\9F\01\00\00\13\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\8E\01\00\00\13\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00p\01\00\00\15\00\00\00" }>, align 8
@39 = private unnamed_addr constant [10 x i8] c"StateData(", align 1
@40 = private unnamed_addr constant [13 x i8] c"\07accept(\C0\02) \00", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\AC\00\00\00\0D\00\00\00" }>, align 8
@42 = private unnamed_addr constant [12 x i8] c"\06early(\C0\02) \00", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\AF\00\00\00\0D\00\00\00" }>, align 8
@44 = private unnamed_addr constant [1 x i8] c")", align 1
@45 = private unnamed_addr constant [3 x i8] c" {\0A", align 1
@46 = private unnamed_addr constant [14 x i8] c"\09  EOI => \C0\01\0A\00", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\B8\00\00\00\11\00\00\00" }>, align 8
@48 = private unnamed_addr constant [1 x i8] c"}", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\BA\00\00\00\0D\00\00\00" }>, align 8
@50 = private unnamed_addr constant [13 x i8] c"\02  \C0\04 => \C0\01\0A\00", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\B5\00\00\00\11\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\B3\00\00\00\0D\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\B1\00\00\00\09\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\AA\00\00\00\09\00\00\00" }>, align 8
@55 = private unnamed_addr constant [7 x i8] c"\C0\03..=\C0\00", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\09\01\00\00\11\00\00\00" }>, align 8
@57 = private unnamed_addr constant [1 x i8] c"|", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\15\01\00\00\15\00\00\00" }>, align 8
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\13\01\00\00\15\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\1E\00\00\00\00\00\00\00\07\01\00\00\11\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_strCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_charCs2SM5xCHwwDm_13logos_codegen, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs8UJyeeIGyGC_12regex_syntax }>, align 8
@62 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@63 = private unnamed_addr constant [76 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/string.rs\00", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @63, [16 x i8] c"K\00\00\00\00\00\00\00\9A\0B\00\00\0E\00\00\00" }>, align 8
@65 = private unnamed_addr constant [8 x i8] c"\05state\C0\00", align 1
@66 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.9/src/dfa/dense.rs\00", align 1
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @66, [16 x i8] c"j\00\00\00\00\00\00\00f\0C\00\00\09\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @66, [16 x i8] c"j\00\00\00\00\00\00\00}\0C\00\00\09\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State16binary_search_byNCNvB2_13binary_search0EBz_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.a, align 8
  switch i64 %1, label %.lr.ph [
    i64 0, label %bb.b
    i64 1, label %._crit_edge
  ]

bb.b:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  %.sroa.4.0 = phi i64 [ %i.q, %bb.c ], [ %1, %bb.a ], [ %.sroa.05.0.lcssa, %._crit_edge ]
  %.sroa.0.0 = phi i64 [ 1, %bb.c ], [ 1, %bb.a ], [ 0, %._crit_edge ]
  %i.b = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.c = insertvalue { i64, i64 } %i.b, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.c

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.05.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.lcssa
  %i.e = call i8 @_RNCNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_search0BA_(ptr nonnull align 8 %i.a, ptr align 8 %i.d) #19 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.013 = phi i64 [ %i.m, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.012 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.013, 1                ; 2 uses
  %i.h = add i64 %i.g, %.sroa.05.012              ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = call i8 @_RNCNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_search0BA_(ptr nonnull align 8 %i.a, ptr align 8 %i.i) #19
  %i.k = icmp eq i8 %i.j, 1
  %i.l = select i1 %i.k, i64 %.sroa.05.012, i64 %i.h, !unpredictable !4 ; 2 uses
  %i.m = sub i64 %.sroa.01.013, %i.g              ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.o = icmp eq i8 %i.e, -1
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %.sroa.05.0.lcssa, %i.p
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBy_5StateE20sort_unstable_by_keyB1j_NCNvMs1_By_NtBy_9StateData16set_normal_edgess_0EBA_(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBW_5StateENCINvMB6_SBT_20sort_unstable_by_keyB1H_NCNvMs1_BW_NtBW_9StateData16set_normal_edgess_0E0EBY_(ptr align 8 %0, i64 %1, ptr nonnull align 8 %i.b) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1p_5StateENCINvMB8_SB1m_20sort_unstable_by_keyB2a_NCNvMs1_B1p_NtB1p_9StateData16set_normal_edgess_0E0EB1r_(ptr align 8 %0, i64 %1, i64 1, ptr nonnull align 8 %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RINvMs1_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5regexNtB6_5Regex8is_matchRNtNtCsexYYUdYSQU6_5alloc6string6StringECs2SM5xCHwwDm_13logos_codegen(ptr align 16 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  call void @_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoNtNtNtCsaKDqXqZWSq0_14regex_automata4util6search5InputE4intoCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr align 8 %1, ptr nonnull align 8 @1) #19
  call void @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB2_5Input8earliestCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d, i1 zeroext true) #19
  %i.f = call align 16 ptr @_RNvMs3_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5regexNtB5_5Regex7forwardB9_(ptr align 16 %0)
  call void @_RNvYINtNtNtCsaKDqXqZWSq0_14regex_automata3dfa5dense3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENtNtB7_9automaton9Automaton14try_search_fwdB9_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 16 %i.f, ptr nonnull align 8 %i.e) #19
  call void @_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultINtNtB5_6option6OptionNtNtNtCsaKDqXqZWSq0_14regex_automata4util6search9HalfMatchENtB16_10MatchErrorE3mapbNCINvMs1_NtNtB1a_3dfa5regexNtB2y_5Regex8is_matchRNtNtCsexYYUdYSQU6_5alloc6string6StringE0ECs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load i8, ptr %i.c, align 8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCsaKDqXqZWSq0_14regex_automata4util6search10MatchErrorE6unwrapCs2SM5xCHwwDm_13logos_codegen.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.a, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr nonnull @16, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @15, ptr nonnull align 8 @2) #21
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaKDqXqZWSq0_14regex_automata4util6search10MatchErrorEBH_(ptr nonnull align 8 %i.a) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCsaKDqXqZWSq0_14regex_automata4util6search10MatchErrorE6unwrapCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = trunc nuw i8 %i.n to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMs1_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5regexNtB6_5Regex9find_iterReECs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr align 16 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  call void @_RNvXs0_NtNtCsaKDqXqZWSq0_14regex_automata4util6searchNtB5_5InputINtNtCskKLDkoKarTP_4core7convert4FromReE4fromCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr %2, i64 %3)
  call void @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util4iterNtB2_8Searcher3new(ptr nonnull sret([64 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = invoke { i64, ptr } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8UJyeeIGyGC_12regex_syntax(i64 %2, i64 8, i64 96)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataE11extend_withBJ_(ptr nonnull align 8 %i.b, i64 %2, ptr nonnull align 8 %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataEEB1c_(ptr nonnull align 8 %i.b) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %.pn5

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataEBF_(ptr align 8 %1) #22
          to label %bb.f unwind label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBN_5StateENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = tail call { i64, ptr } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8UJyeeIGyGC_12regex_syntax(i64 %2, i64 8, i64 32) #19 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.m = phi i64 [ %.pr, %bb.h ], [ %i.f, %bb.a ]
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = invoke { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1A_5StateEEENtNtNtB8_6traits8iterator8Iterator4nextB1C_(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.c, %bb.h, %bb.a
  store i64 %2, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB20_5StateENtNtBM_5alloc6GlobalEEB22_(ptr nonnull align 8 %i.c) #22
          to label %bb.j unwind label %bb.i
end_hunk_0
begin_hunk_1_@_RNCNvXs7_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB7_5GraphNtNtCskKLDkoKarTP_4core3fmt7Display3fmt0B9_:bb.a
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.af = invoke { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKjb_Kj2_ECs2SM5xCHwwDm_13logos_codegen(ptr nonnull @13, ptr nonnull align 8 %i.c)
          to label %bb.p unwind label %bb.l       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = extractvalue { ptr, ptr } %i.af, 0
  %i.ah = extractvalue { ptr, ptr } %i.af, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.ag, ptr %i.ah)
          to label %bb.q unwind label %bb.l

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.i)
          to label %bb.r unwind label %bb.c

bb.r:                                             ; preds = %bb.q
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.n)
  ret void

bb.s:                                             ; preds = %bb.l, %bb.i, %bb.b
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.t:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNcNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State0B5_(i64 returned %0) unnamed_addr #4 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError12split_at_mutBy_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @14, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError13sort_unstableBy_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 21
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYBT_NtNtB8_3cmp10PartialOrd2ltEBX_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #20
  br label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr align 8 %0, i64 %1, i64 1, ptr nonnull %i.a)
  br label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError14swap_uncheckedBy_(ptr nofree align 8 captures(none) %0, i64 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError22split_at_mut_uncheckedBy_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError4iterBy_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorE3newBS_(ptr align 8 %0, i64 %1) #19
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphError7reverseBy_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.c = sub nsw i64 0, %i.a
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  tail call void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorEBS_(ptr align 8 %0, i64 %i.a, ptr align 8 %i.d, i64 %i.a, i64 %i.a) #19
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph11Comparisons4iterBy_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph11ComparisonsE3newBS_(ptr align 8 %0, i64 %1) #19
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph11Comparisons8last_mutBy_(ptr nofree readnone align 8 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = getelementptr [32 x i8], ptr %0, i64 %1
  %i.b = getelementptr i8, ptr %i.a, i64 -32
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State12split_at_mutBy_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @14, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_searchBy_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  switch i64 %1, label %.lr.ph.i [
    i64 0, label %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State16binary_search_byNCNvB2_13binary_search0EBz_.exit
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %i.c = call i8 @_RNCNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_search0BA_(ptr nonnull align 8 %i.a, ptr align 8 %i.b) #19 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State16binary_search_byNCNvB2_13binary_search0EBz_.exit, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.013.i = phi i64 [ %i.k, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.012.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.sroa.01.013.i, 1              ; 2 uses
  %i.f = add i64 %i.e, %.sroa.05.012.i            ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = call i8 @_RNCNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_search0BA_(ptr nonnull align 8 %i.a, ptr align 8 %i.g) #19
  %i.i = icmp eq i8 %i.h, 1
  %i.j = select i1 %i.i, i64 %.sroa.05.012.i, i64 %i.f, !unpredictable !4 ; 2 uses
  %i.k = sub i64 %.sroa.01.013.i, %i.e            ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = icmp eq i8 %i.c, -1
  %i.n = zext i1 %i.m to i64
  %i.o = add i64 %.sroa.05.0.lcssa.i, %i.n
  br label %_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State16binary_search_byNCNvB2_13binary_search0EBz_.exit

_RINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State16binary_search_byNCNvB2_13binary_search0EBz_.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.sroa.4.0.i = phi i64 [ %i.o, %bb.b ], [ %1, %bb.a ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %._crit_edge.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i64 } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13sort_unstableBy_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 21
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYBT_NtNtB8_3cmp10PartialOrd2ltEBX_(ptr align 8 %0, i64 %1, ptr nonnull %i.a) #20
  br label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_(ptr align 8 %0, i64 %1, i64 1, ptr nonnull %i.a)
  br label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable4sortNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNvYBQ_NtNtB8_3cmp10PartialOrd2ltEBU_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State14swap_uncheckedBy_(ptr nofree align 8 captures(none) %0, i64 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State22split_at_mut_uncheckedBy_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State4iterBy_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE3newBS_(ptr align 8 %0, i64 %1) #19
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State7reverseBy_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = sub nsw i64 0, %i.a
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  tail call void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEBS_(ptr align 8 %0, i64 %i.a, ptr align 8 %i.d, i64 %i.a, i64 %i.a) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvMNtCskKLDkoKarTP_4core5sliceSRTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBy_5StateE5firstBA_(ptr nofree readnone align 8 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBx_5StateE12split_at_mutBz_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @14, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBx_5StateE14swap_uncheckedBz_(ptr nofree align 8 captures(none) %0, i64 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBx_5StateE22split_at_mut_uncheckedBz_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr align 8 %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBx_5StateE4iterBz_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBR_5StateEE3newBT_(ptr align 8 %0, i64 %1) #19
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBx_5StateE7reverseBz_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = sub nsw i64 0, %i.a
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  tail call void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBR_5StateEEBT_(ptr align 8 %0, i64 %i.a, ptr align 8 %i.d, i64 %i.a, i64 %i.a) #19
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_5State10snake_case(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayRNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEB13_(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.e = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj2_Kj1_ECs8UJyeeIGyGC_12regex_syntax(ptr nonnull @17, ptr nonnull align 8 %i.b) #19 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.f, ptr %i.g) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_5State11pascal_case(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayjECs5OJP7dO4hSQ_6memchr(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.d = call { ptr, ptr } @_RINvMs2_NtCskKLDkoKarTP_4core3fmtNtB6_9Arguments3newKj8_Kj1_ECs8UJyeeIGyGC_12regex_syntax(ptr nonnull @18, ptr nonnull align 8 %i.b) #19 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6formatCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.e, ptr %i.f) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData16set_normal_edges(ptr align 8 %0, ptr nofree nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_5Graph3new:bb.a
  %i.nt = zext i8 %i.nr to i64
  %i.nu = add i64 %i.ns, %i.nt                    ; 3 uses
  %i.nv = invoke { ptr, i64 } @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE5transB9_(ptr nonnull align 16 %i.cd)
          to label %.noexc76 unwind label %.loopexit242 ; 2 uses

.noexc76:                                         ; preds = %.noexc75
  %i.nw = extractvalue { ptr, i64 } %i.nv, 1      ; 2 uses
  %i.nx = icmp ult i64 %i.nu, %i.nw
  br i1 %i.nx, label %bb.hl, label %bb.gs

bb.gs:                                            ; preds = %.noexc76
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.nu, i64 %i.nw, ptr nonnull align 8 @67) #24
          to label %.noexc77 unwind label %.loopexit.split-lp243.loopexit.split-lp

.noexc77:                                         ; preds = %bb.gs
  unreachable

bb.gt:                                            ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false)
  invoke fastcc void @_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData16set_normal_edges(ptr align 8 %i.fo, ptr align 8 %i.bc)
          to label %bb.gu unwind label %.thread192.loopexit

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 %i.fm, ptr %i.u, align 4
  %i.ny = invoke ptr @_RNvMs4_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE12byte_classesB9_(ptr nonnull align 16 %i.cd)
          to label %.noexc78 unwind label %.thread192.loopexit

.noexc78:                                         ; preds = %bb.gu
  %i.nz = invoke i32 @_RNvMs0_NtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB5_11ByteClasses3eoiCs2SM5xCHwwDm_13logos_codegen(ptr %i.ny) #19
          to label %.noexc79 unwind label %.thread192.loopexit

.noexc79:                                         ; preds = %.noexc78
  %i.oa = invoke i64 @_RNvMNtNtCsaKDqXqZWSq0_14regex_automata4util8alphabetNtB2_4Unit8as_usize(i32 %i.nz)
          to label %.noexc80 unwind label %.thread192.loopexit

.noexc80:                                         ; preds = %.noexc79
  %i.ob = invoke i64 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.u) #19
          to label %.noexc81 unwind label %.thread192.loopexit

.noexc81:                                         ; preds = %.noexc80
  %i.oc = add i64 %i.ob, %i.oa                    ; 3 uses
  %i.od = invoke { ptr, i64 } @_RNvMs8_NtNtCsaKDqXqZWSq0_14regex_automata3dfa5denseINtB5_3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEE5transB9_(ptr nonnull align 16 %i.cd)
          to label %.noexc82 unwind label %.thread192.loopexit ; 2 uses

.noexc82:                                         ; preds = %.noexc81
  %i.oe = extractvalue { ptr, i64 } %i.od, 1      ; 2 uses
  %i.of = icmp ult i64 %i.oc, %i.oe
  br i1 %i.of, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %.noexc82
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %i.oc, i64 %i.oe, ptr nonnull align 8 @68) #24
          to label %.noexc83 unwind label %.thread192.loopexit.split-lp

.noexc83:                                         ; preds = %bb.gv
  unreachable

bb.gw:                                            ; preds = %.noexc82
  %i.og = extractvalue { ptr, i64 } %i.od, 0
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oc
  %i.oi = load i32, ptr %i.oh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i32 %i.oi, ptr %i.bb, align 4
  %i.oj = invoke i64 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.bb)
          to label %bb.gx unwind label %.thread192.loopexit

bb.gx:                                            ; preds = %bb.gw
  %i.ok = icmp eq i64 %i.oj, 0
  br i1 %i.ok, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ol = invoke align 8 ptr @_RNvXs8_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexRB12_E5indexB25_(ptr nonnull align 8 %i.br, ptr nonnull align 4 %i.bb, ptr nonnull align 8 @32)
          to label %bb.gz unwind label %.thread192.loopexit

bb.gz:                                            ; preds = %bb.gy
  %i.om = load i64, ptr %i.ol, align 8
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gx, %bb.gz
  %.sroa.313.1 = phi i64 [ %i.om, %bb.gz ], [ %.sroa.313.0, %bb.gx ] ; 2 uses
  %.sroa.012.0 = phi i64 [ 1, %bb.gz ], [ 0, %bb.gx ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 2 uses
  store i64 %.sroa.012.0, ptr %i.on, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 %.sroa.313.1, ptr %i.oo, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.oq = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBI_5StateEENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefBK_(ptr nonnull align 8 %i.op) #19
          to label %.noexc138 unwind label %.thread192.loopexit ; 2 uses

.noexc138:                                        ; preds = %bb.ha
  %i.or = extractvalue { ptr, i64 } %i.oq, 0
  %i.os = extractvalue { ptr, i64 } %i.oq, 1
  %i.ot = invoke { ptr, ptr } @_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBR_5StateEE3newBT_(ptr align 8 %i.or, i64 %i.os) #19
          to label %.noexc139 unwind label %.thread192.loopexit ; 2 uses

.noexc139:                                        ; preds = %.noexc138
  %i.ou = extractvalue { ptr, ptr } %i.ot, 0
  %i.ov = extractvalue { ptr, ptr } %i.ot, 1
  %i.ow = invoke { ptr, ptr } @_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBM_5StateEENtNtNtNtBa_4iter6traits8iterator8Iterator3mapB1x_NCNvMs1_BM_NtBM_9StateData13iter_children0EBO_(ptr %i.ou, ptr %i.ov) #19
          to label %.noexc140 unwind label %.thread192.loopexit ; 2 uses

.noexc140:                                        ; preds = %.noexc139
  %i.ox = extractvalue { ptr, ptr } %i.ow, 0
  %i.oy = extractvalue { ptr, ptr } %i.ow, 1
  %i.oz = invoke align 8 ptr @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE4iterBL_(ptr nonnull align 8 %i.on) #19
          to label %.noexc141 unwind label %.thread192.loopexit

.noexc141:                                        ; preds = %.noexc140
  %i.pa = invoke align 8 ptr @_RINvYINtNtCskKLDkoKarTP_4core6option4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtNtNtB8_4iter6traits8iterator8Iterator6clonedBD_EBH_(ptr align 8 %i.oz)
          to label %.noexc142 unwind label %.thread192.loopexit

.noexc142:                                        ; preds = %.noexc141
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1k_5StateEENCNvMs1_B1k_NtB1k_9StateData13iter_children0ENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_6cloned6ClonedINtNtBc_6option4IterB25_EEEB1m_(ptr nonnull sret([32 x i8]) align 8 %i.ay, ptr %i.ox, ptr %i.oy, ptr align 8 %i.pa) #19
          to label %_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData13iter_children.exit144 unwind label %.thread192.loopexit

_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData13iter_children.exit144: ; preds = %.noexc142
  invoke void @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtB1E_5StateEENCNvMs1_B1E_NtB1E_9StateData13iter_children0EINtNtB8_6cloned6ClonedINtNtBc_6option4IterB2p_EEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsexYYUdYSQU6_5alloc3vec3VecB2p_EEB1G_(ptr nonnull sret([24 x i8]) align 8 %i.az, ptr nonnull align 8 %i.ay)
          to label %bb.hb unwind label %.thread192.loopexit

bb.hb:                                            ; preds = %_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData13iter_children.exit144
  invoke void @_RNvXsg_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterBJ_(ptr nonnull sret([32 x i8]) align 8 %i.ba, ptr nonnull align 8 %i.az)
          to label %bb.hc unwind label %.thread192.loopexit

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  br label %bb.hd

bb.hd:                                            ; preds = %_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData13add_back_edge.exit, %bb.hc
  %i.pb = invoke { i64, i64 } @_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB10_(ptr nonnull align 8 %i.ax)
          to label %bb.hf unwind label %.loopexit.split-lp238 ; 2 uses

.loopexit237:                                     ; preds = %.lr.ph.i.i.i
  %lpad.loopexit239 = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.loopexit.split-lp238:                            ; preds = %bb.hd, %bb.hg, %bb.hi, %._crit_edge.i.i.i, %bb.hk
  %lpad.loopexit.split-lp240 = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.he:                                            ; preds = %.loopexit.split-lp238, %.loopexit237
  %lpad.phi241 = phi { ptr, i32 } [ %lpad.loopexit239, %.loopexit237 ], [ %lpad.loopexit.split-lp240, %.loopexit.split-lp238 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1t_(ptr nonnull align 8 %i.ax) #22
          to label %.body unwind label %bb.dz

bb.hf:                                            ; preds = %bb.hd
  %i.pc = extractvalue { i64, i64 } %i.pb, 0
  %i.pd = trunc nuw i64 %i.pc to i1
  br i1 %i.pd, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.pe = extractvalue { i64, i64 } %i.pb, 1
  %i.pf = invoke align 8 ptr @_RNvXse_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutBJ_(ptr nonnull align 8 %i.ed, i64 %i.pe, ptr nonnull align 8 @33)
          to label %bb.hi unwind label %.loopexit.split-lp238

bb.hh:                                            ; preds = %bb.hf
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB1t_(ptr nonnull align 8 %i.ax)
          to label %bb.bn unwind label %.thread192.loopexit

bb.hi:                                            ; preds = %bb.hg
  %i.pg = load i64, ptr %i.fl, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.pg, ptr %i.d, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 72 ; 2 uses
  %i.pi = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.ph) #19
          to label %.noexc145 unwind label %.loopexit.split-lp238 ; 2 uses

.noexc145:                                        ; preds = %bb.hi
  %i.pj = extractvalue { ptr, i64 } %i.pi, 0      ; 2 uses
  %i.pk = extractvalue { ptr, i64 } %i.pi, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  switch i64 %i.pk, label %.lr.ph.i.i.i [
    i64 0, label %bb.hk
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.noexc147, %.noexc145
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %.noexc145 ], [ %i.pt, %.noexc147 ] ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %.sroa.05.0.lcssa.i.i.i
  %i.pm = invoke i8 @_RNCNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_search0BA_(ptr nonnull align 8 %i.c, ptr align 8 %i.pl) #19
          to label %.noexc146 unwind label %.loopexit.split-lp238 ; 2 uses

.noexc146:                                        ; preds = %._crit_edge.i.i.i
  %i.pn = icmp eq i8 %i.pm, 0
  br i1 %i.pn, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_searchBy_.exit.i, label %bb.hj

.lr.ph.i.i.i:                                     ; preds = %.noexc145, %.noexc147
  %.sroa.01.013.i.i.i = phi i64 [ %i.pu, %.noexc147 ], [ %i.pk, %.noexc145 ] ; 2 uses
  %.sroa.05.012.i.i.i = phi i64 [ %i.pt, %.noexc147 ], [ 0, %.noexc145 ] ; 2 uses
  %i.po = lshr i64 %.sroa.01.013.i.i.i, 1         ; 2 uses
  %i.pp = add i64 %i.po, %.sroa.05.012.i.i.i      ; 2 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.pp
  %i.pr = invoke i8 @_RNCNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_search0BA_(ptr nonnull align 8 %i.c, ptr align 8 %i.pq) #19
          to label %.noexc147 unwind label %.loopexit237

.noexc147:                                        ; preds = %.lr.ph.i.i.i
  %i.ps = icmp eq i8 %i.pr, 1
  %i.pt = select i1 %i.ps, i64 %.sroa.05.012.i.i.i, i64 %i.pp, !unpredictable !4 ; 2 uses
  %i.pu = sub i64 %.sroa.01.013.i.i.i, %i.po      ; 2 uses
  %i.pv = icmp ugt i64 %i.pu, 1
  br i1 %i.pv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.hj:                                            ; preds = %.noexc146
  %i.pw = icmp eq i8 %i.pm, -1
  %i.px = zext i1 %i.pw to i64
  %i.py = add i64 %.sroa.05.0.lcssa.i.i.i, %i.px
  %.pre.i = load i64, ptr %i.d, align 8
  br label %bb.hk

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_searchBy_.exit.i: ; preds = %.noexc146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData13add_back_edge.exit

bb.hk:                                            ; preds = %bb.hj, %.noexc145
  %i.pz = phi i64 [ %i.pg, %.noexc145 ], [ %.pre.i, %bb.hj ]
  %.sroa.4.0.i.i.ph.i = phi i64 [ %i.pk, %.noexc145 ], [ %i.py, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE6insertBI_(ptr nonnull align 8 %i.ph, i64 %.sroa.4.0.i.i.ph.i, i64 %i.pz, ptr nonnull align 8 @19)
          to label %_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData13add_back_edge.exit unwind label %.loopexit.split-lp238

_RNvMs1_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9StateData13add_back_edge.exit: ; preds = %bb.hk, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen5graph5State13binary_searchBy_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.hd

bb.hl:                                            ; preds = %.noexc76
  %i.qa = extractvalue { ptr, i64 } %i.nv, 0
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.nu
  %i.qc = load i32, ptr %i.qb, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i32 %i.qc, ptr %i.bf, align 4
  %i.qd = invoke i64 @_RNvMs1r_NtNtCsaKDqXqZWSq0_14regex_automata4util10primitivesNtB6_7StateID8as_usizeCs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 4 %i.bf)
          to label %bb.hm unwind label %.loopexit242

bb.hm:                                            ; preds = %bb.hl
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %.backedge247.backedge, label %bb.hn

.backedge247.backedge:                            ; preds = %bb.hm, %bb.hr
  br label %.backedge247

bb.hn:                                            ; preds = %bb.hm
  %i.qf = invoke align 8 ptr @_RNvXs8_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEINtNtNtCskKLDkoKarTP_4core3ops5index5IndexRB12_E5indexB25_(ptr nonnull align 8 %i.br, ptr nonnull align 4 %i.bf, ptr nonnull align 8 @34)
          to label %bb.ho unwind label %.loopexit242

bb.ho:                                            ; preds = %bb.hn
  %i.qg = load i64, ptr %i.qf, align 8
  invoke void @_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB14_9ByteClassE5entryB16_(ptr nonnull sret([24 x i8]) align 8 %i.be, ptr nonnull align 8 %i.bh, i64 %i.qg)
          to label %bb.hp unwind label %.loopexit242

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehEE3newCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([24 x i8]) align 8 %i.b) #19
          to label %bb.hq unwind label %.loopexit242

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.qh = invoke align 8 ptr @_RNvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB13_9ByteClassE9or_insertB15_(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.bd)
          to label %bb.hr unwind label %.loopexit242

bb.hr:                                            ; preds = %bb.hq
  invoke fastcc void @_RNvMs3_NtCs2SM5xCHwwDm_13logos_codegen5graphNtB5_9ByteClass8add_byte(ptr align 8 %i.qh, i8 %i.np)
          to label %.backedge247.backedge unwind label %.loopexit242

.loopexit242:                                     ; preds = %.backedge247, %bb.hl, %bb.hn, %bb.ho, %bb.hq, %bb.hr, %bb.gr, %.noexc, %.noexc74, %.noexc75, %bb.hp
  %lpad.loopexit244 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp243

.loopexit.split-lp243.loopexit:                   ; preds = %bb.go, %bb.gn
  %lpad.loopexit251 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp243

.loopexit.split-lp243.loopexit.split-lp:          ; preds = %bb.gs
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp243

.loopexit.split-lp243:                            ; preds = %.loopexit.split-lp243.loopexit, %.loopexit.split-lp243.loopexit.split-lp, %.loopexit242
  %lpad.phi246 = phi { ptr, i32 } [ %lpad.loopexit244, %.loopexit242 ], [ %lpad.loopexit251, %.loopexit.split-lp243.loopexit ], [ %lpad.loopexit.split-lp252, %.loopexit.split-lp243.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1x_9ByteClassEEB1z_(ptr nonnull align 8 %i.bh) #22
          to label %.body unwind label %bb.dz

bb.hs:                                            ; preds = %bb.bf
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataEBF_(ptr nonnull align 8 %i.bm) #22
          to label %.body unwind label %bb.dz

bb.ht:                                            ; preds = %bb.aw
  %i.qj = extractvalue { ptr, i64 } %i.eo, 0
  %i.qk = extractvalue { ptr, i64 } %i.eo, 1
  %i.ql = invoke { ptr, ptr } @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4Leaf4iterBy_(ptr align 8 %i.qj, i64 %i.qk)
          to label %bb.hu unwind label %.loopexit.split-lp.thread ; 2 uses

bb.hu:                                            ; preds = %bb.ht
  %i.qm = extractvalue { ptr, ptr } %i.ql, 0
  %i.qn = extractvalue { ptr, ptr } %i.ql, 1
  invoke void @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateBM_(ptr nonnull sret([24 x i8]) align 8 %i.bv, ptr %i.qm, ptr %i.qn)
          to label %bb.hv unwind label %.loopexit.split-lp.thread

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafEENtB2_12IntoIterator9into_iterB1S_(ptr nonnull sret([24 x i8]) align 8 %i.bw, ptr nonnull align 8 %i.bv)
          to label %bb.hw unwind label %.loopexit.split-lp.thread

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.hw
  %i.qq = invoke { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafEENtNtNtB8_6traits8iterator8Iterator4nextB1B_(ptr nonnull align 8 %i.bu)
          to label %bb.hx unwind label %.thread290 ; 2 uses

bb.hx:                                            ; preds = %.backedge
  %i.qr = extractvalue { i64, ptr } %i.qq, 0
  %i.qs = extractvalue { i64, ptr } %i.qq, 1      ; 2 uses
  %.not63 = icmp eq ptr %i.qs, null
  br i1 %.not63, label %.sink.split, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.qt = invoke align 8 ptr @_RNvMNtCs2SM5xCHwwDm_13logos_codegen7patternNtB2_7Pattern3hir(ptr nonnull align 8 %i.qs)
          to label %bb.hz unwind label %.thread290

bb.hz:                                            ; preds = %bb.hy
  %i.qu = invoke align 8 ptr @_RNvMs2_NtCs8UJyeeIGyGC_12regex_syntax3hirNtB5_3Hir10properties(ptr align 8 %i.qt)
          to label %bb.ia unwind label %.thread290

bb.ia:                                            ; preds = %bb.hz
  %i.qv = invoke { i64, i64 } @_RNvMsn_NtCs8UJyeeIGyGC_12regex_syntax3hirNtB5_10Properties11minimum_lenCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %i.qu)
          to label %bb.ib unwind label %.thread290 ; 2 uses

bb.ib:                                            ; preds = %bb.ia
  %i.qw = extractvalue { i64, i64 } %i.qv, 0
  %i.qx = extractvalue { i64, i64 } %i.qv, 1
  store i64 %i.qw, ptr %i.bt, align 8
  store i64 %i.qx, ptr %i.qo, align 8
  %i.qy = invoke zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionjENtNtB7_3cmp9PartialEq2eqCs8UJyeeIGyGC_12regex_syntax(ptr nonnull align 8 %i.bt, ptr nonnull align 8 @35)
          to label %bb.ic unwind label %.thread290

bb.ic:                                            ; preds = %bb.ib
  br i1 %i.qy, label %bb.id, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ic, %bb.id
  br label %.backedge

bb.id:                                            ; preds = %bb.ic
  store i64 %i.qr, ptr %i.qp, align 8
  store i64 -9223372036854775807, ptr %i.bs, align 8
  invoke void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorE4pushBJ_(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.bs)
          to label %.backedge.backedge unwind label %.thread290

.sink.split:                                      ; preds = %bb.hx, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(880) %0, ptr noundef nonnull align 16 dereferenceable(880) %i.cd, i64 880, i1 false)
  br label %bb.ie

bb.ie:                                            ; preds = %.sink.split, %bb.ij
  %.sroa.034.7 = phi i8 [ 1, %bb.ij ], [ 0, %.sink.split ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsaKDqXqZWSq0_14regex_automata3nfa8thompson3nfa3NFAEBJ_(ptr nonnull align 8 %i.cu)
          to label %bb.ik unwind label %bb.i

bb.if:                                            ; preds = %.loopexit.split-lp.thread, %.thread290, %bb.ar
  %.pn64293 = phi { ptr, i32 } [ %lpad.loopexit, %.thread290 ], [ %.pn60.pn, %bb.ar ], [ %lpad.thr_comm, %.loopexit.split-lp.thread ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafEEB1c_(ptr nonnull align 8 %i.ec) #22
          to label %bb.ig unwind label %bb.dz

bb.ig:                                            ; preds = %bb.if
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsaKDqXqZWSq0_14regex_automata3dfa5dense3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEEBI_(ptr nonnull align 16 %i.cd) #22
          to label %.critedge.thread unwind label %bb.dz

.critedge.thread:                                 ; preds = %bb.ig
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataEEB1c_(ptr nonnull align 8 %i.ed) #22
          to label %.critedge.thread195 unwind label %bb.dz

.critedge.thread195:                              ; preds = %.critedge.thread
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph10GraphErrorEEB1c_(ptr nonnull align 8 %i.ef) #22
          to label %.thread unwind label %bb.dz

bb.ih:                                            ; preds = %bb.an
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafEEB1c_(ptr nonnull align 8 %i.cc) #22
          to label %.thread unwind label %bb.dz

bb.ii:                                            ; preds = %bb.al
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsaKDqXqZWSq0_14regex_automata3dfa5dense3DFAINtNtCsexYYUdYSQU6_5alloc3vec3VecmEEEBI_(ptr nonnull align 16 %i.cj) #22
          to label %.thread unwind label %bb.dz

bb.ij:                                            ; preds = %bb.ak
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaKDqXqZWSq0_14regex_automata3dfa5dense7BuilderEBH_(ptr nonnull align 16 %i.cf)
          to label %bb.ie unwind label %bb.ad

bb.ik:                                            ; preds = %bb.im, %bb.ie
  %.sroa.034.8 = phi i8 [ 1, %bb.im ], [ %.sroa.034.7, %bb.ie ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtCs8UJyeeIGyGC_12regex_syntax3hir3HirEECsaKDqXqZWSq0_14regex_automata(ptr nonnull align 8 %i.cy)
          to label %bb.in unwind label %bb.c

end_hunk_2
