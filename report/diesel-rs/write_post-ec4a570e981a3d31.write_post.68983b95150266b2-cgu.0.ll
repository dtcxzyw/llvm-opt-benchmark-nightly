Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/write_post-ec4a570e981a3d31.write_post.68983b95150266b2-cgu.0?download=true
inline.NumInlined: 59
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCs8YKNTHRys0w_10write_post, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs8YKNTHRys0w_10write_post, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs8YKNTHRys0w_10write_post }>, align 8
@1 = private unnamed_addr constant [38 x i8] c"What would you like your title to be?\0A", align 1
@2 = private unnamed_addr constant [61 x i8] c"examples/sqlite/getting_started_step_3/src/bin/write_post.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"<\00\00\00\00\00\00\00\09\00\00\00#\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"<\00\00\00\00\00\00\00\0A\00\00\00\17\00\00\00" }>, align 8
@5 = private unnamed_addr constant [6 x i8] c"CTRL+D", align 1
@6 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @5, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@7 = private unnamed_addr constant [48 x i8] c"\11\0AOk! Let's write \C0\08 (Press \C0\11 when finished)\0A\0A\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"<\00\00\00\00\00\00\00\0D\00\00\00'\00\00\00" }>, align 8
@9 = private unnamed_addr constant [18 x i8] c"\0D\0ASaved draft \C0\01\0A\00", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs8YKNTHRys0w_10write_post, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8
@11 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECs8YKNTHRys0w_10write_post(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !10 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !10, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !10
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECs8YKNTHRys0w_10write_post.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECs8YKNTHRys0w_10write_post.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECs8YKNTHRys0w_10write_post.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs8YKNTHRys0w_10write_post(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs8YKNTHRys0w_10write_post.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs8YKNTHRys0w_10write_post.exit
    i64 1, label %bb.c
  ], !prof !11

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs8YKNTHRys0w_10write_post.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs8YKNTHRys0w_10write_post.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs8YKNTHRys0w_10write_post.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #11
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #11
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs8YKNTHRys0w_10write_post.exit.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs8YKNTHRys0w_10write_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs8YKNTHRys0w_10write_post.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs8YKNTHRys0w_10write_post.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs8YKNTHRys0w_10write_post.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs8YKNTHRys0w_10write_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs8YKNTHRys0w_10write_post.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit5.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #11
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit5.i.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit5.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs8YKNTHRys0w_10write_post.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECs8YKNTHRys0w_10write_post(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val4, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECs8YKNTHRys0w_10write_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECs8YKNTHRys0w_10write_post.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #11
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit unwind label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECs8YKNTHRys0w_10write_post.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit9 unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit: ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.i, %.body ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val7 = load ptr, ptr %i.q, align 8, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8 = load ptr, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post(ptr %.val7, ptr %.val8) #12
          to label %.body10 unwind label %bb.l

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECs8YKNTHRys0w_10write_post.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit9: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_6sqlite7backend6SqliteNtNtNtB1Q_10connection4stmt9StatementEECs8YKNTHRys0w_10write_post.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5 = load ptr, ptr %i.t, align 8, !noundef !4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val6 = load ptr, ptr %i.u, align 8            ; 6 uses
  %i.v = icmp eq ptr %.val5, null
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.w = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.w(ptr noundef nonnull %.val5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body10, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #11
  br label %.body10

.body10:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit ], [ %i.ac, %bb.i ], [ %i.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECs8YKNTHRys0w_10write_post(ptr noalias noundef align 8 dereferenceable(24) %0) #12
  resume { ptr, i32 } %.pn2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !16, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.aj, align 8, !alias.scope !16, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.ak = icmp eq i64 %.val1.i, 0
  br i1 %i.ak, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !17, !noalias !16 ; 2 uses
  %i.an = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !17, !noalias !16, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !18
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ap = icmp eq i64 %i.am, %.val1.i
  br i1 %i.ap, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs8YKNTHRys0w_10write_post.exit
  %.val2.i = load i64, ptr %0, align 8, !range !5, !alias.scope !16, !noundef !4 ; 2 uses
  %i.aq = icmp eq i64 %.val2.i, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECs8YKNTHRys0w_10write_post.exit, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit.i
  %i.ar = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #11, !noalias !16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECs8YKNTHRys0w_10write_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECs8YKNTHRys0w_10write_post.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8YKNTHRys0w_10write_post.exit.i, %bb.k
  ret void

bb.l:                                             ; preds = %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection3raw13RawConnectionECs8YKNTHRys0w_10write_post.exit
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsgczF5crJ4sT_3std2rt10lang_startuECs8YKNTHRys0w_10write_post(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8YKNTHRys0w_10write_post(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs8YKNTHRys0w_10write_post(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8YKNTHRys0w_10write_post(ptr noundef nonnull %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCs8YKNTHRys0w_10write_post(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs8YKNTHRys0w_10write_post(ptr noundef nonnull readonly %i.a), !noalias !23
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs8YKNTHRys0w_10write_post4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvCs5j5LbXaSBog_29getting_started_step_3_sqlite20establish_connection(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.k)
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 77 to ptr))
          to label %bb.c unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit: ; preds = %bb.d, %.body25, %bb.b
  %.pn23 = phi { ptr, i32 } [ %i.l, %bb.b ], [ %.pn, %.body25 ], [ %.pn, %bb.d ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECs8YKNTHRys0w_10write_post(ptr noalias noundef align 8 dereferenceable(80) %i.k) #12
          to label %bb.ag unwind label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit

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

.body25:                                          ; preds = %bb.s, %.body, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.o, %bb.e ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.s ] ; 2 uses
  %.val33 = load i64, ptr %i.j, align 8           ; 2 uses
  %i.n = icmp eq i64 %.val33, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit, label %bb.d

bb.d:                                             ; preds = %.body25
  %.val34 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34, i64 noundef %.val33, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit

bb.e:                                             ; preds = %bb.o, %bb.n, %bb.f, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body25

bb.f:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.i, align 8
  %i.p = invoke { i64, ptr } @_RNvMs1_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5Stdin9read_line(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.h, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit27, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.s = extractvalue { i64, ptr } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  store ptr %i.s, ptr %i.a, align 8, !noalias !33
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs8YKNTHRys0w_10write_post(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #12
          to label %.body25 unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit27: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.v = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !4 ; 4 uses
  %i.w = icmp sgt i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = add nsw i64 %i.v, -1                     ; 5 uses
  %i.y = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit27
  %.not.i.not = icmp eq i64 %i.v, 0
  br i1 %.not.i.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !34, !noundef !4
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit27
  store ptr %i.y, ptr %i.h, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.x, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs8YKNTHRys0w_10write_post, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @6, ptr %i.ae, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs8YKNTHRys0w_10write_post, ptr %.sroa.416.0..sroa_idx, align 8
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
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6models4PostECs8YKNTHRys0w_10write_post.exit, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit, %bb.t, %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.am, %bb.w ] ; 2 uses
  %.val31 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.ah = icmp eq i64 %.val31, 0
  br i1 %i.ah, label %.body25, label %bb.s

bb.s:                                             ; preds = %.body
  %.val32 = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32, i64 noundef %.val31, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %.body25

bb.t:                                             ; preds = %bb.q
  store ptr %i.af, ptr %i.e, align 8
  %i.ai = invoke { i64, ptr } @_RNvXs3_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5StdinNtB7_4Read14read_to_string(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.r       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.v, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit, !prof !32

bb.v:                                             ; preds = %bb.u
  %i.al = extractvalue { i64, ptr } %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35
  store ptr %i.al, ptr %i.b, align 8, !noalias !35
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs8YKNTHRys0w_10write_post(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #12
          to label %.body unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !4, !noundef !4
  %i.ap = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !noundef !4
  invoke void @_RNvCs5j5LbXaSBog_29getting_started_step_3_sqlite11create_post(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.ap)
          to label %bb.z unwind label %bb.r

bb.z:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %.val4.i = load i64, ptr %i.d, align 8, !alias.scope !36 ; 2 uses
  %i.aq = icmp eq i64 %.val4.i, 0
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val5.i = load ptr, ptr %i.ar, align 8, !alias.scope !36, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit.i: ; preds = %bb.aa, %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i = load i64, ptr %i.as, align 8, !alias.scope !36 ; 2 uses
  %i.at = icmp eq i64 %.val.i, 0
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6models4PostECs8YKNTHRys0w_10write_post.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i = load ptr, ptr %i.au, align 8, !alias.scope !36, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6models4PostECs8YKNTHRys0w_10write_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6models4PostECs8YKNTHRys0w_10write_post.exit: ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs8YKNTHRys0w_10write_post, ptr %.sroa.420.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @9, ptr noundef nonnull %i.c)
          to label %bb.ac unwind label %bb.r

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6models4PostECs8YKNTHRys0w_10write_post.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val29 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.av = icmp eq i64 %.val29, 0
  br i1 %i.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit36, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val30 = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30, i64 noundef %.val29, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit36

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit36: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val = load i64, ptr %i.j, align 8             ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit37, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit36
  %.val28 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit37

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit37: ; preds = %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECs8YKNTHRys0w_10write_post(ptr noalias noundef align 8 dereferenceable(80) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8YKNTHRys0w_10write_post.exit
  resume { ptr, i32 } %.pn23
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs8YKNTHRys0w_10write_post(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
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
declare void @_RNvCs5j5LbXaSBog_29getting_started_step_3_sqlite20establish_connection(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80)) unnamed_addr #1

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
declare void @_RNvCs5j5LbXaSBog_29getting_started_step_3_sqlite11create_post(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCs8YKNTHRys0w_10write_post4main, ptr %i.a, align 8
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
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{i64 8}
!7 = !{i64 1, i64 536870913}
!8 = distinct !{!8, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post"}
!9 = distinct !{!9, !8, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post: argument 0"}
!10 = !{!9}
!11 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!12 = distinct !{!12, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECs8YKNTHRys0w_10write_post"}
!13 = distinct !{!13, !12, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECs8YKNTHRys0w_10write_post: argument 0"}
!14 = distinct !{!14, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post"}
!15 = distinct !{!15, !14, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8YKNTHRys0w_10write_post: argument 0"}
!16 = !{!13}
!17 = !{!15}
!18 = !{!15, !13}
!19 = distinct !{null}
!20 = !{i64 17371244340819691}
!21 = distinct !{!21, i1 true, !"_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs8YKNTHRys0w_10write_post"}
!22 = distinct !{!22, !21, !"_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs8YKNTHRys0w_10write_post: argument 0"}
!23 = !{!22}
!24 = distinct !{!24, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post"}
!25 = distinct !{!25, !24, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post: argument 0"}
!26 = distinct !{!26, i1 true, !"_RNvXs8_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!27 = distinct !{!27, !26, !"_RNvXs8_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post"}
!29 = distinct !{!29, !28, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs8YKNTHRys0w_10write_post: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6models4PostECs8YKNTHRys0w_10write_post"}
!31 = distinct !{!31, !30, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6models4PostECs8YKNTHRys0w_10write_post: argument 0"}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!25}
!34 = !{!27}
!35 = !{!29}
!36 = !{!31}
end_hunk_0
