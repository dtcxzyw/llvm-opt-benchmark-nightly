Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever-6a1231da06082d3a.markup5ever.74f9fa4e4cb8210a-cgu.0?download=true
inline.NumInlined: 135
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvCsldpiDtalS19_7tendril5OFLOW = external local_unnamed_addr global { ptr, i64 }
@0 = private unnamed_addr constant [33 x i8] c"markup5ever/util/buffer_queue.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00l\00\00\00'\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00V\00\00\00\16\00\00\00" }>, align 8
@3 = private unnamed_addr constant [73 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/cell.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"H\00\00\00\00\00\00\00\9A\05\00\00\0E\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\F4\00\00\001\00\00\00" }>, align 8
@6 = private unnamed_addr constant [21 x i8] c"empty buffer in queue", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\97\00\00\002\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\9F\00\00\00\1A\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\8B\00\00\006\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\00\01\00\00$\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\E7\00\00\00.\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\ED\00\00\00\1A\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\E4\00\00\006\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00j\00\00\00\0E\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00`\00\00\00\16\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\FA\00\00\00!\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c" \00\00\00\00\00\00\00\F9\00\00\00 \00\00\00" }>, align 8
@_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@18 = private unnamed_addr constant [23 x i8] c"tendril/src/tendril.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"\16\00\00\00\00\00\00\00U\00\00\00)\00\00\00" }>, align 8
@_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET = external local_unnamed_addr global { { ptr, i64 }, { ptr, i64 }, { ptr, i64 }, i64 }
@20 = private unnamed_addr constant [8 x i8] c"\01{\C0\02}:\C0\00", align 1
@21 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@22 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/string_cache-0.11.0/src/atom.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"d\00\00\00\00\00\00\00U\01\00\00\1F\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEEB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !4, !noundef !5 ; 2 uses
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEBH_.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEBH_.exit: ; preds = %.sink.split.i.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEBH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 16 to ptr)
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEBH_.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %bb.c
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = and i64 %i.g, 1
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr i8, ptr %i.e, i64 %i.i     ; 5 uses
  %i.k = trunc i64 %i.g to i1                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.in.i.i.i.i = select i1 %i.k, ptr %i.l, ptr %i.m
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !16, !noundef !5
  br i1 %i.k, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br label %.sink.split.i.i.i

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.n = load i64, ptr %i.j, align 8, !noalias !15, !noundef !5 ; 2 uses
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.j, align 8, !noalias !15
  %i.p = icmp eq i64 %i.n, 1
  br i1 %i.p, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEBH_.exit

.sink.split.i.i.i:                                ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEBH_.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !19, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = icmp ult ptr %i.a, inttoptr (i64 16 to ptr)
  br i1 %i.b, label %_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 5 uses
  %i.g = trunc i64 %i.c to i1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.in.i.i = select i1 %i.g, ptr %i.h, ptr %i.i
  %.sroa.0.0.i.i = load i32, ptr %.sroa.0.0.in.i.i, align 4, !noalias !22, !noundef !5
  br i1 %i.g, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  br label %.sink.split.i

bb.b:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i
  %i.j = load i64, ptr %i.f, align 8, !noalias !19, !noundef !5 ; 2 uses
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.f, align 8, !noalias !19
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %.sink.split.i, label %_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit

.sink.split.i:                                    ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i
  %.sink.in.in.in.i = zext i32 %.sroa.0.0.i.i to i64
  %.sink.in.in.i = add nuw nsw i64 %.sink.in.in.in.i, 15
  %.sink.in.i = and i64 %.sink.in.in.i, 8589934576
  %.sink.i = add nuw nsw i64 %.sink.in.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !19
  br label %_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit

_RNvXs3_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.a, %bb.b, %.sink.split.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1D_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !25, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  %.val.pre = load i64, ptr %0, align 8           ; 6 uses
  br i1 %i.c, label %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit, label %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1b_3fmt4UTF8EE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsa2F6HLACPlS_11markup5ever.exit.i

_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1b_3fmt4UTF8EE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !25 ; 2 uses
  %.not.i.i = icmp ult i64 %.val1.i, %.val.pre
  %i.e = select i1 %.not.i.i, i64 0, i64 %.val.pre
  %.sroa.04.0.i.i = sub nuw i64 %.val1.i, %i.e    ; 5 uses
  %i.f = sub i64 %.val.pre, %.sroa.04.0.i.i       ; 2 uses
  %.not11.i.i = icmp ult i64 %i.f, %i.b           ; 2 uses
  %i.g = add i64 %.sroa.04.0.i.i, %i.b
  %.sroa.58.0.i = select i1 %.not11.i.i, i64 %.val.pre, i64 %i.g ; 2 uses
  %.sroa.11.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !25, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.k = sub i64 %.sroa.58.0.i, %.sroa.04.0.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.l = icmp eq i64 %.sroa.58.0.i, %.sroa.04.0.i.i
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBH_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1b_3fmt4UTF8EE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsa2F6HLACPlS_11markup5ever.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i ], [ 0, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1b_3fmt4UTF8EE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsa2F6HLACPlS_11markup5ever.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.0.07.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !37, !noalias !25, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = icmp ult ptr %i.o, inttoptr (i64 16 to ptr)
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = and i64 %i.q, 1
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 5 uses
  %i.u = trunc i64 %i.q to i1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.0.0.in.i.i.i.i.i = select i1 %i.u, ptr %i.v, ptr %i.w
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i, align 4, !noalias !38, !noundef !5
  br i1 %i.u, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %.sink.split.i.i.i.i

bb.b:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i
  %i.x = load i64, ptr %i.t, align 8, !noalias !41, !noundef !5 ; 2 uses
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.t, align 8, !noalias !41
  %i.z = icmp eq i64 %i.x, 1
  br i1 %i.z, label %.sink.split.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i
  %.sink.in.in.in.i.i.i.i = zext i32 %.sroa.0.0.i.i.i.i.i to i64
  %.sink.in.in.i.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i.i, 15
  %.sink.in.i.i.i.i = and i64 %.sink.in.in.i.i.i.i, 8589934576
  %.sink.i.i.i.i = add nuw nsw i64 %.sink.in.i.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i: ; preds = %.sink.split.i.i.i.i, %bb.b, %.lr.ph.i.i
  %i.aa = icmp eq i64 %i.n, %i.k
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBH_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, label %.lr.ph.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBH_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i, %_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1b_3fmt4UTF8EE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsa2F6HLACPlS_11markup5ever.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  br i1 %.not11.i.i, label %.lr.ph.i.i.i.i, label %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBH_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBH_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.sroa.0.07.i.i.i.i ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !51, !noalias !25, !nonnull !5, !noundef !5 ; 3 uses
  %i.ae = icmp ult ptr %i.ad, inttoptr (i64 16 to ptr)
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr i8, ptr %i.ad, i64 %i.ah  ; 5 uses
  %i.aj = trunc i64 %i.af to i1                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.sroa.0.0.in.i.i.i.i.i.i.i = select i1 %i.aj, ptr %i.ak, ptr %i.al
  %.sroa.0.0.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i.i.i.i, align 4, !noalias !52, !noundef !5
  br i1 %i.aj, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  br label %.sink.split.i.i.i.i.i.i

bb.c:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i.i.i.i
  %i.am = load i64, ptr %i.ai, align 8, !noalias !55, !noundef !5 ; 2 uses
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.ai, align 8, !noalias !55
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %.sink.split.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i.i.i
  %.sink.in.in.in.i.i.i.i.i.i = zext i32 %.sroa.0.0.i.i.i.i.i.i.i to i64
  %.sink.in.in.i.i.i.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i.i.i.i, 15
  %.sink.in.i.i.i.i.i.i = and i64 %.sink.in.in.i.i.i.i.i.i, 8589934576
  %.sink.i.i.i.i.i.i = add nuw nsw i64 %.sink.in.i.i.i.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %.sink.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !55
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.ap = icmp eq i64 %i.ac, %.sroa.11.0.i
  br i1 %i.ap, label %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit, label %.lr.ph.i.i.i.i

_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBH_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %bb.a
  %i.aq = icmp eq i64 %.val.pre, 0
  br i1 %i.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1k_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit4, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.as = shl nuw i64 %.val.pre, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1k_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1k_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit4: ; preds = %_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsa2F6HLACPlS_11markup5ever.exit, %bb.d
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBR_3fmt4UTF8EE8grow_oneCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !56, !noundef !5
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE4growCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !56, !noundef !5 ; 4 uses
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBR_3fmt4UTF8EE8grow_oneCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.b = load i64, ptr %0, align 8, !range !56, !alias.scope !58, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !58, !noundef !5 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !58, !noundef !5 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE24handle_capacity_increaseCsa2F6HLACPlS_11markup5ever.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !58, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !58
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !58
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE24handle_capacity_increaseCsa2F6HLACPlS_11markup5ever.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !58, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !58
  br label %_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE24handle_capacity_increaseCsa2F6HLACPlS_11markup5ever.exit

_RNvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE24handle_capacity_increaseCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa2F6HLACPlS_11markup5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %1, 4                            ; 7 uses
  %i.b = icmp ult i64 %1, 1152921504606846976
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = shl nuw i64 %.0.val, 4                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.a, %i.e
  tail call void @llvm.assume(i1 %i.f)
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue15pop_except_from:bb.a

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread
  %.sink = phi i64 [ %i.fo, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.ad, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.cm, %bb.ad ]
  %i.ac = load i64, ptr %1, align 8, !noundef !5
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %1, align 8
  br label %bb.ar

bb.l:                                             ; preds = %bb.ab
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.f, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !5 ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.01.0.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = icmp eq i32 %i.ah, 0
  br i1 %i.al, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread70, %bb.m
  %i.am = phi ptr [ %i.z, %.thread70 ], [ %i.ak, %bb.m ]
  %.sroa.0.0.i74 = phi ptr [ %i.y, %.thread70 ], [ %i.aj, %bb.m ]
  %.sroa.4.0.i73 = phi i32 [ %i.aa, %.thread70 ], [ %i.ah, %bb.m ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %.sroa.0.02.i = phi i32 [ %i.at, %bb.o ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.02.01.i = phi ptr [ %i.an, %bb.o ], [ %.sroa.0.0.i74, %.lr.ph.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.sroa.02.01.i, align 1, !alias.scope !86, !noundef !5 ; 2 uses
  %i.ap = icmp ugt i8 %i.ao, 63
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.aq = zext nneg i8 %i.ao to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %2
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %bb.o, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.at = add nuw i32 %.sroa.0.02.i, 1
  %i.au = icmp eq ptr %i.an, %i.am
  br i1 %i.au, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit, label %.lr.ph.i

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit: ; preds = %bb.o, %bb.n
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.02.i, %bb.n ], [ %.sroa.4.0.i73, %bb.o ] ; 9 uses
  %.not21 = icmp eq i32 %.sroa.0.0.lcssa.i, 0
  br i1 %.not21, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %bb.p

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread: ; preds = %bb.d, %bb.m, %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.av = tail call fastcc noundef i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) ; 4 uses
  %.not22 = icmp eq i32 %i.av, -1
  br i1 %.not22, label %bb.ab, label %bb.y, !prof !89

bb.p:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.aw = icmp ult i32 %.sroa.0.0.lcssa.i, 9
  br i1 %i.aw, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = and i64 %i.o, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !noalias !90, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !noalias !90
  %i.bc = getelementptr i8, ptr %i.n, i64 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  store ptr %i.bc, ptr %i.m, align 8, !noalias !90
  store i32 0, ptr %i.az, align 4, !noalias !90
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.r, %bb.q
  %i.bd = phi ptr [ %i.n, %bb.q ], [ %i.bc, %bb.r ]
  %i.be = getelementptr i8, ptr %i.bd, i64 -1     ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noalias !90, !noundef !5 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %bb.s, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !89

bb.s:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bh = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !90, !nonnull !5, !noundef !5
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !90, !noundef !5
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.s
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bj = add nuw i64 %i.bf, 1
  store i64 %i.bj, ptr %i.be, align 8, !noalias !90
  %i.bk = load ptr, ptr %i.m, align 8, !noalias !93, !nonnull !5, !noundef !5 ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr i8, ptr %i.bk, i64 %i.bn  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !90, !noundef !5
  %i.br = ptrtoint ptr %i.bo to i64
  %.not.i.i = and i64 %i.br, 1
  %i.bs = xor i64 %.not.i.i, 1
  %i.bt = getelementptr i8, ptr %i.bo, i64 %i.bs  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bq to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.ext.i = zext i32 %.sroa.0.0.lcssa.i to i64
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.02.0.insert.ext.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.t:                                             ; preds = %bb.p
  br i1 %i.q, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = and i64 %i.o, 1
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr i8, ptr %i.n, i64 %i.bv
  %i.bx = trunc i64 %i.o to i1
  br i1 %i.bx, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !noalias !96, !noundef !5
  %i.ca = zext i32 %i.bz to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %.sroa.01.0.i.i.i = phi i64 [ %i.ca, %bb.v ], [ 0, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i3.i = phi ptr [ %i.cd, %bb.x ], [ %i.cb, %bb.w ]
  %i.ce = zext nneg i32 %.sroa.0.0.lcssa.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.cf = inttoptr i64 %i.ce to ptr
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0.i3.i, i64 range(i64 0, 9) %i.ce, i1 false), !noalias !103
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.y:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  %i.cg = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, inttoptr (i64 15 to ptr)
  br i1 %i.ch, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = icmp ult ptr %i.cg, inttoptr (i64 9 to ptr)
  br i1 %i.ci, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !noundef !5
  %i.cl = zext i32 %i.ck to i64
  br label %bb.al

bb.ab:                                            ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
          to label %bb.ac unwind label %bb.l

bb.ac:                                            ; preds = %bb.ao, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i
  %.pre-phi = phi i64 [ %i.o, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bl, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 6 uses
  %i.cn = phi ptr [ %i.n, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bk, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 8 uses
  %.sroa.563.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %i.cf, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bt, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.co = icmp eq ptr %i.cn, inttoptr (i64 15 to ptr)
  br i1 %i.co, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.cp = icmp ult ptr %i.cn, inttoptr (i64 9 to ptr) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !alias.scope !104
  %i.cs = trunc nuw nsw i64 %.pre-phi to i32
  %.sroa.0.0.i39 = select i1 %i.cp, i32 %i.cs, i32 %i.cr
  %i.ct = sub i32 %.sroa.0.0.i39, %.sroa.0.0.lcssa.i ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 9
  br i1 %i.cu, label %bb.ah, label %bb.af

.thread.i:                                        ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.cv = sub i32 0, %.sroa.0.0.lcssa.i           ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 9
  br i1 %i.cw, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.af

bb.af:                                            ; preds = %.thread.i, %bb.ae
  %i.cx = and i64 %.pre-phi, 1
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !alias.scope !104 ; 2 uses
  br i1 %i.cy, label %bb.ag, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 %i.da, ptr %i.db, align 8, !noalias !104
  %i.dc = getelementptr i8, ptr %i.cn, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  store ptr %i.dc, ptr %i.m, align 8, !alias.scope !104
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40: ; preds = %bb.ag, %bb.af
  %i.dd = phi ptr [ %i.dc, %bb.ag ], [ %i.cn, %bb.af ]
  %i.de = phi i32 [ 0, %bb.ag ], [ %i.da, %bb.af ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.dg = add i32 %i.de, %.sroa.0.0.lcssa.i
  store i32 %i.dg, ptr %i.cz, align 4, !alias.scope !104
  %i.dh = load i32, ptr %i.df, align 8, !alias.scope !104, !noundef !5
  %i.di = sub i32 %i.dh, %.sroa.0.0.lcssa.i       ; 2 uses
  store i32 %i.di, ptr %i.df, align 8, !alias.scope !104
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.cp, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = and i64 %.pre-phi, 1
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr i8, ptr %i.cn, i64 %i.dk
  %i.dm = trunc i64 %.pre-phi to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !104
  %i.dp = zext i32 %i.do to i64
  %.sroa.01.0.i.i.i41 = select i1 %i.dm, i64 %i.dp, i64 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.01.0.i.i.i41
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42: ; preds = %bb.ai, %bb.ah, %.thread.i
  %i.ds = phi i32 [ %i.ct, %bb.ai ], [ %i.cv, %.thread.i ], [ %i.ct, %bb.ah ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.dr, %bb.ai ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ %i.cq, %bb.ah ]
  %i.dt = zext i32 %.sroa.0.0.lcssa.i to i64
  %i.du = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dw = icmp eq i32 %i.ds, 0
  %i.dx = inttoptr i64 %i.du to ptr
  %i.dy = select i1 %i.dw, ptr inttoptr (i64 15 to ptr), ptr %i.dx ; 2 uses
  store i64 0, ptr %.sroa.4.i.i38, align 8, !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i38, ptr nonnull readonly align 1 %i.dv, i64 range(i64 0, 9) %i.du, i1 false), !noalias !111
  %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i38, align 8, !noalias !107 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dz = icmp ult ptr %i.cn, inttoptr (i64 16 to ptr)
  br i1 %i.dz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  %i.ea = and i64 %.pre-phi, 1
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr i8, ptr %i.cn, i64 %i.eb  ; 5 uses
  %i.ed = trunc i64 %.pre-phi to i1               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.0.0.in.i.i.i.i = select i1 %i.ed, ptr %i.ee, ptr %i.ef
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !112, !noundef !5
  br i1 %i.ed, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  br label %.sink.split.i.i.i

bb.aj:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.eg = load i64, ptr %i.ec, align 8, !noalias !115, !noundef !5 ; 2 uses
  %i.eh = add i64 %i.eg, -1
  store i64 %i.eh, ptr %i.ec, align 8, !noalias !115
  %i.ei = icmp eq i64 %i.eg, 1
  br i1 %i.ei, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

.sink.split.i.i.i:                                ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !115
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %.sink.split.i.i.i, %bb.aj, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  store ptr %i.dy, ptr %i.m, align 8, !alias.scope !104
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !104
  %i.ej = trunc i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40
  %i.ek = phi i32 [ %i.ej, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.di, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ]
  %i.el = phi ptr [ %i.dy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.dd, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ] ; 3 uses
  %i.em = icmp eq ptr %i.el, inttoptr (i64 15 to ptr)
  br i1 %i.em, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = icmp ult ptr %i.el, inttoptr (i64 9 to ptr)
  %i.ep = zext i32 %i.ek to i64
  %spec.select = select i1 %i.eo, i64 %i.en, i64 %i.ep
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit, %bb.y, %bb.aa, %bb.z
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ %.sroa.062.0, %bb.ak ], [ %.sroa.062.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.0.0 = phi i32 [ %i.av, %bb.y ], [ %i.av, %bb.z ], [ %i.av, %bb.aa ], [ undef, %bb.ak ], [ undef, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.5.0 = phi i64 [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ %.sroa.563.0, %bb.ak ], [ %.sroa.563.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.4.0.i45.pn = phi i64 [ 0, %bb.y ], [ 1, %bb.z ], [ %i.cl, %bb.aa ], [ %spec.select, %bb.ak ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.01.0 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 1, %bb.ak ], [ 1, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.01.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx6, align 4
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %i.eq = load i64, ptr %1, align 8, !noundef !5
  %i.er = add i64 %i.eq, 1                        ; 2 uses
  store i64 %i.er, ptr %1, align 8
  %.sroa.014.0.in = icmp eq i64 %.sroa.4.0.i45.pn, 0
  br i1 %.sroa.014.0.in, label %bb.am, label %bb.j

bb.am:                                            ; preds = %bb.al
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.an, label %bb.ao, !prof !57

bb.an:                                            ; preds = %bb.am
  store i64 -1, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.et = load i64, ptr %i.e, align 8, !alias.scope !120, !noalias !123, !noundef !5 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.ac unwind label %bb.h

bb.ap:                                            ; preds = %bb.an
  %i.ev = load i64, ptr %i.g, align 8, !alias.scope !120, !noalias !123, !noundef !5 ; 2 uses
  %i.ew = add i64 %i.ev, 1                        ; 2 uses
  %i.ex = load i64, ptr %i.d, align 8, !range !56, !alias.scope !120, !noalias !123, !noundef !5 ; 3 uses
  %.not.i48 = icmp ult i64 %i.ew, %i.ex
  %i.ey = select i1 %.not.i48, i64 0, i64 %i.ex
  %.sroa.0.0.i49 = sub nuw i64 %i.ew, %i.ey
  store i64 %.sroa.0.0.i49, ptr %i.g, align 8, !alias.scope !120, !noalias !123
  %i.ez = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.ez, ptr %i.e, align 8, !alias.scope !120, !noalias !123
  %i.fa = icmp ult i64 %i.ez, %i.ex
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %i.k, align 8, !alias.scope !120, !noalias !123, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.ev ; 2 uses
  %.sroa.465.8.copyload = load ptr, ptr %i.fc, align 8, !noalias !120, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.666.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %.sroa.666.8.copyload = load i32, ptr %.sroa.666.8..sroa_idx, align 4, !noalias !120
  %i.fd = icmp ult ptr %.sroa.465.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %i.fd, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50: ; preds = %bb.ap
  %i.fe = ptrtoint ptr %.sroa.465.8.copyload to i64 ; 2 uses
  %i.ff = and i64 %i.fe, 1
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr i8, ptr %.sroa.465.8.copyload, i64 %i.fg ; 5 uses
  %i.fi = trunc i64 %i.fe to i1
  br i1 %i.fi, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ]
  br label %.sink.split.i.i.i54

bb.aq:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.0.0.i.i.i.i52.then.val = load i32, ptr %i.fj, align 4, !noalias !125, !noundef !5
  %i.fk = load i64, ptr %i.fh, align 8, !noalias !128, !noundef !5 ; 2 uses
  %i.fl = add i64 %i.fk, -1
  store i64 %i.fl, ptr %i.fh, align 8, !noalias !128
  %i.fm = icmp eq i64 %i.fk, 1
  br i1 %i.fm, label %.sink.split.i.i.i54, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

.sink.split.i.i.i54:                              ; preds = %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53
  %.sroa.0.0.i.i.i.i5281 = phi i32 [ %.sroa.0.0.i.i.i.i52.then.val, %bb.aq ], [ %.sroa.666.8.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53 ]
  %.sink.in.in.in.i.i.i55 = zext i32 %.sroa.0.0.i.i.i.i5281 to i64
  %.sink.in.in.i.i.i56 = add nuw nsw i64 %.sink.in.in.in.i.i.i55, 15
  %.sink.in.i.i.i57 = and i64 %.sink.in.in.i.i.i56, 8589934576
  %.sink.i.i.i58 = add nuw nsw i64 %.sink.in.i.i.i57, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fh, i64 noundef %.sink.i.i.i58, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !128
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread: ; preds = %bb.an, %bb.ap, %bb.aq, %.sink.split.i.i.i54
  %i.fn = load i64, ptr %1, align 8, !noundef !5
  %i.fo = add i64 %i.fn, 1
  br label %.sink.split

bb.ar:                                            ; preds = %bb.h, %bb.k
  %.pn26.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue20peek_front_chunk_mut(ptr noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20
  unreachable

_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !135, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !56, !alias.scope !135, !noundef !5 ; 2 uses
  %.not3.i.i = icmp ult i64 %i.h, %i.i
  %i.j = select i1 %.not3.i.i, i64 0, i64 %i.i
  %.sroa.01.0.i.i = sub nuw i64 %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !135, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.0.i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.m, %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -1, 1114112) i32 @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue4next(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !range !56, !noundef !5 ; 2 uses
  %.not8 = icmp ult i64 %i.g, %i.h
  %i.i = select i1 %.not8, i64 0, i64 %i.h
  %.sroa.05.0 = sub nuw i64 %i.g, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.sroa.05.0 ; 3 uses
  %i.m = tail call fastcc noundef i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.l) ; 3 uses
  %.not9 = icmp eq i32 %i.m, -1
  br i1 %.not9, label %bb.j, label %bb.g, !prof !89

.sink.split.sink.split:                           ; preds = %bb.o, %bb.p, %.sink.split.i.i.i, %bb.m, %bb.h
  %i.n = load i64, ptr %0, align 8, !noundef !5
  %i.o = add i64 %i.n, 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.b
  %.sink = phi i64 [ 0, %bb.b ], [ %i.o, %.sink.split.sink.split ]
  %.sroa.0.0.ph = phi i32 [ -1, %bb.b ], [ %i.m, %.sink.split.sink.split ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.i
  %.sroa.0.0 = phi i32 [ %i.m, %bb.i ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i32 %.sroa.0.0

bb.f:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load i64, ptr %0, align 8, !noundef !5
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %0, align 8
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp eq ptr %i.s, inttoptr (i64 15 to ptr)
  br i1 %i.t, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.u = load i64, ptr %0, align 8, !noundef !5
  %i.v = add i64 %i.u, 1                          ; 2 uses
  store i64 %i.v, ptr %0, align 8
  br label %bb.l
end_hunk_1
