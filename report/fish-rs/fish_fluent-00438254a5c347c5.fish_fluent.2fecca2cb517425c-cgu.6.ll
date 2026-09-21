Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_fluent-00438254a5c347c5.fish_fluent.2fecca2cb517425c-cgu.6?download=true
inline.NumInlined: 140
inline.NumDeleted: 74
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/git/checkouts/fluent-rs-d2e3265f5591e5e5/cf712bc/fluent-syntax/src/unicode.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00w\00\00\00\1B\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00]\00\00\00\1F\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00f\00\00\00!\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00h\00\00\00\11\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00i\00\00\005\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"d\00\00\00\00\00\00\00m\00\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@8 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@10 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/widestring-1.2.1/src/utfstr/iter.rs\00", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @10, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00$\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs476pBYQK2Ku_11fish_fluent }>, align 8
@13 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@14 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/string.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"K\00\00\00\00\00\00\00\96\0B\00\00\0E\00\00\00" }>, align 8
@16 = private unnamed_addr constant [5 x i8] c"Error", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs476pBYQK2Ku_11fish_fluent }>, align 8
@18 = private unnamed_addr constant [16 x i8] c"DecodeUtf32Error", align 1
@19 = private unnamed_addr constant [4 x i8] c"code", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs476pBYQK2Ku_11fish_fluent.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs476pBYQK2Ku_11fish_fluent.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs476pBYQK2Ku_11fish_fluent.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.ab
    i64 1, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !18, !alias.scope !19, !noundef !5 ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 3)
  switch i64 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent.exit [
    i64 0, label %bb.c
    i64 1, label %bb.y
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ReferenceKindECs476pBYQK2Ku_11fish_fluent.exit.sink.split.i: ; preds = %bb.y, %bb.v, %bb.q, %bb.g, %bb.d
  %.sink.i.sink.i = phi ptr [ %i.l, %bb.g ], [ %i.w, %bb.q ], [ %i.ae, %bb.v ], [ %i.i, %bb.d ], [ %i.aj, %bb.y ]
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i.sink.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent.exit

bb.c:                                             ; preds = %bb.b
  switch i64 %i.g, label %default.unreachable14.i.i [
    i64 0, label %bb.g
    i64 1, label %bb.j
    i64 2, label %bb.m
    i64 3, label %bb.d
  ]

default.unreachable14.i.i:                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ReferenceKindECs476pBYQK2Ku_11fish_fluent.exit.sink.split.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.e, %bb.h, %.body.i.i, %bb.r, %.body8.i.i, %bb.w, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.z ], [ %i.ah, %bb.w ], [ %eh.lpad-body9.i.i, %.body8.i.i ], [ %i.j, %bb.e ], [ %i.m, %bb.h ], [ %i.z, %bb.r ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.an, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ReferenceKindECs476pBYQK2Ku_11fish_fluent.exit.sink.split.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit5.i.i unwind label %bb.p

bb.m:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i7.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body8.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i7.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit10.i.i unwind label %bb.u

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.p, %bb.k
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.p, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #12
          to label %common.resume unwind label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit5.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs476pBYQK2Ku_11fish_fluent.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !4, !alias.scope !20, !noundef !5
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit5.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ReferenceKindECs476pBYQK2Ku_11fish_fluent.exit.sink.split.i unwind label %bb.r
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorECs476pBYQK2Ku_11fish_fluent:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.ab
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent.exit

bb.ae:                                            ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit10.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit5.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ReferenceKindECs476pBYQK2Ku_11fish_fluent.exit.sink.split.i, %bb.b, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs476pBYQK2Ku_11fish_fluent.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !24, !alias.scope !25, !noundef !5
  switch i32 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors9ErrorKindECs476pBYQK2Ku_11fish_fluent.exit [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 14, label %bb.k
    i32 15, label %bb.n
    i32 16, label %bb.q
  ]

.sink.split.i:                                    ; preds = %bb.q, %bb.n, %bb.k, %bb.h, %bb.e, %bb.b
  %.sink.i = phi ptr [ %i.o, %bb.n ], [ %i.l, %bb.k ], [ %i.i, %bb.h ], [ %i.f, %bb.e ], [ %i.c, %bb.b ], [ %i.r, %bb.q ]
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors9ErrorKindECs476pBYQK2Ku_11fish_fluent.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.sink.split.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume.i:                                  ; preds = %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.o ], [ %i.d, %bb.c ], [ %i.g, %bb.f ], [ %i.j, %bb.i ], [ %i.m, %bb.l ], [ %i.s, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.sink.split.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.sink.split.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.sink.split.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.n:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.sink.split.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.q:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.sink.split.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors9ErrorKindECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a, %.sink.split.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCscScUiD58tfT_13fluent_syntax7unicode16unescape_unicodeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %.not90.i = icmp eq i64 %2, 0
  br i1 %.not90.i, label %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread5, label %.lr.ph.lr.ph.i

_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread5: ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0), !noalias !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !68, !noalias !67, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i, %.lr.ph.lr.ph.i
  %.sroa.01.0.ph87.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %i.ba, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i ] ; 14 uses
  br label %bb.b

.outer._crit_edge.i:                              ; preds = %bb.ac
  %i.f = add nuw i64 %.sroa.01.0.ph87.i, 1
  %umax.le.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.f) ; 2 uses
  %i.g = icmp eq i64 %.sroa.01.0.ph87.i, 0
  br i1 %i.g, label %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit, label %bb.c

bb.b:                                             ; preds = %bb.ac, %.lr.ph.i
  %.sroa.01.082.i = phi i64 [ %.sroa.01.0.ph87.i, %.lr.ph.i ], [ %i.cj, %bb.ac ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.082.i
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !66, !noalias !65, !noundef !5
  %.not44.i = icmp eq i8 %i.i, 92
  br i1 %.not44.i, label %bb.e, label %bb.ac

bb.c:                                             ; preds = %.outer._crit_edge.i
  %.not.i = icmp ult i64 %.sroa.01.0.ph87.i, %2
  br i1 %.not.i, label %bb.d, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit51.thread57.i, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.ph87.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !69, !noalias !65, !noundef !5
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit51.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit51.thread57.i, !prof !6

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit51.thread57.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.0.ph87.i, i64 noundef %umax.le.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #13
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit51.thread.i: ; preds = %bb.d
  %i.m = sub nuw i64 %umax.le.i, %.sroa.01.0.ph87.i ; 3 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m), !noalias !70
  %i.n = load i64, ptr %i.d, align 8, !alias.scope !71, !noalias !72, !noundef !5 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %i.e, align 8, !alias.scope !71, !noalias !72, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.j, i64 %i.m, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !71, !noalias !72
  %i.r = add i64 %.pre.i.i.i.i, %i.m
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !71, !noalias !72
  br label %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread

bb.e:                                             ; preds = %bb.b
  %.not45.i = icmp eq i64 %.sroa.01.0.ph87.i, %.sroa.01.082.i
  br i1 %.not45.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %.sroa.01.0.ph87.i, 0
  br i1 %i.s, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit48.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.ph87.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !73, !noalias !65, !noundef !5
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit48.i, label %split.i, !prof !6

split.i:                                          ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.0.ph87.i, i64 noundef %.sroa.01.082.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit48.i: ; preds = %bb.g, %bb.f
  %i.w = sub nuw i64 %.sroa.01.082.i, %.sroa.01.0.ph87.i ; 3 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.w), !noalias !74
  %i.x = load i64, ptr %i.d, align 8, !alias.scope !75, !noalias !76, !noundef !5 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.ph87.i
  %i.aa = load ptr, ptr %i.e, align 8, !alias.scope !75, !noalias !76, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.z, i64 %i.w, i1 false)
  %.pre.i.i.i53.i = load i64, ptr %i.d, align 8, !alias.scope !75, !noalias !76
  %i.ac = add i64 %.pre.i.i.i53.i, %i.w
  store i64 %i.ac, ptr %i.d, align 8, !alias.scope !75, !noalias !76
  br label %bb.h

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit48.i, %bb.e
  %.sroa.01.08293.i = phi i64 [ %.sroa.01.082.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit48.i ], [ %.sroa.01.0.ph87.i, %bb.e ] ; 2 uses
  %i.ad = add nuw i64 %.sroa.01.082.i, 1          ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !66, !noalias !65, !noundef !5 ; 2 uses
  switch i8 %i.ag, label %.thread.i [
    i8 92, label %bb.j
    i8 34, label %bb.k
    i8 117, label %3
    i8 85, label %3
  ]

bb.j:                                             ; preds = %bb.i
  br label %.thread.i

bb.k:                                             ; preds = %bb.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.016.0.ph.i = phi i32 [ 65533, %bb.i ], [ 34, %bb.k ], [ 92, %bb.j ]
  %i.ah = add i64 %.sroa.01.08293.i, 2
  br label %bb.u

bb.l:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i, %bb.h
  %.sroa.016.0.i = phi i32 [ %i.az, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i ], [ 65533, %bb.h ]
  %.sroa.01.1.i = phi i64 [ %i.al, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.1.i, 1
  %i.aj = icmp eq i64 %.sroa.01.1.i, -1
  br i1 %i.aj, label %bb.ab, label %bb.u

3:                                                ; preds = %bb.i, %bb.i
  %4 = add nuw i64 %.sroa.01.08293.i, 2           ; 6 uses
  %.not115.i = icmp ugt i64 %4, %.sroa.01.082.i
  br i1 %.not115.i, label %bb.m, label %5

bb.m:                                             ; preds = %3
  %i.ak = icmp eq i8 %i.ag, 117
  %..i = select i1 %i.ak, i64 4, i64 6            ; 3 uses
  %i.al = add i64 %..i, %i.ad                     ; 2 uses
  %.not116.i = icmp ugt i64 %i.al, %.sroa.01.082.i
  br i1 %.not116.i, label %bb.n, label %bb.o

5:                                                ; preds = %3
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.am = add i64 %..i, %4                        ; 4 uses
  %i.an = icmp ult i64 %i.am, %4
  br i1 %i.an, label %bb.t, label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #13
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = icmp ugt i64 %i.am, %2
  br i1 %i.ao, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = icmp eq i64 %4, %2
  br i1 %i.ap, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.aq = icmp eq i64 %i.am, %2
  br i1 %i.aq, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !77, !noalias !65, !noundef !5
  %i.at = icmp sgt i8 %i.as, -65
  br i1 %i.at, label %bb.r, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i: ; preds = %bb.r, %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %4
  br label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !77, !noalias !65, !noundef !5
  %i.ax = icmp sgt i8 %i.aw, -65
  %spec.select.i = select i1 %i.ax, ptr %i.ar, ptr null
  br label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread68.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i, %bb.s, %bb.p
  %i.ay = phi ptr [ null, %bb.s ], [ %spec.select.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i ], [ %i.au, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread.i ], [ null, %bb.p ]
  %i.az = tail call noundef i32 @_RNvNtCscScUiD58tfT_13fluent_syntax7unicode14encode_unicode(ptr noalias nofree noundef readonly captures(address, read_provenance) %i.ay, i64 %..i)
  br label %bb.l

bb.t:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #13
  unreachable

bb.u:                                             ; preds = %bb.l, %.thread.i
  %i.ba = phi i64 [ %i.ah, %.thread.i ], [ %i.ai, %bb.l ] ; 2 uses
  %.sroa.016.065.i = phi i32 [ %.sroa.016.0.ph.i, %.thread.i ], [ %.sroa.016.0.i, %bb.l ] ; 8 uses
  %i.bb = load i64, ptr %i.d, align 8, !alias.scope !78, !noalias !66, !noundef !5 ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ult i32 %.sroa.016.065.i, 128
  br i1 %i.bd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = icmp samesign ult i32 %.sroa.016.065.i, 2048 ; 2 uses
  %i.bf = icmp samesign ult i32 %.sroa.016.065.i, 65536 ; 2 uses
  %..i.i.i = select i1 %i.bf, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i = select i1 %i.be, i64 2, i64 %..i.i.i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i.i.i)
  %i.bg = load ptr, ptr %i.e, align 8, !alias.scope !78, !noalias !66, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bb ; 9 uses
  %i.bi = trunc i32 %.sroa.016.065.i to i8
  %i.bj = and i8 %i.bi, 63
  %i.bk = or disjoint i8 %i.bj, -128              ; 3 uses
  %i.bl = lshr i32 %.sroa.016.065.i, 6
  %i.bm = trunc i32 %i.bl to i8                   ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128              ; 2 uses
  %i.bp = lshr i32 %.sroa.016.065.i, 12
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = lshr i32 %.sroa.016.065.i, 18
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = or disjoint i8 %i.bu, -16
  br i1 %i.be, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.bw = load ptr, ptr %i.e, align 8, !alias.scope !78, !noalias !66, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bb
  %i.by = trunc nuw nsw i32 %.sroa.016.065.i to i8
  store i8 %i.by, ptr %i.bx, align 1
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bz = or disjoint i8 %i.bm, -64
  store i8 %i.bz, ptr %i.bh, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bk, ptr %i.ca, align 1
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i

bb.y:                                             ; preds = %bb.v
  br i1 %i.bf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = or disjoint i8 %i.bq, -32
  store i8 %i.cb, ptr %i.bh, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bo, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bk, ptr %i.cd, align 1
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i

bb.aa:                                            ; preds = %bb.y
  store i8 %i.bv, ptr %i.bh, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bs, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bo, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  store i8 %i.bk, ptr %i.cg, align 1
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i: ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %.sroa.0.03.i.i.i = phi i64 [ 1, %bb.w ], [ 2, %bb.x ], [ 3, %bb.z ], [ 4, %bb.aa ]
  %i.ch = add nuw i64 %.sroa.0.03.i.i.i, %i.bb
  store i64 %i.ch, ptr %i.d, align 8, !alias.scope !78, !noalias !66
  %i.ci = icmp ult i64 %i.ba, %2
  br i1 %i.ci, label %.lr.ph.i, label %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread

bb.ab:                                            ; preds = %bb.l
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13
  unreachable

bb.ac:                                            ; preds = %bb.b
  %i.cj = add nuw i64 %.sroa.01.082.i, 1          ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %2
  br i1 %i.ck, label %bb.b, label %.outer._crit_edge.i

_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %.outer._crit_edge.i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !79
  %i.cl = load i64, ptr %i.d, align 8, !alias.scope !80, !noalias !79, !noundef !5 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = load ptr, ptr %i.e, align 8, !alias.scope !80, !noalias !79, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !80, !noalias !79
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread5, %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit
  %i.cp = phi ptr [ %i.d, %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit ], [ %i.a, %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread5 ]
  %i.cq = phi i64 [ %.pre.i.i.i, %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit ], [ %i.b, %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread5 ]
  %i.cr = add i64 %i.cq, %2
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !80, !noalias !79
  br label %_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread

_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit.thread: ; preds = %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char.exit.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit51.thread.i, %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2G_8adapters3map3MapIB3H_IB3H_INtNtNtB2I_5slice4iter4IterReENCNvMs4_BR_NtBR_8FtlFiles4iter0ENCNCNvBR_19AVAILABLE_LANGUAGES00ENCINvXs8_NtB9_3setINtB5Y_7HashSetBP_B1L_EIB2A_BP_E6extendB48_E0EEBR_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.f, 5
  %i.h = lshr i64 %i.f, 4
  %i.i = and i64 %i.h, 1
  %.sroa.0.0 = add nuw nsw i64 %i.i, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = lshr exact i64 %i.f, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
  tail call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterReENCNvMs4_Cs476pBYQK2Ku_11fish_fluentNtB1G_8FtlFiles4iter0ENCNCNvB1G_19AVAILABLE_LANGUAGES00ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3a_7HashSetNtB1G_26FluentLocalizationLanguageNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3T_E6extendBX_E0ENtNtB5k_8iterator8Iterator4folduNCINvNvB63_8for_each4callTB3T_uENCINvXs1i_NtB3c_3mapINtB7f_7HashMapB3T_uB4r_EIB5g_B6Y_E6extendBN_E0E0EB1G_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entryCs476pBYQK2Ku_11fish_fluent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #12
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.d = lshr i64 %i.b, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !94, !noalias !95, !noundef !5 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !94, !noalias !95, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !92, !noalias !91 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val2.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !92, !noalias !91, !nonnull !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.c ], [ %i.ae, %bb.e ]
  %.pn.i = phi i64 [ %i.b, %bb.c ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.g          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i25.i = load <16 x i8>, ptr %i.m, align 1, !noalias !96 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, %i.j
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not31.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.ad, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.thread.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.g
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [48 x i8], ptr %i.h, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -32
  %.val3.i.i = load i64, ptr %i.v, align 8, !noalias !97, !noundef !5
  %i.w = icmp eq i64 %.val3.i.i, %.val3.i.i.i
  br i1 %i.w, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.thread.i, !prof !6

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %i.u, i64 -40
  %.val2.i.i = load ptr, ptr %i.x, align 8, !noalias !97, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !97
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0ECs476pBYQK2Ku_11fish_fluent.exit, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.thread.i, !prof !98

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.thread.i, %bb.d
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.h, !prof !7

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.thread.i: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.i, %.lr.ph.i
  %i.ac = add i16 %.sroa.06.0.i32.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i32.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ae = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i, %i.ae
  br label %bb.d

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0ECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1u_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0E0Cs476pBYQK2Ku_11fish_fluent.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ah, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0ECs476pBYQK2Ku_11fish_fluent.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entry0ECs476pBYQK2Ku_11fish_fluent.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  invoke void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit
  ret void

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB11_3AnyNtNtB13_6marker4SendNtB2j_4SyncEL_ENtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE11rustc_entryCs476pBYQK2Ku_11fish_fluent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtBO_3any6TypeIdECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertBP_:bb.a
  %i.ap = zext nneg i16 %i.ao to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ap, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !150, !noalias !151, !nonnull !5, !noundef !5 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noalias !152, !noundef !5
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !150, !noalias !151, !noundef !5
  %i.ay = and i64 %i.ax, %i.aw
  store i8 %i.g, ptr %i.ar, align 1, !noalias !152
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store i8 %i.g, ptr %i.ba, align 1, !noalias !152
  %i.bb = load <2 x i64>, ptr %i.av, align 8, !alias.scope !150, !noalias !151
  %i.bc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bd = sub <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.av, align 8, !alias.scope !150, !noalias !151
  %i.be = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  store ptr %1, ptr %i.bg, align 8, !noalias !152
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store i64 %2, ptr %i.bh, align 8, !noalias !150
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2k_11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_.exit

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2k_11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_.exit: ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1B_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCslSwhfOFuxKz_17fish_localization8LanguageECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1E_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !164
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !165, !noalias !166, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !165, !noalias !166, !noundef !5 ; 3 uses
  %i.f = lshr i64 %i.d, 57
  %i.g = trunc nuw nsw i64 %i.f to i8             ; 3 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn.i.i = phi i64 [ %i.d, %bb.a ], [ %i.ai, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.4.120.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.04.122.i.i, %bb.e ]
  %i.j = phi i64 [ 0, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.k, align 1, !noalias !167 ; 3 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.i
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.m, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.029.i.i = phi i16 [ %i.x, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = add i64 %.sroa.0.017.i.i, %i.o
  %i.q = and i64 %i.p, %.val5.i
  %i.r = load ptr, ptr %0, align 8, !alias.scope !165, !noalias !168, !nonnull !5, !noundef !5
  %i.s = sub nsw i64 0, %i.q                      ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  %i.v = call noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtCslSwhfOFuxKz_17fish_localization8LanguageINtB2_10EquivalentBq_E10equivalentCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u), !noalias !169
  br i1 %i.v, label %bb.i, label %bb.c, !prof !8

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !prof !7

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = add i16 %.sroa.01.029.i.i, -1
  %i.x = and i16 %i.w, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.d
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.z, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.0.017.i.i, %i.ab
  %i.ad = and i64 %i.ac, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ad, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ah = add i64 %i.j, 16                        ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.0.017.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.am = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.an, 0
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ap, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !170, !noalias !171, !nonnull !5, !noundef !5 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !noalias !172, !noundef !5
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !170, !noalias !171, !noundef !5
  %i.ay = and i64 %i.ax, %i.aw
  store i8 %i.g, ptr %i.ar, align 1, !noalias !172
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  store i8 %i.g, ptr %i.ba, align 1, !noalias !172
  %i.bb = load <2 x i64>, ptr %i.av, align 8, !alias.scope !170, !noalias !171
  %i.bc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bd = sub <2 x i64> %i.bb, %i.bc
  store <2 x i64> %i.bd, ptr %i.av, align 8, !alias.scope !170, !noalias !171
  %i.be = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bf = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  store ptr %1, ptr %i.bg, align 8, !noalias !170
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -16
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !170
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !170
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !165, !noalias !166, !nonnull !5
  %i.bi = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.s
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !align !173, !noundef !5
  store ptr %3, ptr %i.bj, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ %i.bk, %bb.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs476pBYQK2Ku_11fish_fluentNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_13ToFluentValue15to_fluent_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !183
  store i64 0, ptr %i.d, align 8, !noalias !183
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !183
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !183
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.g, align 8, !noalias !183
  store ptr %i.d, ptr %i.c, align 8, !noalias !183
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @12, ptr %i.h, align 8, !noalias !183
  %.idx = shl nuw nsw i64 %.val1, 2
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.i10 = icmp eq i64 %.val1, 0
  br i1 %.not.not.not.i.not.not.not.i.not.i10, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.noexc5.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.not.not.i.not.not.not.i.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %.val, %bb.a ] ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !184, !noundef !5 ; 4 uses
  %i.m = xor i32 %i.l, 55296
  %i.n = add i32 %i.m, -1114112
  %i.o = icmp ult i32 %i.n, -1112064
  br i1 %i.o, label %.split.i.i.i.i, label %bb.c

.split.i.i.i.i:                                   ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !185
  store i32 %i.l, ptr %i.b, align 4, !noalias !185
  br label %.split.i.i.i.invoke.i

.split.i.i.i.invoke.i:                            ; preds = %.noexc5.i, %.split.i.i.i.i
  %i.p = phi ptr [ @8, %.split.i.i.i.i ], [ @13, %.noexc5.i ]
  %i.q = phi i64 [ 43, %.split.i.i.i.i ], [ 55, %.noexc5.i ]
  %i.r = phi ptr [ %i.b, %.split.i.i.i.i ], [ %i.a, %.noexc5.i ]
  %i.s = phi ptr [ @7, %.split.i.i.i.i ], [ @9, %.noexc5.i ]
  %i.t = phi ptr [ @11, %.split.i.i.i.i ], [ @15, %.noexc5.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q, ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #13
          to label %.split.i.i.i.cont.i unwind label %.loopexit.split-lp.i, !noalias !183

.split.i.i.i.cont.i:                              ; preds = %.split.i.i.i.invoke.i
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.u = icmp ult i32 %i.l, 1114112
  call void @llvm.assume(i1 %i.u)
  %i.v = invoke noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef range(i32 0, 1114112) %i.l)
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !183

.noexc5.i:                                        ; preds = %bb.c
  br i1 %i.v, label %.split.i.i.i.invoke.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %.split.i.i.i.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #12
          to label %.body unwind label %bb.e, !noalias !183

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !183
  unreachable

.body:                                            ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #12
          to label %common.resume unwind label %bb.h

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !183
  store i64 2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.f ], [ %lpad.phi.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %._crit_edge
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.h:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_Cs476pBYQK2Ku_11fish_fluentRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_13ToFluentValue15to_fluent_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !195
  store i64 0, ptr %i.d, align 8, !noalias !195
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !195
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.g, align 8, !noalias !195
  store ptr %i.d, ptr %i.c, align 8, !noalias !195
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @12, ptr %i.h, align 8, !noalias !195
  %.idx = shl nuw nsw i64 %.val1, 2
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.i10 = icmp eq i64 %.val1, 0
  br i1 %.not.not.not.i.not.not.not.i.not.i10, label %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_12SpecToString14spec_to_stringCs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

bb.b:                                             ; preds = %.noexc5.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.not.not.i.not.not.not.i.not.i, label %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_12SpecToString14spec_to_stringCs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %.val, %bb.a ] ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !196, !noundef !5 ; 4 uses
  %i.m = xor i32 %i.l, 55296
  %i.n = add i32 %i.m, -1114112
  %i.o = icmp ult i32 %i.n, -1112064
  br i1 %i.o, label %.split.i.i.i.i, label %bb.c

.split.i.i.i.i:                                   ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !197
  store i32 %i.l, ptr %i.b, align 4, !noalias !197
  br label %.split.i.i.i.invoke.i

.split.i.i.i.invoke.i:                            ; preds = %.noexc5.i, %.split.i.i.i.i
  %i.p = phi ptr [ @8, %.split.i.i.i.i ], [ @13, %.noexc5.i ]
  %i.q = phi i64 [ 43, %.split.i.i.i.i ], [ 55, %.noexc5.i ]
  %i.r = phi ptr [ %i.b, %.split.i.i.i.i ], [ %i.a, %.noexc5.i ]
  %i.s = phi ptr [ @7, %.split.i.i.i.i ], [ @9, %.noexc5.i ]
  %i.t = phi ptr [ @11, %.split.i.i.i.i ], [ @15, %.noexc5.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q, ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #13
          to label %.split.i.i.i.cont.i unwind label %.loopexit.split-lp.i, !noalias !195

.split.i.i.i.cont.i:                              ; preds = %.split.i.i.i.invoke.i
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.u = icmp ult i32 %i.l, 1114112
  call void @llvm.assume(i1 %i.u)
  %i.v = invoke noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef range(i32 0, 1114112) %i.l)
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !195

.noexc5.i:                                        ; preds = %bb.c
  br i1 %i.v, label %.split.i.i.i.invoke.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %.split.i.i.i.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #12
          to label %bb.f unwind label %bb.e, !noalias !195

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11, !noalias !195
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi.i

_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_12SpecToString14spec_to_stringCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !195
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !200, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !200, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !200, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !200
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !206
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !207, !noalias !206, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !207, !noalias !206, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !207, !noalias !206
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !207, !noalias !206
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 72                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorECs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorECs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #12
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 72                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorECs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorECs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #12
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs3zOvCg6Ax1K_13fluent_bundle6bundle12FluentBundleNtNtB1E_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1y_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors11ParserErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114112) i32 @_RNvNtCscScUiD58tfT_13fluent_syntax7unicode14encode_unicode(ptr noalias nofree noundef readonly captures(address, read_provenance), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterReENCNvMs4_Cs476pBYQK2Ku_11fish_fluentNtB1G_8FtlFiles4iter0ENCNCNvB1G_19AVAILABLE_LANGUAGES00ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3a_7HashSetNtB1G_26FluentLocalizationLanguageNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3T_E6extendBX_E0ENtNtB5k_8iterator8Iterator4folduNCINvNvB63_8for_each4callTB3T_uENCINvXs1i_NtB3c_3mapINtB7f_7HashMapB3T_uB4r_EIB5g_B6Y_E6extendBN_E0E0EB1G_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageINtB2_10EquivalentBq_E10equivalentBs_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtCslSwhfOFuxKz_17fish_localization8LanguageINtB2_10EquivalentBq_E10equivalentCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtBO_3any6TypeIdECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_NtCs7uGFxfuzPp2_10rustc_hash13FxBuildHasherE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeENtNtNtCs3zOvCg6Ax1K_13fluent_bundle5types6plural11PluralRulesEE7reserveNCINvNtB8_3map11make_hasherBQ_B1G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEB1H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCslSwhfOFuxKz_17fish_localization8LanguageECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold }
attributes #13 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{!"branch_weights", i32 2146410443, i32 1073205}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent"}
!10 = distinct !{!10, !9, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ResolverErrorECs476pBYQK2Ku_11fish_fluent: argument 0"}
!11 = distinct !{!11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ReferenceKindECs476pBYQK2Ku_11fish_fluent"}
!12 = distinct !{!12, !11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver6errors13ReferenceKindECs476pBYQK2Ku_11fish_fluent: argument 0"}
!13 = distinct !{!13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs476pBYQK2Ku_11fish_fluent"}
!14 = distinct !{!14, !13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs476pBYQK2Ku_11fish_fluent: argument 0"}
!15 = distinct !{!15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs476pBYQK2Ku_11fish_fluent"}
!16 = distinct !{!16, !15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs476pBYQK2Ku_11fish_fluent: argument 0"}
!17 = !{i64 0, i64 5}
!18 = !{i64 0, i64 8}
!19 = !{!10}
!20 = !{!14, !12, !10}
!21 = !{!16, !12, !10}
!22 = distinct !{!22, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors9ErrorKindECs476pBYQK2Ku_11fish_fluent"}
!23 = distinct !{!23, !22, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCscScUiD58tfT_13fluent_syntax6parser6errors9ErrorKindECs476pBYQK2Ku_11fish_fluent: argument 0"}
!24 = !{i32 0, i32 21}
!25 = !{!23}
!26 = distinct !{!26, !"_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent"}
!27 = distinct !{!27, !26, !"_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent: argument 0"}
!28 = distinct !{!28, !26, !"_RINvNtCscScUiD58tfT_13fluent_syntax7unicode8unescapeNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent: argument 1"}
!29 = distinct !{!29, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str"}
!30 = distinct !{!30, !29, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str: argument 1:thread"}
!31 = distinct !{!31, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str"}
!32 = distinct !{!32, !31, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 1"}
!33 = distinct !{!33, !29, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str: argument 0:thread"}
!34 = distinct !{!34, !31, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 0"}
!35 = distinct !{!35, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs476pBYQK2Ku_11fish_fluent"}
!36 = distinct !{!36, !35, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs476pBYQK2Ku_11fish_fluent: argument 0"}
!37 = distinct !{!37, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range"}
!38 = distinct !{!38, !37, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range: argument 0"}
!39 = distinct !{!39, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str"}
!40 = distinct !{!40, !39, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str: argument 1"}
!41 = distinct !{!41, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str"}
!42 = distinct !{!42, !41, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 1"}
!43 = distinct !{!43, !39, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str: argument 0"}
!44 = distinct !{!44, !41, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 0"}
!45 = distinct !{!45, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs476pBYQK2Ku_11fish_fluent"}
!46 = distinct !{!46, !45, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs476pBYQK2Ku_11fish_fluent: argument 0"}
!47 = distinct !{!47, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range"}
!48 = distinct !{!48, !47, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range: argument 0"}
!49 = distinct !{!49, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str"}
!50 = distinct !{!50, !49, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str: argument 1"}
!51 = distinct !{!51, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str"}
!52 = distinct !{!52, !51, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 1"}
!53 = distinct !{!53, !49, !"_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str: argument 0"}
!54 = distinct !{!54, !51, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 0"}
!55 = distinct !{!55, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs476pBYQK2Ku_11fish_fluent"}
!56 = distinct !{!56, !55, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs476pBYQK2Ku_11fish_fluent: argument 0"}
!57 = distinct !{!57, !"_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range"}
end_hunk_2
