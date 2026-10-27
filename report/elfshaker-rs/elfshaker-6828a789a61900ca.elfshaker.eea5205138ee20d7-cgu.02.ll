Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.02?download=true
inline.NumInlined: 801
inline.NumDeleted: 529
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/block-buffer-0.10.4/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"c\00\00\00\00\00\00\00\A4\00\00\00 \00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"c\00\00\00\00\00\00\00\AE\00\00\00\1A\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"c\00\00\00\00\00\00\00\9D\00\00\00%\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"c\00\00\00\00\00\00\008\01\00\00\1E\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"c\00\00\00\00\00\00\005\01\00\00\18\00\00\00" }>, align 8
@6 = private unnamed_addr constant [36 x i8] c"\1Bcouldn't copy loose object \C0\04 to \C0\00", align 1
@7 = private unnamed_addr constant [23 x i8] c"src/repo/repository.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\16\00\00\00\00\00\00\00\A1\04\00\007\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\16\00\00\00\00\00\00\00\C2\03\00\00L\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"\16\00\00\00\00\00\00\00\C5\03\00\00G\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEEEB3e_, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB2K_ }>, align 8
@12 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorEBH_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXse_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_7IdErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@14 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sha1-0.10.6/src/lib.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"[\00\00\00\00\00\00\00q\00\00\00\13\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCskuiImRAV2ip_9elfshaker }>, align 8
@17 = private unnamed_addr constant [9 x i8] c"BadFormat", align 1
@18 = private unnamed_addr constant [11 x i8] c"InvalidPack", align 1
@19 = private unnamed_addr constant [15 x i8] c"InvalidSnapshot", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(i8 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq i8 %.0.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %bb.e
  ], !prof !6

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !21
  store i8 3, ptr %i.a, align 8, !alias.scope !21
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryECskuiImRAV2ip_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTyINtNtCs1xwejQucwHj_5alloc3vec3VechEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTyINtNtCs1xwejQucwHj_5alloc3vec3VechEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %bb.g
  ], !prof !6

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !24
  store i8 3, ptr %i.a, align 8, !alias.scope !24
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.e, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTyINtNtCs1xwejQucwHj_5alloc3vec3VechEEECskuiImRAV2ip_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !55, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !55
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexEBF_:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body8 unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBI_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body8 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBP_10FileHandleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEEB1d_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body8:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.h) #18
          to label %.body10 unwind label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEEB1d_.exit: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEEB1d_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.body.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1b_10FileHandleEEEB1d_.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.j
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.m ], [ %i.k, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.body10 unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_.exit unwind label %bb.o

bb.n:                                             ; preds = %.body.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body10:                                          ; preds = %bb.o, %.body.i, %.body8
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body8 ], [ %i.r, %bb.o ], [ %eh.lpad-body.i, %.body.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #18
          to label %.body14 unwind label %bb.w

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECskuiImRAV2ip_9elfshaker.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECskuiImRAV2ip_9elfshaker.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %.body.i12 unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i12

.body.i12:                                        ; preds = %bb.s, %bb.p
  %eh.lpad-body.i13 = phi { ptr, i32 } [ %i.v, %bb.s ], [ %i.t, %bb.p ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %.body14 unwind label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit unwind label %bb.u

bb.t:                                             ; preds = %.body.i12
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body14:                                          ; preds = %bb.u, %.body.i12, %.body10
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body10 ], [ %i.aa, %bb.u ], [ %eh.lpad-body.i13, %.body.i12 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_.exit unwind label %bb.w

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECskuiImRAV2ip_9elfshaker.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECskuiImRAV2ip_9elfshaker.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_RNvXNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB2_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_.exit16 unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_.exit: ; preds = %.body14, %bb.v
  %.pn6 = phi { ptr, i32 } [ %i.ad, %bb.v ], [ %.pn4, %.body14 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1A_.exit unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_.exit16: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
  ret void

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_.exit, %.body14, %.body10, %.body8, %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1A_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1F_.exit
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskuiImRAV2ip_9elfshaker.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %bb.c
  ], !prof !6

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskuiImRAV2ip_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !306
  store i8 3, ptr %i.a, align 8, !alias.scope !306
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !320, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !320, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #19, !noalias !320
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i.i = load i32, ptr %i.d, align 8, !range !13, !alias.scope !320, !noundef !5
  %i.e = tail call noundef i32 @close(i32 noundef %.val2.i.i.i) #19, !noalias !320 ; 0 uses
  %i.f = load i64, ptr %0, align 8, !range !14, !alias.scope !321, !noundef !5
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs6_CscCEFg35tJHG_9zstd_safeNtB5_4DCtxNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.c ], [ %i.g, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.e, %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !345, !noundef !5 ; 2 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775807
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808       ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %.unreachabledefault [
    i64 0, label %bb.h
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.o
    i64 4, label %bb.aw
    i64 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
    i64 6, label %bb.ax
    i64 7, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
    i64 8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
    i64 9, label %bb.az
    i64 10, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit
    i64 11, label %bb.bc
    i64 12, label %bb.bf
    i64 13, label %bb.bi
    i64 14, label %bb.bl
    i64 15, label %bb.b
  ]

.unreachabledefault:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.k, align 8            ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.l, align 8, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.m = load ptr, ptr %.val2, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  invoke void %i.m(ptr noundef nonnull %.val1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !17, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !17, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #19
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.bu, %.body.i11, %bb.bq, %bb.bj, %bb.bg, %bb.bd, %bb.q, %bb.ag, %bb.aj, %bb.an, %.body.i, %bb.at, %bb.m, %bb.f, %bb.g, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %i.dz, %bb.bu ], [ %i.s, %bb.f ], [ %i.ah, %bb.m ], [ %i.cy, %bb.ay ], [ %eh.lpad-body.i, %.body.i ], [ %i.dd, %bb.bd ], [ %i.dg, %bb.bg ], [ %i.dj, %bb.bj ], [ %eh.lpad-body.i12, %.body.i11 ], [ %i.s, %bb.g ], [ %i.cs, %bb.at ], [ %i.aq, %bb.q ], [ %i.by, %bb.aj ], [ %i.cf, %bb.an ], [ %i.bv, %bb.ag ], [ %i.dt, %bb.bq ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = ptrtoint ptr %.val to i64                ; 2 uses
  %i.aa = and i64 %i.z, 3
  switch i64 %i.aa, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 3, label %bb.i
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit
    i64 1, label %bb.j
  ], !prof !6

default.unreachable:                              ; preds = %bb.ap, %bb.ac, %bb.z, %bb.v, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.ac = and i64 %i.z, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  tail call void @llvm.assume(i1 %i.ab)
  tail call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !346
  store i8 3, ptr %i.e, align 8, !alias.scope !346
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.k:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.l:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.o:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.ak = load i64, ptr %i.aj, align 8, !range !348, !alias.scope !347, !noundef !5 ; 3 uses
  %i.al = icmp ne i64 %i.ak, -9223372036854775804
  tail call void @llvm.assume(i1 %i.al)
  %i.am = xor i64 %i.ak, -9223372036854775808
  %i.an = icmp slt i64 %i.ak, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 4
  switch i64 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit [
    i64 3, label %bb.p
    i64 4, label %bb.s
    i64 6, label %bb.v
    i64 7, label %bb.y
    i64 8, label %bb.al
  ]

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.p
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.s:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %.body.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit2.i unwind label %bb.as

bb.v:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.au, align 8, !alias.scope !347, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !347
  %i.av = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i
    i64 3, label %bb.w
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i
    i64 1, label %bb.x
  ], !prof !6

bb.w:                                             ; preds = %bb.v
  %i.ax = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.ay = and i64 %i.av, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  tail call void @llvm.assume(i1 %i.ax)
  tail call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !349, !noalias !347
  store i8 3, ptr %i.d, align 8, !alias.scope !349, !noalias !347
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb), !noalias !347
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !347
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit

bb.y:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.bd = load i8, ptr %i.bc, align 8, !range !351, !alias.scope !352, !noundef !5
  switch i8 %i.bd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskuiImRAV2ip_9elfshaker.exit [
    i8 0, label %bb.z
    i8 1, label %bb.ac
    i8 5, label %bb.af
    i8 6, label %bb.ai
  ]

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.be, align 8, !alias.scope !352, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !352
  %i.bf = ptrtoint ptr %.val1.i.i to i64          ; 2 uses
  %i.bg = and i64 %i.bf, 3
  switch i64 %i.bg, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 3, label %bb.aa
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 1, label %bb.ab
  ], !prof !6

bb.aa:                                            ; preds = %bb.z
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote11RemoteIndexEBH_:bb.a
common.resume:                                    ; preds = %.body9, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn2, %.body9 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote10RemotePackEEB1e_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit12
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote10RemotePackENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  ret void

bb.n:                                             ; preds = %.body9, %.body4, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1D_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.0.010 ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %i.d = load i64, ptr %i.b, align 8, !range !8, !alias.scope !366, !noundef !5
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_.exit unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i
  %i.i = icmp eq i64 %i.c, %1
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_.exit, %bb.a
  ret void

bb.f:                                             ; preds = %.lr.ph22
  %i.j = add i64 %.sroa.0.121, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.j, %1
  br i1 %i.k, label %._crit_edge23, label %.lr.ph22

bb.g:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.g, %bb.c ]
  %i.m = icmp eq i64 %i.c, %1
  br i1 %i.m, label %._crit_edge23, label %.lr.ph22

.lr.ph22:                                         ; preds = %.body, %bb.f
  %.sroa.0.121 = phi i64 [ %i.j, %bb.f ], [ %i.c, %.body ] ; 2 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.0.121
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.n) #18
          to label %bb.f unwind label %bb.h

._crit_edge23:                                    ; preds = %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %.lr.ph22
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBI_7packidx9FileEntryEEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !383, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !383, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #19, !noalias !383
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i.i.i = load i32, ptr %i.d, align 8, !range !13, !alias.scope !383, !noundef !5
  %i.e = tail call noundef i32 @close(i32 noundef %.val2.i.i.i.i) #19, !noalias !383 ; 0 uses
  %i.f = load i64, ptr %0, align 8, !range !14, !alias.scope !384, !noundef !5
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEBH_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs6_CscCEFg35tJHG_9zstd_safeNtB5_4DCtxNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEBH_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #18
          to label %common.resume unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEBH_.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1c_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEBH_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1c_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderEBH_.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2b_2io5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB3n_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB46_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B46_zEB46_ENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufB26_NCINvNtB7K_5batch17compute_checksumsB8A_E0INtNtNtB2b_5slice4iter4IterB8A_EE0s_0NCINvXB4S_INtB4S_12GenericShuntINtB4Q_3MapBI_B7z_EIB27_zB5B_EEB3h_8try_foldB46_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B7j_E0E0B6D_EB7K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.f
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.4.018 = phi ptr [ %3, %.lr.ph ], [ %i.ag, %bb.o ] ; 7 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !391
  store ptr %2, ptr %i.d, align 8, !noalias !391
  store ptr %.sroa.4.018, ptr %i.h, align 8, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !391
  invoke void @_RNvMs4_NtCs1ftIqucrW6Z_15crossbeam_utils6threadINtB5_16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1J_2io5error5ErrorEEE4joinCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1E_2io5error5ErrorENCINvNtBa_5batch17compute_checksumsB10_E0INtNtNtB1E_5slice4iter4IterB10_EE0s_0Ba_.exit.i unwind label %bb.l, !noalias !391

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1E_2io5error5ErrorENCINvNtBa_5batch17compute_checksumsB10_E0INtNtNtB1E_5slice4iter4IterB10_EE0s_0Ba_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !391
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !391 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !391 ; 4 uses
  %.sroa.7.16.copyload.i = load ptr, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !391 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !391
  store ptr %2, ptr %i.a, align 8, !noalias !392
  store ptr %.sroa.4.018, ptr %i.i, align 8, !noalias !392
  %i.l = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %i.l, label %bb.c, label %bb.o

bb.c:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1E_2io5error5ErrorENCINvNtBa_5batch17compute_checksumsB10_E0INtNtNtB1E_5slice4iter4IterB10_EE0s_0Ba_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i), "nonnull"(ptr %.sroa.7.16.copyload.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !392, !noundef !5 ; 4 uses
  %i.n = getelementptr i8, ptr %.val.le, i64 8    ; 3 uses
  %.val6.i.i = load ptr, ptr %i.n, align 8, !noalias !392 ; 6 uses
  %i.o = icmp eq ptr %.val.i.i, null
  br i1 %i.o, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.p = load ptr, ptr %.val6.i.i, align 8, !invariant.load !5, !noalias !392 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !392

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !16, !invariant.load !5, !noalias !392 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !5, !noalias !392
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #19, !noalias !392
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !5, !noalias !392 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !5, !noalias !392
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #19, !noalias !392
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !392
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !392
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.k, !noalias !392

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !392
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.j
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.v, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.l:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #18
          to label %.body.i unwind label %bb.m, !noalias !391

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !391
  unreachable

._crit_edge:                                      ; preds = %bb.o, %bb.a, %bb.n
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.018, %bb.n ], [ %3, %bb.a ], [ %i.ag, %bb.o ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.o ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.af, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.g
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !392
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !391
  br label %._crit_edge

bb.o:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB1E_2io5error5ErrorENCINvNtBa_5batch17compute_checksumsB10_E0INtNtNtB1E_5slice4iter4IterB10_EE0s_0Ba_.exit.i
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.018, align 8, !noalias !392
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !392
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 16
  store ptr %.sroa.7.16.copyload.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !392
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !391
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB4c_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4V_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4V_zEB4V_ENCNCINvNtB3l_4algo15run_in_parallelRNtNtB3n_7packidx9FileEntryB26_NCNvMs0_NtB3l_10repositoryNtB9A_10Repository18copy_loose_entries0INtNtNtB2b_5slice4iter4IterB8Y_EE0s_0NCINvXB5H_INtB5H_12GenericShuntINtB5F_3MapBI_B8o_EIB27_zB6q_EEB46_8try_foldB4V_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B88_E0E0B7s_EB3n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.f
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.4.018 = phi ptr [ %3, %.lr.ph ], [ %i.ag, %bb.o ] ; 7 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !399
  store ptr %2, ptr %i.d, align 8, !noalias !399
  store ptr %.sroa.4.018, ptr %i.h, align 8, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !399
  invoke void @_RNvMs4_NtCs1ftIqucrW6Z_15crossbeam_utils6threadINtB5_16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE4joinB2V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBa_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB32_10Repository18copy_loose_entries0INtNtNtB1u_5slice4iter4IterB10_EE0s_0Ba_.exit.i unwind label %bb.l, !noalias !399

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBa_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB32_10Repository18copy_loose_entries0INtNtNtB1u_5slice4iter4IterB10_EE0s_0Ba_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !399
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !399 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !399 ; 4 uses
  %.sroa.7.16.copyload.i = load ptr, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !399 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  store ptr %2, ptr %i.a, align 8, !noalias !400
  store ptr %.sroa.4.018, ptr %i.i, align 8, !noalias !400
  %i.l = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %i.l, label %bb.c, label %bb.o

bb.c:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBa_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB32_10Repository18copy_loose_entries0INtNtNtB1u_5slice4iter4IterB10_EE0s_0Ba_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i), "nonnull"(ptr %.sroa.7.16.copyload.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !400, !noundef !5 ; 4 uses
  %i.n = getelementptr i8, ptr %.val.le, i64 8    ; 3 uses
  %.val6.i.i = load ptr, ptr %i.n, align 8, !noalias !400 ; 6 uses
  %i.o = icmp eq ptr %.val.i.i, null
  br i1 %i.o, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.p = load ptr, ptr %.val6.i.i, align 8, !invariant.load !5, !noalias !400 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !400

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !16, !invariant.load !5, !noalias !400 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !5, !noalias !400
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #19, !noalias !400
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !5, !noalias !400 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !5, !noalias !400
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #19, !noalias !400
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !400
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !400
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.k, !noalias !400

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !400
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.j
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.v, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.l:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2J_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #18
          to label %.body.i unwind label %bb.m, !noalias !399

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !399
  unreachable

._crit_edge:                                      ; preds = %bb.o, %bb.a, %bb.n
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.018, %bb.n ], [ %3, %bb.a ], [ %i.ag, %bb.o ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.o ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.af, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.g
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !400
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !399
  br label %._crit_edge

bb.o:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBa_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB32_10Repository18copy_loose_entries0INtNtNtB1u_5slice4iter4IterB10_EE0s_0Ba_.exit.i
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.018, align 8, !noalias !400
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 16
  store ptr %.sroa.7.16.copyload.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !400
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !399
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2M_5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB44_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4N_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4N_zEB4N_ENCNCINvNtB2M_4algo15run_in_parallelTNtB2K_10PackReaderIB1X_NtNtB2O_7packidx9FileEntryEEB26_NCINvMsa_B2K_NtB2K_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IBJ_B8P_EE0s_0NCINvXB5z_INtB5z_12GenericShuntINtB5x_3MapBI_B8g_EIB27_zB6i_EEB3Y_8try_foldB4N_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B80_E0E0B7k_EB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.f
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.4.018 = phi ptr [ %3, %.lr.ph ], [ %i.ag, %bb.o ] ; 7 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !407
  store ptr %2, ptr %i.d, align 8, !noalias !407
  store ptr %.sroa.4.018, ptr %i.h, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !407
  invoke void @_RNvMs4_NtCs1ftIqucrW6Z_15crossbeam_utils6threadINtB5_16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2k_5error5ErrorEEE4joinB2m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB8_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBa_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB12_12ExtractStatsNtNtB8_5error5ErrorENCINvMsa_B12_NtB12_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB1r_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i unwind label %bb.l, !noalias !407

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB8_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBa_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB12_12ExtractStatsNtNtB8_5error5ErrorENCINvMsa_B12_NtB12_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB1r_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !407
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !407 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !407 ; 4 uses
  %.sroa.7.16.copyload.i = load ptr, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !407 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !407
  store ptr %2, ptr %i.a, align 8, !noalias !408
  store ptr %.sroa.4.018, ptr %i.i, align 8, !noalias !408
  %i.l = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %i.l, label %bb.c, label %bb.o

bb.c:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB8_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBa_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB12_12ExtractStatsNtNtB8_5error5ErrorENCINvMsa_B12_NtB12_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB1r_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i), "nonnull"(ptr %.sroa.7.16.copyload.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !408, !noundef !5 ; 4 uses
  %i.n = getelementptr i8, ptr %.val.le, i64 8    ; 3 uses
  %.val6.i.i = load ptr, ptr %i.n, align 8, !noalias !408 ; 6 uses
  %i.o = icmp eq ptr %.val.i.i, null
  br i1 %i.o, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.p = load ptr, ptr %.val6.i.i, align 8, !invariant.load !5, !noalias !408 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !408

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !16, !invariant.load !5, !noalias !408 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !5, !noalias !408
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #19, !noalias !408
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !5, !noalias !408 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !5, !noalias !408
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #19, !noalias !408
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !408
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !408
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB28_5error5ErrorEEEEB2a_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.k, !noalias !408

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !408
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.j
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.v, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.l:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB28_5error5ErrorEEEEB2a_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #18
          to label %.body.i unwind label %bb.m, !noalias !407

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !407
  unreachable

._crit_edge:                                      ; preds = %bb.o, %bb.a, %bb.n
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.018, %bb.n ], [ %3, %bb.a ], [ %i.ag, %bb.o ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.o ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.af, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.g
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !408
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !407
  br label %._crit_edge

bb.o:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB8_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBa_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB12_12ExtractStatsNtNtB8_5error5ErrorENCINvMsa_B12_NtB12_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB1r_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.018, align 8, !noalias !408
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !408
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 16
  store ptr %.sroa.7.16.copyload.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !408
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !407
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1X_hEENtNtNtB2b_2io5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB3r_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4a_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4a_zEB4a_ENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmB26_NCNvMs0_NtB7M_10repositoryNtB8S_10Repository11create_pack0IBJ_B8D_EE0s_0NCINvXB4W_INtB4W_12GenericShuntINtB4U_3MapBI_B7D_EIB27_zB5F_EEB3l_8try_foldB4a_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B7n_E0E0B6H_EB7O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.f
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.4.018 = phi ptr [ %3, %.lr.ph ], [ %i.ag, %bb.o ] ; 7 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !415
  store ptr %2, ptr %i.d, align 8, !noalias !415
  store ptr %.sroa.4.018, ptr %i.h, align 8, !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !415
  invoke void @_RNvMs4_NtCs1ftIqucrW6Z_15crossbeam_utils6threadINtB5_16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB18_hEENtNtNtB1J_2io5error5ErrorEEE4joinCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB17_2io5error5ErrorENCNvMs0_NtB8_10repositoryNtB2O_10Repository11create_pack0INtNtB1J_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i unwind label %bb.l, !noalias !415

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB17_2io5error5ErrorENCNvMs0_NtB8_10repositoryNtB2O_10Repository11create_pack0INtNtB1J_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !415
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !415 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !415 ; 4 uses
  %.sroa.7.16.copyload.i = load ptr, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !415 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !415
  store ptr %2, ptr %i.a, align 8, !noalias !416
  store ptr %.sroa.4.018, ptr %i.i, align 8, !noalias !416
  %i.l = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %i.l, label %bb.c, label %bb.o

bb.c:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB17_2io5error5ErrorENCNvMs0_NtB8_10repositoryNtB2O_10Repository11create_pack0INtNtB1J_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i), "nonnull"(ptr %.sroa.7.16.copyload.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !416, !noundef !5 ; 4 uses
  %i.n = getelementptr i8, ptr %.val.le, i64 8    ; 3 uses
  %.val6.i.i = load ptr, ptr %i.n, align 8, !noalias !416 ; 6 uses
  %i.o = icmp eq ptr %.val.i.i, null
  br i1 %i.o, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.p = load ptr, ptr %.val6.i.i, align 8, !invariant.load !5, !noalias !416 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !416

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !16, !invariant.load !5, !noalias !416 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !5, !noalias !416
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #19, !noalias !416
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !5, !noalias !416 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !5, !noalias !416
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #19, !noalias !416
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !416
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !416
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultTyIB1z_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.k, !noalias !416

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !416
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.j
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.v, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.l:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultTyIB1z_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #18
          to label %.body.i unwind label %bb.m, !noalias !415

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !415
  unreachable

._crit_edge:                                      ; preds = %bb.o, %bb.a, %bb.n
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.018, %bb.n ], [ %3, %bb.a ], [ %i.ag, %bb.o ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.o ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.af, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.g
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !416
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !415
  br label %._crit_edge

bb.o:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB17_2io5error5ErrorENCNvMs0_NtB8_10repositoryNtB2O_10Repository11create_pack0INtNtB1J_9into_iter8IntoIterBZ_EE0s_0Ba_.exit.i
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.018, align 8, !noalias !416
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !416
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 16
  store ptr %.sroa.7.16.copyload.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !416
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !415
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB8_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1W_ENCINvNtNtB3E_8adapters3map12map_try_foldBX_IB27_B1W_INtNtBa_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEB4n_INtNtNtB2b_3ops12control_flow11ControlFlowIB27_B4n_zEB4n_ENCNCINvNtB2N_4algo15run_in_parallelRNtNtB2N_4pack6PackIdB26_NCNvMs0_NtB2N_10repositoryNtB8W_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB8q_EE0s_0NCINvXB59_INtB59_12GenericShuntINtB57_3MapBI_B7Q_EIB27_zB5S_EEB3y_8try_foldB4n_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1W_E0B7A_E0E0B6U_EB2P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.f
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.4.018 = phi ptr [ %3, %.lr.ph ], [ %i.ag, %bb.o ] ; 7 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !423
  store ptr %2, ptr %i.d, align 8, !noalias !423
  store ptr %.sroa.4.018, ptr %i.h, align 8, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !423
  invoke void @_RNvMs4_NtCs1ftIqucrW6Z_15crossbeam_utils6threadINtB5_16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEE4joinB2n_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB8_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB2o_10Repository24find_duplicate_snapshots0QINtNtNtB1o_5slice4iter4IterB10_EE0s_0Ba_.exit.i unwind label %bb.l, !noalias !423

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB8_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB2o_10Repository24find_duplicate_snapshots0QINtNtNtB1o_5slice4iter4IterB10_EE0s_0Ba_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !423
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !423 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !423 ; 4 uses
  %.sroa.7.16.copyload.i = load ptr, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !423 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !423
  store ptr %2, ptr %i.a, align 8, !noalias !424
  store ptr %.sroa.4.018, ptr %i.i, align 8, !noalias !424
  %i.l = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %i.l, label %bb.c, label %bb.o

bb.c:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB8_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB2o_10Repository24find_duplicate_snapshots0QINtNtNtB1o_5slice4iter4IterB10_EE0s_0Ba_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i), "nonnull"(ptr %.sroa.7.16.copyload.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !424, !noundef !5 ; 4 uses
  %i.n = getelementptr i8, ptr %.val.le, i64 8    ; 3 uses
  %.val6.i.i = load ptr, ptr %i.n, align 8, !noalias !424 ; 6 uses
  %i.o = icmp eq ptr %.val.i.i, null
  br i1 %i.o, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.p = load ptr, ptr %.val6.i.i, align 8, !invariant.load !5, !noalias !424 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.p(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !424

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !16, !invariant.load !5, !noalias !424 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !5, !noalias !424
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #19, !noalias !424
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !5, !noalias !424 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !5, !noalias !424
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #19, !noalias !424
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !424
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !424
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.k, !noalias !424

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !424
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.j
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.v, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.l:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtBG_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #18
          to label %.body.i unwind label %bb.m, !noalias !423

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !423
  unreachable

._crit_edge:                                      ; preds = %bb.o, %bb.a, %bb.n
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.018, %bb.n ], [ %3, %bb.a ], [ %i.ag, %bb.o ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.o ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.af, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.g
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !424
  store ptr %.sroa.7.16.copyload.i, ptr %i.n, align 8, !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !423
  br label %._crit_edge

bb.o:                                             ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB8_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB8_5error5ErrorENCNvMs0_NtB8_10repositoryNtB2o_10Repository24find_duplicate_snapshots0QINtNtNtB1o_5slice4iter4IterB10_EE0s_0Ba_.exit.i
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.018, align 8, !noalias !424
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !424
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 16
  store ptr %.sroa.7.16.copyload.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !424
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !423
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB12_2io5error5ErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_folduNCINvXNtB2c_8adaptersINtB32_12GenericShuntBI_IBY_zB1F_EEB26_8try_folduNCINvNvB26_12try_for_each4callB1z_INtNtNtB12_3ops12control_flow11ControlFlowB1z_ENcNtB4C_5Break0E0B4C_E0IB4D_B4C_EECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([21 x i8]) align 1 captures(none) dereferenceable(21) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [7 x i8], align 1             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %.not = icmp eq ptr %i.e, %i.c
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.010.0.copyload = load i8, ptr %i.e, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.612.0.copyload = load ptr, ptr %.sroa.612.0..sroa_idx, align 8 ; 4 uses
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.713.0.copyload = load i40, ptr %.sroa.713.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.f, ptr %i.d, align 8
  %i.g = trunc nuw i8 %.sroa.010.0.copyload to i1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.612.0.copyload) ]
  %.val.i = load ptr, ptr %3, align 8, !noalias !435, !noundef !5 ; 4 uses
  %i.h = icmp eq ptr %.val.i, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !435
  %i.i = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 1, label %bb.f
  ], !prof !6

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.l = and i64 %i.i, 1095216660480
  %i.m = icmp ne i64 %i.l, 1095216660480
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.assume(i1 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !436, !noalias !435
  store i8 3, ptr %i.a, align 8, !alias.scope !436, !noalias !435
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.h, !noalias !435

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !435
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i

bb.g:                                             ; preds = %bb.b
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx, i64 7, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.612.0.copyload, ptr %3, align 8, !noalias !435
  resume { ptr, i32 } %i.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.c
  store ptr %.sroa.612.0.copyload, ptr %3, align 8, !noalias !435
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 1, !alias.scope !437
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i, %bb.g
  %.sroa.9.0 = phi i40 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i ], [ %.sroa.713.0.copyload, %bb.g ]
  %.sroa.8.0 = phi ptr [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i ], [ %.sroa.612.0.copyload, %bb.g ]
  %.sroa.05.0 = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEEECskuiImRAV2ip_9elfshaker.exit.i ], [ 1, %bb.g ]
  store i8 %.sroa.05.0, ptr %0, align 1, !alias.scope !438
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.517.0..sroa_idx, align 1, !alias.scope !438
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB2Z_9EnumeratepEB1O_4fold9enumerateBX_uNCINvNtB31_3map8map_foldTjBX_ETmBX_EuNCINvXsf_BZ_NtBZ_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB60_10ReadReaderINtNtNtNtBa_2io8buffered9bufreader9BufReaderRShEENtNtB62_6config13DefaultConfigEE0NCINvNvB1O_8for_each4callB4A_NCINvMsk_B8_INtB8_3VecB4A_E14extend_trustedINtB4b_3MapIB3r_BI_EB4H_EE0E0E0E0EB11_:bb.a
  %i.j = phi i64 [ %.promoted11, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.m = trunc i64 %i.j to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.o = load <2 x i64>, ptr %i.k, align 8
  store i32 %i.m, ptr %i.n, align 8, !noalias !568
  store <2 x i64> %i.o, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !568
  %i.p = add i64 %i.i, 1                          ; 2 uses
  %i.q = add i64 %i.j, 1
  %.not.not = icmp eq ptr %i.l, %i.c
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store i64 %i.p, ptr %i.h, align 8, !alias.scope !563
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.r = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val8 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load i64, ptr %i.w, align 8, !noundef !5
  store i64 %.val9, ptr %.val8, align 8
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1U_8adapters6filter15filter_try_foldBX_B2S_INtNtB1W_6result6ResultB2S_zENCNCNvMs0_NtB11_10repositoryNtB50_10Repository26find_redundant_loose_packss_00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4n_EB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not10 = icmp eq ptr %i.g, %i.f
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.pre12 = load ptr, ptr %3, align 8, !noalias !573
  %.val.i.pre = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %i.t, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %.val.i = phi ptr [ %.val.i.pre12, %.lr.ph ], [ %.val.i13, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.s, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %.sroa.4.011 = phi ptr [ %2, %.lr.ph ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr %.sroa.4.011, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !573
  store ptr %.sroa.4.011, ptr %i.j, align 8, !noalias !573
  %i.n = load ptr, ptr %.val.i, align 8, !noalias !574, !nonnull !5, !align !9, !noundef !5
  %i.o = invoke noundef zeroext i1 @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13is_pack_loose(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i unwind label %bb.e

_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i: ; preds = %bb.b
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.d:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.011, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.011, i64 48
  %.pre = load ptr, ptr %i.d, align 8
  %.pre15 = load ptr, ptr %i.e, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i) #18
          to label %.thread.i unwind label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.g:                                             ; preds = %.thread.i
  resume { ptr, i32 } %i.q

.thread.i:                                        ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %bb.g unwind label %bb.f

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit: ; preds = %bb.c, %bb.d
  %i.s = phi ptr [ %.pre15, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.t = phi ptr [ %.pre, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.val.i13 = phi ptr [ %.val.i.pre, %bb.d ], [ %.val.i, %bb.c ]
  %.pn6.i = phi ptr [ %i.p, %bb.d ], [ %.sroa.4.011, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %i.u = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.v = insertvalue { ptr, ptr } %i.u, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters10filter_map19filter_map_try_foldBX_INtNtB1R_6result6ResultBX_NtNtB11_5error5ErrorEB2N_INtNtNtB1R_3ops12control_flow11ControlFlowIB4o_B2N_zEB2N_ENCNvMs0_NtB11_10repositoryNtB6g_10Repository23find_pack_with_snapshot0NCINvXB3y_INtB3y_12GenericShuntINtB3w_9FilterMapBI_B68_EIB4o_zB4N_EEB1J_8try_foldB2N_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B5S_E0E0B5c_EB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.8.i.i = alloca [40 x i8], align 8        ; 8 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not46 = icmp eq ptr %i.l, %i.k
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr i8, ptr %.val, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %i.u = phi ptr [ %i.k, %.lr.ph ], [ %i.bg, %bb.y ]
  %i.v = phi ptr [ %i.l, %.lr.ph ], [ %i.bf, %bb.y ] ; 2 uses
  %.sroa.4.047 = phi ptr [ %3, %.lr.ph ], [ %.sroa.811.020, %bb.y ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %2, ptr %i.g, align 8, !noalias !597
  store ptr %.sroa.4.047, ptr %i.m, align 8, !noalias !597
  %.val.i = load ptr, ptr %.val, align 8, !noalias !597, !nonnull !5, !align !9, !noundef !5
  %.val2.i = load ptr, ptr %i.n, align 8, !noalias !597 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !598
  %i.x = load ptr, ptr %.val.i, align 8, !noalias !598, !nonnull !5, !align !9, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository20load_index_snapshots(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.c unwind label %bb.p, !noalias !599

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !598
  store ptr %.val2.i, ptr %i.o, align 8, !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !599
  %i.y = load i64, ptr %i.e, align 8, !range !8, !noalias !598, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq i64 %i.y, -2
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2.le = load ptr, ptr %i.z, align 8         ; 11 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !598 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.59.0..sroa_idx.i.i, i64 40, i1 false), !noalias !598
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i unwind label %bb.e, !noalias !599

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.loopexit.split-lp unwind label %bb.f, !noalias !599

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !599
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !597

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !598
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !598 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.ac = load ptr, ptr %i.r, align 8, !alias.scope !600, !noalias !598, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.s, align 8, !alias.scope !600, !noalias !598, !noundef !5 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ad, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !601, !noalias !602, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %.val2.i, align 8, !alias.scope !601, !noalias !602, !nonnull !5
  br label %bb.h

bb.h:                                             ; preds = %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.aj, %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !603, !noundef !5
  %i.al = icmp eq i64 %.val3.i.i.i.i, %i.ag
  br i1 %i.al, label %.split.i.i.i.i, label %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.ai, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !603, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i, ptr nonnull %i.ah, i64 %i.ag), !noalias !603
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.an, label %bb.l, label %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i

_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %bb.h
  %.not7.i.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not7.i.i.i.i, label %.loopexit.i.i.i, label %bb.h

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.j, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %.loopexit.split-lp unwind label %bb.o, !noalias !604

.loopexit.i.i.i:                                  ; preds = %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !602
  store i64 %.sroa.01.0.copyload.i.i, ptr %i.b, align 8, !noalias !605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !599
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i unwind label %bb.j, !noalias !606

bb.j:                                             ; preds = %.loopexit.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.k, !noalias !606

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !606
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i: ; preds = %.loopexit.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i unwind label %bb.i, !noalias !606

bb.l:                                             ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !599
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i: ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i
  %.sroa.0.0.i.i = phi i64 [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i ], [ %.sroa.01.0.copyload.i.i, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !602
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.m, !noalias !604

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split-lp unwind label %bb.n, !noalias !604

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !597

.noexc4.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !598
  %.not24.i.i = icmp eq i64 %.sroa.0.0.i.i, -1
  br i1 %.not24.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !604
  unreachable

bb.o:                                             ; preds = %.body.i.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !604
  unreachable

bb.p:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #18
          to label %.loopexit.split-lp unwind label %bb.q, !noalias !599

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !599
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.le) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, i64 40, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597
  store ptr %2, ptr %i.a, align 8, !noalias !607
  store ptr %.sroa.4.047, ptr %i.t, align 8, !noalias !607
  %i.av = load i64, ptr %.val2.le, align 8, !range !8, !alias.scope !608, !noalias !607, !noundef !5
  %i.aw = icmp eq i64 %i.av, -2
  br i1 %i.aw, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val2.le)
          to label %bb.x unwind label %bb.t, !noalias !607

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store i64 %i.y, ptr %.val2.le, align 8, !noalias !607
  %.sroa.59.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.59.0..8.val.sroa_idx.i.i, align 8, !noalias !609
  %.sroa.10.24..sroa.59.0..8.val.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa.59.0..8.val.sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !597
  %.sroa.611.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 32
  %.sroa.10.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.48..sroa_idx.i, i64 24, i1 false), !noalias !597
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.u, !noalias !607

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !607
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

.body.i:                                          ; preds = %.loopexit.split-lp, %bb.t
  %eh.lpad-body9.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %.loopexit.split-lp ], [ %i.ax, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body9.i

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.m, %.body.i.i.i, %bb.e
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aa, %bb.e ], [ %lpad.thr_comm.split-lp.i.i, %bb.p ], [ %i.ar, %bb.m ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #18
          to label %.body.i unwind label %bb.v, !noalias !597

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !597
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit: ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.047, align 8, !noalias !609
  %.sroa.10.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.047, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !597
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.047, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load ptr, ptr %i.i, align 8
  %.pre60 = load ptr, ptr %i.j, align 8
  br label %bb.y

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %3, %bb.a ], [ %.sroa.811.020, %bb.y ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.bb, align 8, !alias.scope !610
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa, ptr %i.bc, align 8, !alias.scope !610
  store i64 0, ptr %0, align 8, !alias.scope !610
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.x
  ret void

bb.x:                                             ; preds = %bb.r, %bb.s
  store i64 %i.y, ptr %.val2.le, align 8, !noalias !607
  %.sroa.59.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.59.0..8.val.sroa_idx10.i.i, align 8, !noalias !609
  %.sroa.10.24..sroa.59.0..8.val.sroa_idx10.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa.59.0..8.val.sroa_idx10.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !597
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 32
  %.sroa.10.48..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..8.val.sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.48..sroa_idx6.i, i64 24, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.bd, align 8, !alias.scope !611
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.047, ptr %i.be, align 8, !alias.scope !611
  store i64 1, ptr %0, align 8, !alias.scope !611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.y:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread
  %i.bf = phi ptr [ %i.w, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %.pre60, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  %i.bg = phi ptr [ %i.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %.pre, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  %.sroa.811.020 = phi ptr [ %.sroa.4.047, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %i.ba, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.bf, %i.bg
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters6filter15filter_try_foldBX_B2N_INtNtB1R_6result6ResultB2N_zENCNCNvMs0_NtB11_10repositoryNtB4V_10Repository11loose_packs00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4i_EB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not12 = icmp eq ptr %i.g, %i.f
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.pre14 = load ptr, ptr %3, align 8, !noalias !616
  %.val.i.pre = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %i.v, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %.val.i = phi ptr [ %.val.i.pre14, %.lr.ph ], [ %.val.i15, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr %.sroa.4.013, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !616
  store ptr %.sroa.4.013, ptr %i.j, align 8, !noalias !616
  %i.n = load ptr, ptr %.val.i, align 8, !noalias !617, !nonnull !5, !align !9, !noundef !5
  %i.o = invoke noundef zeroext i1 @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13is_pack_loose(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i unwind label %bb.g

_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i: ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.f:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 24
  %.pre = load ptr, ptr %i.d, align 8
  %.pre17 = load ptr, ptr %i.e, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #18
          to label %.thread.i unwind label %bb.h

bb.h:                                             ; preds = %.thread.i, %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %.thread.i, %bb.d
  %.pn3.i = phi { ptr, i32 } [ %i.s, %.thread.i ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.pn3.i

.thread.i:                                        ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %bb.i unwind label %bb.h

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.f
  %i.u = phi ptr [ %.pre17, %bb.f ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldBX_INtNtB1G_6result6ResultAhj14_NtNtNtB1G_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBY_E0NCINvNvB1y_8for_each4callB3b_NCINvMsk_B8_INtB8_3VecB3b_E14extend_trustedINtB2E_3MapBI_B45_EE0E0E0EB4c_:bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.r unwind label %bb.m, !noalias !671

bb.m:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !671
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %.loopexit1.i.i
  %.sroa.7.1.insert.ext.i = zext i40 %.sroa.7.1.copyload.i to i64
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit unwind label %.loopexit

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !671
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.c
  %.sroa.7.0.i = phi i64 [ undef, %bb.c ], [ %.sroa.7.1.insert.ext.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i ]
  %.sroa.6.0.i = phi ptr [ %i.am, %bb.c ], [ %.sroa.6.1.copyload.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i ]
  %.sroa.0.0.i = phi i8 [ 1, %bb.c ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !670
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.cm = load ptr, ptr %i.ae, align 8, !alias.scope !699, !noundef !5
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ag ; 4 uses
  store i8 %.sroa.0.0.i, ptr %i.cn, align 8, !noalias !699
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i, i64 7, i1 false), !noalias !669
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !699
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %.sroa.7.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !noalias !699
  %i.co = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.co, ptr %i.af, align 8, !alias.scope !699
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not.not = icmp eq ptr %i.aj, %i.q
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit, %bb.a
  %i.cp = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.cr, ptr %i.n, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cp, ptr %i.cs, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ct, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.p:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.q:                                             ; preds = %._crit_edge
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.pre = load i64, ptr %.phi.trans.insert, align 8
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  store i64 %.val7.pre, ptr %.val6, align 8
  br label %.thread

.thread:                                          ; preds = %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit
  %eh.lpad-body43 = phi { ptr, i32 } [ %eh.lpad-body.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit ], [ %lpad.loopexit.split-lp17, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body43

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.l, %.loopexit
  %eh.lpad-body.ph = phi { ptr, i32 } [ %lpad.loopexit16, %.loopexit ], [ %i.cj, %bb.l ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %.val641 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  store i64 %i.ag, ptr %.val641, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !700, !nonnull !5, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.cv, align 8, !alias.scope !700, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !701
  store i64 %.val9, ptr %i.a, align 8, !noalias !701
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.cw, align 8, !noalias !701
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !701
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1P_8adapters3map8map_foldBX_INtNtB1R_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB12_4repo5error5ErrorEuNCNvMs0_NtB4m_10repositoryNtB4T_10Repository18copy_loose_entries0NCINvNvB1J_8for_each4callB3m_NCINvMsk_B8_INtB8_3VecB3m_E14extend_trustedINtB2P_3MapBI_B4L_EE0E0E0EB12_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 17 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %.sroa.15.i = alloca [40 x i8], align 8         ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not.not28 = icmp eq ptr %.promoted, %i.l
  br i1 %.not.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted29 = load i64, ptr %i.v, align 8
  %.val.i.pre = load ptr, ptr %i.m, align 8, !alias.scope !719 ; 2 uses
  %.val1.i.pre = load ptr, ptr %i.n, align 8, !alias.scope !719 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit
  %.val720 = phi i64 [ %.promoted29, %.lr.ph ], [ %i.cf, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit ] ; 3 uses
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.z, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !722
  store i64 0, ptr %i.h, align 8, !noalias !722
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !722
  store i64 0, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !722
  %i.aa = load ptr, ptr %.val.i.pre, align 8, !noalias !722, !nonnull !5, !noundef !5
  %i.ab = load i64, ptr %i.w, align 8, !noalias !722, !noundef !5
  invoke void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtB6_4PathECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %bb.c unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !722

.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i, %bb.j, %bb.f, %bb.d, %bb.c, %bb.b, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y)
          to label %bb.d unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !722, !nonnull !5, !noundef !5
  %i.ad = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !722, !noundef !5
  %i.ae = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %bb.e unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs14create_dir_allRNtNtB4_4path4PathECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag)
          to label %bb.i unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723 ; 2 uses

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #20
          to label %bb.h unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %.not42.i.i = icmp eq ptr %i.ah, null
  br i1 %.not42.i.i, label %bb.j, label %bb.am

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.pre) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !722
  %i.ai = load ptr, ptr %.val1.i.pre, align 8, !noalias !724, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository17loose_object_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.aj)
          to label %bb.k unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !725, !noundef !5
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !725, !noundef !5
  %i.ap = invoke noundef ptr @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs12create_emptyRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i32 noundef %i.ao)
          to label %bb.o unwind label %bb.n, !noalias !723 ; 2 uses

bb.m:                                             ; preds = %bb.k
  %i.aq = invoke { i64, ptr } @_RINvNtCsaL1QbXo9JQH_3std2fs4copyRNtNtB4_4path7PathBufBu_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.v unwind label %bb.n, !noalias !723 ; 2 uses

bb.n:                                             ; preds = %bb.ag, %bb.ae, %bb.m, %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i

.body55.i.i:                                      ; preds = %bb.ab, %bb.n
  %eh.lpad-body56.i.i = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.bo, %bb.ab ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %.thread.i.i unwind label %bb.ap, !noalias !723

bb.o:                                             ; preds = %bb.l
  %.not44.i.i = icmp eq ptr %i.ap, null
  br i1 %.not44.i.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.sroa.9.8.copyload2.i = load ptr, ptr %i.h, align 8, !noalias !726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.0..sroa_idx.i.i, i64 16, i1 false), !noalias !727
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.q, !noalias !723

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread17 unwind label %bb.r, !noalias !723

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !723
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split unwind label %.thread23

bb.s:                                             ; preds = %bb.al, %bb.ah, %bb.o
  %.sroa.9.1.i = phi ptr [ %i.ap, %bb.o ], [ %i.bp, %bb.al ], [ %i.bx, %bb.ah ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i unwind label %bb.t, !noalias !723

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread.i.i unwind label %bb.u, !noalias !723

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !723
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i unwind label %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.v:                                             ; preds = %bb.m
  %i.aw = extractvalue { i64, ptr } %i.aq, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.ay = extractvalue { i64, ptr } %i.aq, 1      ; 7 uses
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !722 ; 2 uses
  %.val46.i.i = load i64, ptr %i.p, align 8, !noalias !722
  %.val47.i.i = load ptr, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !722 ; 2 uses
  %.val48.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !722
  %i.az = ptrtoint ptr %i.ay to i64               ; 4 uses
  %i.ba = and i64 %i.az, 3                        ; 2 uses
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.x
    i64 3, label %bb.y
    i64 0, label %bb.z
    i64 1, label %bb.aa
  ], !prof !6

default.unreachable:                              ; preds = %bb.ac, %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.ab, !noalias !723

.noexc.i.i.i:                                     ; preds = %bb.x
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !723, !nonnull !5, !noundef !5
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i unwind label %bb.ab, !noalias !723, !inline_history !708

bb.y:                                             ; preds = %bb.w
  %i.bh = lshr i64 %i.az, 32
  %i.bi = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.bh to i8 ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !728, !noalias !723, !noundef !5
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.aa:                                            ; preds = %bb.w
  %i.bm = getelementptr i8, ptr %i.ay, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !728, !noalias !723, !noundef !5
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i

bb.ab:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i, %.noexc.i.i.i, %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr nonnull %i.ay) #18
          to label %.body55.i.i unwind label %bb.af, !noalias !723

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %.noexc.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.bn, %bb.aa ], [ %switch.idx.cast.i.i.i.i.i.i, %bb.y ], [ %i.bl, %bb.z ], [ %i.bg, %.noexc.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i), "nonnull"(ptr %.val47.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !722
  store ptr %.val.i.i, ptr %i.e, align 8, !noalias !722
  store i64 %.val46.i.i, ptr %i.q, align 8, !noalias !722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !722
  store ptr %.val47.i.i, ptr %i.d, align 8, !noalias !722
  store i64 %.val48.i.i, ptr %i.r, align 8, !noalias !722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !722
  store ptr %i.e, ptr %i.c, align 8, !noalias !722
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !722
  store ptr %i.d, ptr %i.s, align 8, !noalias !722
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !722
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @6, ptr noundef nonnull %i.c)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.ab, !noalias !723

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !722
  %i.bp = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsfwHX9XeyMnn_4zstd(i8 noundef %.sroa.0.0.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ac unwind label %bb.ab, !noalias !723

bb.ac:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskuiImRAV2ip_9elfshaker.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !722
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.al
    i64 3, label %bb.ad
    i64 0, label %bb.al
    i64 1, label %bb.ae
  ], !prof !6

bb.ad:                                            ; preds = %bb.ac
  %i.bq = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr)
  %i.br = and i64 %i.az, 1095216660480
  %i.bs = icmp ne i64 %i.br, 1095216660480
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.assume(i1 %i.bs)
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.bt = getelementptr i8, ptr %i.ay, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  store ptr %i.bt, ptr %i.t, align 8, !alias.scope !729, !noalias !722
  store i8 3, ptr %i.b, align 8, !alias.scope !729, !noalias !722
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.al unwind label %bb.n, !noalias !723

bb.af:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !723
  unreachable

bb.ag:                                            ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !725, !noundef !5
  %i.bx = invoke noundef ptr @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs13set_file_modeRNtNtCsaL1QbXo9JQH_3std4path7PathBufEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i32 noundef %i.bw)
          to label %bb.ah unwind label %bb.n, !noalias !723 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %.not43.i.i = icmp eq ptr %i.bx, null
  br i1 %.not43.i.i, label %bb.ai, label %bb.s

bb.ai:                                            ; preds = %bb.ah
  %.sroa.9.8.copyload.i = load ptr, ptr %i.h, align 8, !noalias !726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.0..sroa_idx.i.i, i64 16, i1 false), !noalias !727
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i unwind label %bb.aj, !noalias !723

bb.aj:                                            ; preds = %bb.ai
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread17 unwind label %bb.ak, !noalias !723

bb.ak:                                            ; preds = %bb.aj
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !723
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split unwind label %.thread23

bb.al:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !722
  br label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !722
  br label %bb.am

bb.am:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i, %bb.i
  %.sroa.9.0.i = phi ptr [ %.sroa.9.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit54.i.i ], [ %i.ah, %bb.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i unwind label %bb.an, !noalias !723

bb.an:                                            ; preds = %bb.am
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread17 unwind label %bb.ao, !noalias !723

bb.ao:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !723
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit unwind label %.thread23

bb.ap:                                            ; preds = %.thread.i.i, %.body55.i.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !723
  unreachable

.thread.i.i:                                      ; preds = %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %.body55.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %eh.lpad-body56.i.i, %.body55.i.i ], [ %i.au, %bb.t ], [ %lpad.loopexit.split-lp, %.thread14.i.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %.thread17 unwind label %bb.ap, !noalias !723

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i
  %.sroa.9.2.i.ph = phi ptr [ %.sroa.9.8.copyload2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i ], [ %.sroa.9.8.copyload.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !722
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i
  %.sroa.9.2.i = phi ptr [ %.sroa.9.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i ], [ %.sroa.9.2.i.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split ]
  %.sroa.0.2.i = phi i64 [ -9223372036854775808, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i ], [ -2, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !722
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.cd = load ptr, ptr %i.u, align 8, !alias.scope !732, !noundef !5
  %i.ce = getelementptr inbounds nuw [56 x i8], ptr %i.cd, i64 %.val720 ; 3 uses
  store i64 %.sroa.0.2.i, ptr %i.ce, align 8, !noalias !732
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %.sroa.9.2.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !732
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.i, i64 40, i1 false), !noalias !719
  %i.cf = add i64 %.val720, 1                     ; 2 uses
  store i64 %i.cf, ptr %i.v, align 8, !alias.scope !732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %.not.not = icmp eq ptr %i.z, %i.l
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryINtNtBa_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtBZ_4repo5error5ErrorEuNCNvMs0_NtB2E_10repositoryNtB3a_10Repository18copy_loose_entries0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5b_3VecB1F_E14extend_trustedINtB4_3MapINtNtB5b_9into_iter8IntoIterBU_EB32_EE0E0E0BZ_.exit, %bb.a
  %i.cg = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.ci, ptr %i.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cg, ptr %i.cj, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ck, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.ar:                                            ; preds = %.thread17
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread23:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit.i58.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECskuiImRAV2ip_9elfshaker.exit66.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread17

bb.as:                                            ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.cm, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  br label %.thread

.thread:                                          ; preds = %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1u_.exit
  %.pn16 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.as ], [ %eh.lpad-body21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1u_.exit ]
  resume { ptr, i32 } %.pn16

.thread17:                                        ; preds = %bb.q, %bb.aj, %bb.an, %.thread.i.i, %.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread23 ], [ %i.as, %bb.q ], [ %i.by, %bb.aj ], [ %.pn4.i.i, %.thread.i.i ], [ %i.ca, %bb.an ]
  %.val625 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  store i64 %.val720, ptr %.val625, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !733, !nonnull !5, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.cn, align 8, !alias.scope !733, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !734
  store i64 %.val9, ptr %i.a, align 8, !noalias !734
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.co, align 8, !noalias !734
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1u_.exit unwind label %bb.ar

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEEB1u_.exit: ; preds = %.thread17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !734
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldBX_INtNtB1S_6result6ResultuNtNtB12_5error5ErrorEuNCNvMs0_NtB12_10repositoryNtB4f_10Repository24find_duplicate_snapshots0NCINvNvB1K_8for_each4callB3n_NCINvMsk_B8_INtB8_3VecB3n_E14extend_trustedINtB2Q_3MapBI_B47_EE0E0E0EB14_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.10.i.i = alloca [16 x i8], align 8       ; 4 uses
  %i.k = alloca [20 x i8], align 1                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
  %i.r = alloca [264 x i8], align 8               ; 8 uses
  %.sroa.6.i.sroa.7.i = alloca [48 x i8], align 8 ; 6 uses
  %i.s = alloca [264 x i8], align 8               ; 9 uses
  %.sroa.5.i = alloca [48 x i8], align 8          ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.v, align 8        ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not.not49 = icmp eq ptr %.promoted, %i.w
  br i1 %.not.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.6.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.10.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted51 = load i64, ptr %i.aj, align 8
  %.val.i.pre = load ptr, ptr %i.x, align 8, !alias.scope !759
  %.val1.i.pre = load ptr, ptr %i.y, align 8, !alias.scope !759 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultuNtNtBZ_5error5ErrorEuNCNvMs0_NtBZ_10repositoryNtB2w_10Repository24find_duplicate_snapshots0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB1G_E14extend_trustedINtB4_3MapINtNtB4C_9into_iter8IntoIterBU_EB2o_EE0E0E0B11_.exit
  %i.ak = phi i64 [ %.promoted51, %.lr.ph ], [ %i.cz, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultuNtNtBZ_5error5ErrorEuNCNvMs0_NtBZ_10repositoryNtB2w_10Repository24find_duplicate_snapshots0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB1G_E14extend_trustedINtB4_3MapINtNtB4C_9into_iter8IntoIterBU_EB2o_EE0E0E0B11_.exit ] ; 3 uses
  %i.al = phi ptr [ %.promoted, %.lr.ph ], [ %i.an, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultuNtNtBZ_5error5ErrorEuNCNvMs0_NtBZ_10repositoryNtB2w_10Repository24find_duplicate_snapshots0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB1G_E14extend_trustedINtB4_3MapINtNtB4C_9into_iter8IntoIterBU_EB2o_EE0E0E0B11_.exit ] ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  store ptr %i.an, ptr %i.v, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !760
  %i.ao = load ptr, ptr %.val.i.pre, align 8, !noalias !760, !nonnull !5, !align !9, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository10load_index(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.r, ptr noundef nonnull align 8 %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.b
  %i.ap = load i64, ptr %i.r, align 8, !range !4, !noalias !760, !noundef !5 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, -1
  %.sroa.6.i.sroa.0.0.copyload5.i = load i64, ptr %i.z, align 8, !noalias !760 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.sroa.7.0..sroa_idx.i, i64 48, i1 false), !noalias !760
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.sroa.7.i, i64 48, i1 false), !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7.i)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultuNtNtBZ_5error5ErrorEuNCNvMs0_NtBZ_10repositoryNtB2w_10Repository24find_duplicate_snapshots0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB1G_E14extend_trustedINtB4_3MapINtNtB4C_9into_iter8IntoIterBU_EB2o_EE0E0E0B11_.exit

.thread.i.i:                                      ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.p, %.thread17.i.i, %.thread21.i.i
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body20.i.i, %.thread17.i.i ], [ %lpad.thr_comm.i.i, %.thread21.i.i ], [ %.pn.pn.i.i, %bb.p ], [ %.pn.pn.i.i, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexEBF_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.s) #18
          to label %bb.ay unwind label %bb.au, !noalias !762

bb.d:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.58.0..sroa_idx.i.i, i64 200, i1 false), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !760
  store i64 %.sroa.6.i.sroa.0.0.copyload5.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.sroa.7.i, i64 48, i1 false), !noalias !760
  store i64 %i.ap, ptr %i.s, align 8, !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !760
  %i.ar = inttoptr i64 %.sroa.6.i.sroa.0.0.copyload5.i to ptr ; 2 uses
  %.val17.i.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !760, !noundef !5
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.val17.i.i
  store ptr %i.ar, ptr %i.p, align 8, !noalias !760
  store ptr %i.as, ptr %i.aa, align 8, !noalias !760
  store ptr %i.s, ptr %i.ab, align 8, !noalias !760
  invoke void @_RINvXs1c_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB7_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTB15_B1H_EE9from_iterINtNtNtB1V_8adapters3map3MapINtNtNtB1X_5slice4iter4IterB15_ENCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB4h_10Repository24find_duplicate_snapshots00EEB4l_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p)
          to label %bb.e unwind label %.thread21.i.i, !noalias !762

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.pre) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !760
  %i.at = load ptr, ptr %.val1.i.pre, align 8, !noalias !763, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEE4lockB2m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 8 %i.au)
          to label %bb.g unwind label %bb.f, !noalias !762

.thread21.i.i:                                    ; preds = %bb.aa, %bb.y, %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.f:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread17.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.av = load i64, ptr %i.o, align 8, !range !14, !alias.scope !764, !noalias !760, !noundef !5
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.h, label %bb.l, !prof !12

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !765
  %i.ax = load ptr, ptr %i.ac, align 8, !alias.scope !764, !noalias !760, !nonnull !5, !align !9, !noundef !5
  %i.ay = load i8, ptr %i.ad, align 8, !range !10, !alias.scope !764, !noalias !760, !noundef !5
  store ptr %i.ax, ptr %i.d, align 8, !noalias !765
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.ay, ptr %i.az, align 8, !noalias !765
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
          to label %bb.j unwind label %bb.i, !noalias !766

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtBI_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEEEB3e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #18
          to label %.thread17.i.i unwind label %bb.k, !noalias !766

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !766
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ac, align 8, !alias.scope !764, !noalias !760, !nonnull !5, !align !9, !noundef !5 ; 7 uses
  %i.bd = load i8, ptr %i.ad, align 8, !range !10, !alias.scope !764, !noalias !760, !noundef !5
  %i.be = trunc nuw i8 %i.bd to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !760
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.r unwind label %bb.q, !noalias !762

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %.body28.i.i, %bb.q
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %.pn.i.i, %.body28.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  br i1 %i.be, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.bg = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !762
  %i.bh = and i64 %i.bg, 9223372036854775807
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.bj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #17
          to label %.noexc16 unwind label %bb.au

.noexc16:                                         ; preds = %bb.n
  br i1 %i.bj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc16
  store atomic i8 1, ptr %i.bf monotonic, align 1, !noalias !762
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc16, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.bk = atomicrmw xchg ptr %i.bc, i32 0 release, align 4, !noalias !762
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %bb.p, label %.thread.i.i, !prof !12

bb.p:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bc)
          to label %.thread.i.i unwind label %bb.au

bb.q:                                             ; preds = %bb.w, %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit.i.i

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !760
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !760
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %bb.u unwind label %bb.t, !noalias !762

.body28.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i, %bb.as, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.cu, %bb.as ], [ %i.bo, %bb.t ], [ %eh.lpad-body16.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i ]
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.au, !noalias !762

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i.i.i, %bb.s
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i.i

bb.u:                                             ; preds = %bb.s
  %i.bp = load i64, ptr %i.m, align 8, !range !4, !noalias !760, !noundef !5
  %.not.i.i = icmp eq i64 %i.bp, -1
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.k, ptr noundef nonnull align 8 dereferenceable(20) %i.ae, i64 20, i1 false), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !760
  invoke void @_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entryB1I_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(20) %i.k)
          to label %bb.ae unwind label %bb.ab, !noalias !762

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !760
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit22.i.i unwind label %bb.q, !noalias !762

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit22.i.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !760
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  br i1 %i.be, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit22.i.i
  %i.br = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !760
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.bu = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #17
          to label %.noexc.i.i unwind label %.thread21.i.i, !noalias !762

.noexc.i.i:                                       ; preds = %bb.y
  br i1 %i.bu, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc.i.i
  store atomic i8 1, ptr %i.bq monotonic, align 4, !noalias !762
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.z, %.noexc.i.i, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_EECskuiImRAV2ip_9elfshaker.exit22.i.i
  %i.bv = atomicrmw xchg ptr %i.bc, i32 0 release, align 4, !noalias !762
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEEB2V_.exit.i.i, !prof !12

bb.aa:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEEB2V_.exit.i.i unwind label %.thread21.i.i, !noalias !762

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtNtBK_11collections4hash3map7HashMapAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEEB2V_.exit.i.i: ; preds = %bb.aa, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !760
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexEBF_(ptr noalias nofree noundef align 8 dereferenceable(264) %i.s)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultuNtNtBZ_5error5ErrorEuNCNvMs0_NtBZ_10repositoryNtB2w_10Repository24find_duplicate_snapshots0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VecB1G_E14extend_trustedINtB4_3MapINtNtB4C_9into_iter8IntoIterBU_EB2o_EE0E0E0B11_.exit unwind label %.loopexit

bb.ab:                                            ; preds = %_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %bb.ah, %bb.af, %bb.v
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body15.i.i

.body15.i.i:                                      ; preds = %bb.ap, %bb.ak, %bb.ab
  %eh.lpad-body16.i.i = phi { ptr, i32 } [ %i.ci, %bb.ak ], [ %i.bx, %bb.ab ], [ %i.co, %bb.ap ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.ac, !noalias !762

bb.ac:                                            ; preds = %.body15.i.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body13 unwind label %bb.ad, !noalias !762

bb.ad:                                            ; preds = %bb.ac
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !762
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %.body15.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body28.i.i unwind label %bb.au

bb.ae:                                            ; preds = %bb.v
  %i.ca = load ptr, ptr %i.f, align 8, !noalias !760, !noundef !5 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1W_hEENtNtNtB2a_2io5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker:bb.a
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIB1C_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1M_hEENtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIB1C_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIB1B_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
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
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIB1B_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #18
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultTyIB1C_hEENtNtNtB4_2io5error5ErrorEEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1M_hEENtNtNtB26_2io5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropB2O_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2B_.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2B_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
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
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #18
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEEB2B_.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtNtB7_3vec3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB26_3ops4drop4Drop4dropB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB11_2io5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = ptrtoint ptr %.val1 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph.i

.body:                                            ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  store i64 %i.m, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.n, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.j unwind label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i, %.lr.ph.i
  %.sroa.0.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.0.011.i, 1        ; 4 uses
  %.val8.i = load i8, ptr %i.p, align 8, !range !10, !alias.scope !843, !noundef !5
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val9.i = load ptr, ptr %i.r, align 8, !alias.scope !843 ; 4 uses
  %i.s = icmp eq i8 %.val8.i, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !843
  %i.t = ptrtoint ptr %.val9.i to i64             ; 2 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i
    i64 1, label %bb.e
  ], !prof !6

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ult ptr %.val9.i, inttoptr (i64 188978561024 to ptr)
  %i.w = and i64 %i.t, 1095216660480
  %i.x = icmp ne i64 %i.w, 1095216660480
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %.val9.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  store ptr %i.y, ptr %i.o, align 8, !alias.scope !844, !noalias !843
  store i8 3, ptr %i.b, align 8, !alias.scope !844, !noalias !843
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.g, !noalias !843

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !843
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.b
  %i.z = icmp eq i64 %i.q, %i.i
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit, label %bb.b

bb.f:                                             ; preds = %.lr.ph
  %i.aa = add i64 %.sroa.0.1.i12, 1               ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %.body, label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = icmp eq i64 %i.q, %i.i
  br i1 %i.ad, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.1.i12 = phi i64 [ %i.aa, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i12 ; 2 uses
  %.val.i = load i8, ptr %i.ae, align 8, !range !10, !alias.scope !843, !noundef !5
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val7.i = load ptr, ptr %i.af, align 8, !alias.scope !843
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker(i8 %.val.i, ptr %.val7.i) #18
          to label %bb.f unwind label %bb.h, !noalias !843

bb.h:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !843
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultAhj14_NtNtNtB4_2io5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  store i64 %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ah, ptr %i.ak, align 8
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtBR_2io5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.j:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1C_5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = udiv exact i64 %i.g, 56                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB12_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph.i

.body:                                            ; preds = %bb.f, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.j unwind label %bb.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i
  %.sroa.0.010.i = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.010.i ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %i.p = load i64, ptr %i.n, align 8, !range !7, !alias.scope !849, !noundef !5
  %i.q = icmp eq i64 %i.p, -2
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.u = icmp eq i64 %i.o, %i.h
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB12_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i16, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.h
  br i1 %i.w, label %.body, label %.lr.ph

bb.g:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryECskuiImRAV2ip_9elfshaker.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.s, %bb.c ]
  %i.y = icmp eq i64 %i.o, %i.h
  br i1 %i.y, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.f
  %.sroa.0.1.i16 = phi i64 [ %i.v, %bb.f ], [ %i.o, %.body.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.1.i16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %i.z) #18
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB12_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECskuiImRAV2ip_9elfshaker.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %i.ae, align 8
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1s_5error5ErrorEENtNtNtBR_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.j:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
end_hunk_5
