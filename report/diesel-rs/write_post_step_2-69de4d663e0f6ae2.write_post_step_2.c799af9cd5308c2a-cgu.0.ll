Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/write_post_step_2-69de4d663e0f6ae2.write_post_step_2.c799af9cd5308c2a-cgu.0?download=true
inline.NumInlined: 59
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCsh8t0CH7JQ0M_17write_post_step_2, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csh8t0CH7JQ0M_17write_post_step_2, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csh8t0CH7JQ0M_17write_post_step_2 }>, align 8, !guid !4
@1 = private unnamed_addr constant [38 x i8] c"What would you like your title to be?\0A", align 1, !guid !4
@2 = private unnamed_addr constant [61 x i8] c"examples/sqlite/getting_started_step_2/src/bin/write_post.rs\00", align 1, !guid !4
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"<\00\00\00\00\00\00\00\09\00\00\00#\00\00\00" }>, align 8, !guid !4
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"<\00\00\00\00\00\00\00\0A\00\00\00\17\00\00\00" }>, align 8, !guid !4
@5 = private unnamed_addr constant [6 x i8] c"CTRL+D", align 1, !guid !4
@6 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @5, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8, !guid !4
@7 = private unnamed_addr constant [48 x i8] c"\11\0AOk! Let's write \C0\08 (Press \C0\11 when finished)\0A\0A\00", align 1, !guid !4
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"<\00\00\00\00\00\00\00\0D\00\00\00'\00\00\00" }>, align 8, !guid !4
@9 = private unnamed_addr constant [29 x i8] c"\0D\0ASaved draft \C0\09 with id \C0\01\0A\00", align 1, !guid !4
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsh8t0CH7JQ0M_17write_post_step_2, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8, !guid !4
@11 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1, !guid !4

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !12 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !12, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !12
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsh8t0CH7JQ0M_17write_post_step_2.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsh8t0CH7JQ0M_17write_post_step_2.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsh8t0CH7JQ0M_17write_post_step_2.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13 {
bb.a:
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.a = icmp eq i64 %.val4, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %.val4, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit7, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit7

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit7: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !14 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsh8t0CH7JQ0M_17write_post_step_2.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsh8t0CH7JQ0M_17write_post_step_2.exit
    i64 1, label %bb.c
  ], !prof !15

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsh8t0CH7JQ0M_17write_post_step_2.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #11
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #11
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsh8t0CH7JQ0M_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality !guid !16 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsh8t0CH7JQ0M_17write_post_step_2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsh8t0CH7JQ0M_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsh8t0CH7JQ0M_17write_post_step_2.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit5.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #11
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit5.i.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit5.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.c = load ptr, ptr %.val4, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsh8t0CH7JQ0M_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !8, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsh8t0CH7JQ0M_17write_post_step_2.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #11
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit unwind label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit9 unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.i, %.body ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val7 = load ptr, ptr %i.q, align 8, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8 = load ptr, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2(ptr %.val7, ptr %.val8) #12
          to label %.body10 unwind label %bb.l

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsh8t0CH7JQ0M_17write_post_step_2.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit9: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECsh8t0CH7JQ0M_17write_post_step_2.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5 = load ptr, ptr %i.t, align 8, !noundef !5 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val6 = load ptr, ptr %i.u, align 8            ; 6 uses
  %i.v = icmp eq ptr %.val5, null
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.w = load ptr, ptr %.val6, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.w(ptr noundef nonnull %.val5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body10, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #11
  br label %.body10

.body10:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit ], [ %i.ac, %bb.i ], [ %i.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef align 8 dereferenceable(24) %0) #12
  resume { ptr, i32 } %.pn2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !22, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.aj, align 8, !alias.scope !22, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.ak = icmp eq i64 %.val1.i, 0
  br i1 %i.ak, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !23, !noalias !22 ; 2 uses
  %i.an = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !23, !noalias !22, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ap = icmp eq i64 %i.am, %.val1.i
  br i1 %i.ap, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECsh8t0CH7JQ0M_17write_post_step_2.exit
  %.val2.i = load i64, ptr %0, align 8, !range !6, !alias.scope !22, !noundef !5 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsh8t0CH7JQ0M_17write_post_step_2.exit, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit.i
  %i.ar = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #11, !noalias !22
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsh8t0CH7JQ0M_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsh8t0CH7JQ0M_17write_post_step_2.exit.i, %bb.k
  ret void

bb.l:                                             ; preds = %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECsh8t0CH7JQ0M_17write_post_step_2.exit
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsgczF5crJ4sT_3std2rt10lang_startuECsh8t0CH7JQ0M_17write_post_step_2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #1 !guid !25 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsh8t0CH7JQ0M_17write_post_step_2(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 !guid !27 {
bb.a:
  tail call void %0(), !inline_history !26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 !guid !29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsh8t0CH7JQ0M_17write_post_step_2(ptr noundef nonnull %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCsh8t0CH7JQ0M_17write_post_step_2(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !32 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsh8t0CH7JQ0M_17write_post_step_2(ptr noundef nonnull readonly %i.a), !noalias !33
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCsh8t0CH7JQ0M_17write_post_step_24main() unnamed_addr #1 personality ptr @rust_eh_personality !guid !42 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvCslOySh1CwWOA_29getting_started_step_2_sqlite20establish_connection(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.k)
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 77 to ptr))
          to label %bb.c unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %bb.d, %.body31, %bb.b
  %.pn29 = phi { ptr, i32 } [ %i.l, %bb.b ], [ %.pn27, %.body31 ], [ %.pn27, %bb.d ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef align 8 dereferenceable(80) %i.k) #12
          to label %bb.ah unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio5stdin()
          to label %bb.f unwind label %bb.e

.body31:                                          ; preds = %bb.r, %.body, %bb.i, %bb.e
  %.pn27 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.o, %bb.e ], [ %.pn, %.body ], [ %.pn, %bb.r ] ; 2 uses
  %.val39 = load i64, ptr %i.j, align 8           ; 2 uses
  %i.n = icmp eq i64 %.val39, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit, label %bb.d

bb.d:                                             ; preds = %.body31
  %.val40 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40, i64 noundef %.val39, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit

bb.e:                                             ; preds = %bb.o, %bb.n, %bb.f, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body31

bb.f:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.i, align 8
  %i.p = invoke { i64, ptr } @_RNvMs1_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5Stdin9read_line(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.h, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit33, !prof !43

bb.h:                                             ; preds = %bb.g
  %i.s = extractvalue { i64, ptr } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  store ptr %i.s, ptr %i.a, align 8, !noalias !44
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #12
          to label %.body31 unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit33: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.v = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !5 ; 4 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = add nsw i64 %i.v, -1                     ; 5 uses
  %i.y = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit33
  %.not.i.not = icmp eq i64 %i.v, 0
  br i1 %.not.i.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !45, !noundef !5
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit33
  store ptr %i.y, ptr %i.h, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.x, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsh8t0CH7JQ0M_17write_post_step_2, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @6, ptr %i.ae, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsh8t0CH7JQ0M_17write_post_step_2, ptr %.sroa.416.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @7, ptr noundef nonnull %i.g)
          to label %bb.q unwind label %bb.e

bb.o:                                             ; preds = %bb.m, %bb.l
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.v, i64 noundef 0, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx2, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.af = invoke noundef nonnull align 8 ptr @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio5stdin()
          to label %bb.t unwind label %bb.s

.body:                                            ; preds = %bb.aa, %bb.w, %bb.s
  %.pn = phi { ptr, i32 } [ %i.as, %bb.aa ], [ %i.ah, %bb.s ], [ %i.am, %bb.w ] ; 2 uses
  %.val37 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.ag = icmp eq i64 %.val37, 0
  br i1 %i.ag, label %.body31, label %bb.r

bb.r:                                             ; preds = %.body
  %.val38 = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38, i64 noundef %.val37, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %.body31

bb.s:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit, %bb.t, %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.q
  store ptr %i.af, ptr %i.e, align 8
  %i.ai = invoke { i64, ptr } @_RNvXs3_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5StdinNtB7_4Read14read_to_string(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.s       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.v, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit, !prof !43

bb.v:                                             ; preds = %bb.u
  %i.al = extractvalue { i64, ptr } %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46
  store ptr %i.al, ptr %i.b, align 8, !noalias !46
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #12
          to label %.body unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !5, !noundef !5
  %i.ap = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !noundef !5
  invoke void @_RNvCslOySh1CwWOA_29getting_started_step_2_sqlite11create_post(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.ap)
          to label %bb.z unwind label %bb.s

bb.z:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsh8t0CH7JQ0M_17write_post_step_2, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aq, ptr %i.ar, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @9, ptr noundef nonnull %i.c)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef align 8 dereferenceable(56) %i.d) #12
  br label %.body

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %.val4.i = load i64, ptr %i.d, align 8, !alias.scope !47 ; 2 uses
  %i.at = icmp eq i64 %.val4.i, 0
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val5.i = load ptr, ptr %i.au, align 8, !alias.scope !47, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !47
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit.i: ; preds = %bb.ac, %bb.ab
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i = load i64, ptr %i.av, align 8, !alias.scope !47 ; 2 uses
  %i.aw = icmp eq i64 %.val.i, 0
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i = load ptr, ptr %i.ax, align 8, !alias.scope !47, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !47
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2.exit: ; preds = %bb.ad, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val35 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.ay = icmp eq i64 %.val35, 0
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit42, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2.exit
  %.val36 = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36, i64 noundef %.val35, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit42

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit42: ; preds = %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val = load i64, ptr %i.j, align 8             ; 2 uses
  %i.az = icmp eq i64 %.val, 0
  br i1 %i.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit43, label %bb.af

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit42
  %.val34 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit43

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit43: ; preds = %bb.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef align 8 dereferenceable(80) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsh8t0CH7JQ0M_17write_post_step_2.exit
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsh8t0CH7JQ0M_17write_post_step_2(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !48 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCslOySh1CwWOA_29getting_started_step_2_sqlite20establish_connection(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio5stdin() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs1_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5Stdin9read_line(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5StdinNtB7_4Read14read_to_string(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCslOySh1CwWOA_29getting_started_step_2_sqlite11create_post(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #9 !guid !49 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCsh8t0CH7JQ0M_17write_post_step_24main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!4 = !{i64 7916745363063381476}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i64 8}
!8 = !{i64 1, i64 536870913}
!9 = distinct !{!9, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2"}
!10 = distinct !{!10, !9, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2: argument 0"}
!11 = !{i64 5235402927130470986}
!12 = !{!10}
!13 = !{i64 3757247311464606090}
!14 = !{i64 -3132086639394671605}
!15 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!16 = !{i64 728816753222305298}
!17 = distinct !{!17, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsh8t0CH7JQ0M_17write_post_step_2"}
!18 = distinct !{!18, !17, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsh8t0CH7JQ0M_17write_post_step_2: argument 0"}
!19 = distinct !{!19, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2"}
!20 = distinct !{!20, !19, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECsh8t0CH7JQ0M_17write_post_step_2: argument 0"}
!21 = !{i64 -4622249376975221933}
!22 = !{!18}
!23 = !{!20}
!24 = !{!20, !18}
!25 = !{i64 1908242722320466908}
!26 = distinct !{null}
!27 = !{i64 -9102887347522455354}
!28 = !{i64 17535432350649407}
!29 = !{i64 -7818622761388861985}
!30 = distinct !{!30, i1 true, !"_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csh8t0CH7JQ0M_17write_post_step_2"}
!31 = distinct !{!31, !30, !"_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csh8t0CH7JQ0M_17write_post_step_2: argument 0"}
!32 = !{i64 8709809737156247692}
!33 = !{!31}
!34 = distinct !{!34, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2"}
!35 = distinct !{!35, !34, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvXs8_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!37 = distinct !{!37, !36, !"_RNvXs8_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!38 = distinct !{!38, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2"}
!39 = distinct !{!39, !38, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCsh8t0CH7JQ0M_17write_post_step_2: argument 0"}
!40 = distinct !{!40, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2"}
!41 = distinct !{!41, !40, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6models4PostECsh8t0CH7JQ0M_17write_post_step_2: argument 0"}
!42 = !{i64 252874670350580609}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!35}
!45 = !{!37}
!46 = !{!39}
!47 = !{!41}
!48 = !{i64 4321350834449912158}
!49 = !{i64 -2624081020897602054}
end_hunk_0
