Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/write_post_step_2-0e8f40a8d364ad5f.write_post_step_2.5072025282570635-cgu.0?download=true
inline.NumInlined: 65
inline.NumDeleted: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCs6UcWeUBy5yz_17write_post_step_2, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs6UcWeUBy5yz_17write_post_step_2, ptr @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs6UcWeUBy5yz_17write_post_step_2 }>, align 8, !guid !4
@1 = private unnamed_addr constant [38 x i8] c"What would you like your title to be?\0A", align 1, !guid !4
@2 = private unnamed_addr constant [60 x i8] c"examples/mysql/getting_started_step_2/src/bin/write_post.rs\00", align 1, !guid !4
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c";\00\00\00\00\00\00\00\0B\00\00\00#\00\00\00" }>, align 8, !guid !4
@4 = private unnamed_addr constant [6 x i8] c"CTRL+D", align 1, !guid !4
@5 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @4, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8, !guid !4
@6 = private unnamed_addr constant [48 x i8] c"\11\0AOk! Let's write \C0\08 (Press \C0\11 when finished)\0A\0A\00", align 1, !guid !4
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c";\00\00\00\00\00\00\00\0F\00\00\00'\00\00\00" }>, align 8, !guid !4
@8 = private unnamed_addr constant [29 x i8] c"\0D\0ASaved draft \C0\09 with id \C0\01\0A\00", align 1, !guid !4
@9 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs6UcWeUBy5yz_17write_post_step_2, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8, !guid !4
@10 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1, !guid !4
@_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_5mysql7backend5MysqlNtNtNtB1Q_10connection4stmt9StatementEECs6UcWeUBy5yz_17write_post_step_2(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel10connection15statement_cache8strategy22StatementCacheStrategyNtNtNtB1k_5mysql7backend5MysqlNtNtNtB2J_10connection4stmt9StatementEEL_EECs6UcWeUBy5yz_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !7, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel10connection15statement_cache8strategy22StatementCacheStrategyNtNtNtB1k_5mysql7backend5MysqlNtNtNtB2J_10connection4stmt9StatementEEL_EECs6UcWeUBy5yz_17write_post_step_2.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtNtNtCsjRvGck33osM_6diesel10connection15statement_cache8strategy22StatementCacheStrategyNtNtNtBR_5mysql7backend5MysqlNtNtNtB2g_10connection4stmt9StatementEEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs6UcWeUBy5yz_17write_post_step_2.exit5.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #11
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtNtNtCsjRvGck33osM_6diesel10connection15statement_cache8strategy22StatementCacheStrategyNtNtNtBR_5mysql7backend5MysqlNtNtNtB2g_10connection4stmt9StatementEEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs6UcWeUBy5yz_17write_post_step_2.exit5.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtNtNtCsjRvGck33osM_6diesel10connection15statement_cache8strategy22StatementCacheStrategyNtNtNtBR_5mysql7backend5MysqlNtNtNtB2g_10connection4stmt9StatementEEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs6UcWeUBy5yz_17write_post_step_2.exit5.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtNtCsjRvGck33osM_6diesel10connection15statement_cache8strategy22StatementCacheStrategyNtNtNtB1k_5mysql7backend5MysqlNtNtNtB2J_10connection4stmt9StatementEEL_EECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !10 {
bb.a:
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.a = icmp eq i64 %.val4, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %.val4, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit9, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i8

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i8: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit9

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit9: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs6UcWeUBy5yz_17write_post_step_2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs6UcWeUBy5yz_17write_post_step_2.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs6UcWeUBy5yz_17write_post_step_2.exit
    i64 1, label %bb.c
  ], !prof !12

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs6UcWeUBy5yz_17write_post_step_2.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
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
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #11
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #11
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs6UcWeUBy5yz_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs6UcWeUBy5yz_17write_post_step_2(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs6UcWeUBy5yz_17write_post_step_2.exit, label %bb.b

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
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs6UcWeUBy5yz_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs6UcWeUBy5yz_17write_post_step_2.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs6UcWeUBy5yz_17write_post_step_2.exit5.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #11
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs6UcWeUBy5yz_17write_post_step_2.exit5.i.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs6UcWeUBy5yz_17write_post_step_2.exit5.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation15InstrumentationEL_EEECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel5mysql10connection15MysqlConnectionECs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection3raw13RawConnectionECs6UcWeUBy5yz_17write_post_step_2.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_5mysql7backend5MysqlNtNtNtB1Q_10connection4stmt9StatementEECs6UcWeUBy5yz_17write_post_step_2(ptr %.val3, ptr nonnull %.val4) #12
          to label %.body unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection3raw13RawConnectionECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !5, !align !8, !noundef !5 ; 5 uses
  %i.g = load ptr, ptr %.val2, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection3raw13RawConnectionECs6UcWeUBy5yz_17write_post_step_2.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.g(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection3raw13RawConnectionECs6UcWeUBy5yz_17write_post_step_2.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_5mysql7backend5MysqlNtNtNtB1Q_10connection4stmt9StatementEECs6UcWeUBy5yz_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_5mysql7backend5MysqlNtNtNtB1Q_10connection4stmt9StatementEECs6UcWeUBy5yz_17write_post_step_2.exit

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #11
  br label %.body

.body:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.m, %bb.e ], [ %i.m, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  %.val7 = load ptr, ptr %0, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs6UcWeUBy5yz_17write_post_step_2(ptr %.val7, ptr %.val8) #12
          to label %common.resume unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_5mysql7backend5MysqlNtNtNtB1Q_10connection4stmt9StatementEECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d
  %.val5 = load ptr, ptr %0, align 8, !noundef !5 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.t, align 8            ; 6 uses
  %i.u = icmp eq ptr %.val5, null
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs6UcWeUBy5yz_17write_post_step_2.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_5mysql7backend5MysqlNtNtNtB1Q_10connection4stmt9StatementEECs6UcWeUBy5yz_17write_post_step_2.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.v = load ptr, ptr %.val6, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.v(ptr noundef nonnull %.val5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs6UcWeUBy5yz_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs6UcWeUBy5yz_17write_post_step_2.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #11
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ab, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel10connection15instrumentation18DynInstrumentationECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache14StatementCacheNtNtNtBI_5mysql7backend5MysqlNtNtNtB1Q_10connection4stmt9StatementEECs6UcWeUBy5yz_17write_post_step_2.exit, %bb.h, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void

bb.j:                                             ; preds = %.body, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsgczF5crJ4sT_3std2rt10lang_startuECs6UcWeUBy5yz_17write_post_step_2(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 !guid !15 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6UcWeUBy5yz_17write_post_step_2(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 !guid !17 {
bb.a:
  tail call void %0(), !inline_history !16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 !guid !19 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6UcWeUBy5yz_17write_post_step_2(ptr noundef nonnull %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCs6UcWeUBy5yz_17write_post_step_2(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !22 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs6UcWeUBy5yz_17write_post_step_2(ptr noundef nonnull readonly %i.a), !noalias !23
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs6UcWeUBy5yz_17write_post_step_24main() unnamed_addr #0 personality ptr @rust_eh_personality !guid !45 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvCskY7rGxMC33y_28getting_started_step_2_mysql20establish_connection(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx2, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx4, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 77 to ptr))
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.ad, %bb.z, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.ad ], [ %i.s, %bb.g ], [ %i.m, %bb.b ], [ %i.cl, %bb.z ]
  %.val36 = load i64, ptr %i.i, align 8           ; 2 uses
  %i.l = icmp eq i64 %.val36, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.body
  %.val37 = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %.val36, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit, %bb.w, %bb.v, %.loopexit, %bb.d, %bb.c, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio5stdin()
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.h, align 8
  %i.o = invoke { i64, ptr } @_RNvMs1_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5Stdin9read_line(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.e unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.f, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit30, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.r = extractvalue { i64, ptr } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47
  store ptr %i.r, ptr %i.a, align 8, !noalias !47
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #14
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #12
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit30: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.u = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.v = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.w = icmp samesign eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit30
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %i.y = phi ptr [ %i.bi, %bb.t ], [ %i.x, %.lr.ph.i.i.preheader.i ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !48, !noalias !49, !noundef !5 ; 3 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit17.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ac = icmp ne ptr %i.u, %i.z
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -2 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !48, !noalias !49, !noundef !5 ; 3 uses
  %i.af = and i8 %i.ae, 31
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = icmp slt i8 %i.ae, -64
  br i1 %i.ah, label %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit19.i.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = zext nneg i8 %i.aa to i32
  br label %bb.m

_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit17.i.i.i.i.i.i
  %i.aj = icmp ne ptr %i.u, %i.ad
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -3 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !48, !noalias !49, !noundef !5 ; 3 uses
  %i.am = and i8 %i.al, 15
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = icmp slt i8 %i.al, -64
  br i1 %i.ao, label %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit21.i.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit17.i.i.i.i.i.i
  %i.ap = phi ptr [ %i.bd, %bb.l ], [ %i.ad, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.l ], [ %i.ag, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit17.i.i.i.i.i.i ]
  %i.aq = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.ar = and i8 %i.aa, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  br label %bb.m

_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit19.i.i.i.i.i.i
  %i.au = icmp ne ptr %i.u, %i.ak
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !48, !noalias !49, !noundef !5
  %i.ax = and i8 %i.aw, 7
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 6
  %i.ba = and i8 %i.al, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit19.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.av, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit21.i.i.i.i.i.i ], [ %i.ak, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.bc, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit21.i.i.i.i.i.i ], [ %i.an, %_RNvXs2K_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs6UcWeUBy5yz_17write_post_step_2.exit19.i.i.i.i.i.i ]
  %i.be = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.bf = and i8 %i.ae, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.z, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.ai, %bb.j ], [ %i.at, %bb.k ] ; 8 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bj)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 133
  br i1 %i.bk, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i, 8
  switch i32 %i.bl, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 5760
  %i.bn = zext i1 %i.bm to i8
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bo = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 12288
  %i.bp = zext i1 %i.bo to i8
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.bq = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !50, !noundef !5
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bu = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !50, !noundef !5
  %i.by = lshr i8 %i.bx, 1
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i.i

_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.bp, %bb.q ], [ %i.bt, %bb.r ], [ %i.bn, %bb.p ], [ %i.by, %bb.s ]
  %i.bz = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i.i, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.ca = icmp eq ptr %i.u, %i.bi
  br i1 %i.ca, label %.loopexit, label %.lr.ph.i.i.i

bb.u:                                             ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs6UcWeUBy5yz_17write_post_step_2.exit.i.i.i.i, %bb.o, %bb.n
  %i.cb = ptrtoint ptr %i.y to i64
  %i.cc = ptrtoint ptr %i.u to i64
  %i.cd = sub i64 %i.cb, %i.cc
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.u, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit30
  %.sroa.0.0.i = phi i64 [ %i.cd, %bb.u ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit30 ], [ 0, %bb.t ]
  store ptr %i.u, ptr %i.g, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs6UcWeUBy5yz_17write_post_step_2, ptr %.sroa.49.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @5, ptr %i.cf, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs6UcWeUBy5yz_17write_post_step_2, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.f)
          to label %bb.v unwind label %bb.b

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio5stdin()
          to label %bb.w unwind label %bb.b

bb.w:                                             ; preds = %bb.v
  store ptr %i.cg, ptr %i.e, align 8
  %i.ch = invoke { i64, ptr } @_RNvXs3_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5StdinNtB7_4Read14read_to_string(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.x unwind label %bb.b       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = trunc nuw i64 %i.ci to i1
  br i1 %i.cj, label %bb.y, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit, !prof !46

bb.y:                                             ; preds = %bb.x
  %i.ck = extractvalue { i64, ptr } %i.ch, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51
  store ptr %i.ck, ptr %i.b, align 8, !noalias !51
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #12
          to label %.body unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cn = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !5, !noundef !5
  %i.co = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !noundef !5
  %i.cp = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.cq = load i64, ptr %i.ce, align 8, !noundef !5
  invoke void @_RNvCskY7rGxMC33y_28getting_started_step_2_mysql11create_post(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef %i.co)
          to label %bb.ac unwind label %bb.b

bb.ac:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs6UcWeUBy5yz_17write_post_step_2, ptr %.sroa.417.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.cr, ptr %i.cs, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @8, ptr noundef nonnull %i.c)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef align 8 dereferenceable(56) %i.d) #12
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %.val4.i = load i64, ptr %i.d, align 8, !alias.scope !52 ; 2 uses
  %i.cu = icmp eq i64 %.val4.i, 0
  br i1 %i.cu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val5.i = load ptr, ptr %i.cv, align 8, !alias.scope !52, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !52
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i = load i64, ptr %i.cw, align 8, !alias.scope !52 ; 2 uses
  %i.cx = icmp eq i64 %.val.i, 0
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i8.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i8.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i = load ptr, ptr %i.cy, align 8, !alias.scope !52, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #11, !noalias !52
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i8.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val34 = load i64, ptr %i.i, align 8           ; 2 uses
  %i.cz = icmp eq i64 %.val34, 0
  br i1 %i.cz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit39, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2.exit
  %.val35 = load ptr, ptr %.sroa.3.0..sroa_idx2, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35, i64 noundef %.val34, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit39

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body
  %.val32 = load i64, ptr %i.j, align 8           ; 2 uses
  %i.da = icmp eq i64 %.val32, 0
  br i1 %i.da, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit41, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i40

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i40: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit
  %.val33 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val33, i64 noundef %.val32, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit41

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit39: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i38, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val = load i64, ptr %i.j, align 8             ; 2 uses
  %i.db = icmp eq i64 %.val, 0
  br i1 %i.db, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit43, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit39
  %.val31 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #11
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit43

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit41: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i40, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel5mysql10connection15MysqlConnectionECs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef align 8 dereferenceable(56) %i.k) #12
          to label %bb.ag unwind label %bb.af

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit43: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i42, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel5mysql10connection15MysqlConnectionECs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef align 8 dereferenceable(56) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit41
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs6UcWeUBy5yz_17write_post_step_2.exit41
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs6UcWeUBy5yz_17write_post_step_2(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !53 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel5mysql10connection3rawNtB4_13RawConnectionNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskY7rGxMC33y_28getting_started_step_2_mysql20establish_connection(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio5stdin() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs1_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5Stdin9read_line(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtCsgczF5crJ4sT_3std2io5stdioNtB5_5StdinNtB7_4Read14read_to_string(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCskY7rGxMC33y_28getting_started_step_2_mysql11create_post(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #9 !guid !54 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCs6UcWeUBy5yz_17write_post_step_24main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
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
!4 = !{i64 1786560530887584843}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i64 1, i64 536870913}
!8 = !{i64 8}
!9 = !{i64 4065882190837787255}
!10 = !{i64 -6196545358571012207}
!11 = !{i64 -3056342895038437602}
!12 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!13 = !{i64 -6638062681323308438}
!14 = !{i64 -9064390696451343866}
!15 = !{i64 6264344161344703658}
!16 = distinct !{null}
!17 = !{i64 -3989146383444862646}
!18 = !{i64 17807037492577093}
!19 = !{i64 6507157205311984504}
!20 = distinct !{!20, i1 true, !"_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs6UcWeUBy5yz_17write_post_step_2"}
!21 = distinct !{!21, !20, !"_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!22 = !{i64 7656768927042653444}
!23 = !{!21}
!24 = distinct !{!24, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2"}
!25 = distinct !{!25, !24, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs6UcWeUBy5yz_17write_post_step_2"}
!27 = distinct !{!27, !26, !"_RINvMNtCscI6d9CVNmLh_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNvXsp_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs6UcWeUBy5yz_17write_post_step_2"}
!29 = distinct !{!29, !28, !"_RNvXsp_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs6UcWeUBy5yz_17write_post_step_2: argument 1"}
!30 = distinct !{!30, !28, !"_RNvXsp_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNvYINtNtNtCscI6d9CVNmLh_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs6UcWeUBy5yz_17write_post_step_2"}
!32 = distinct !{!32, !31, !"_RNvYINtNtNtCscI6d9CVNmLh_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs6UcWeUBy5yz_17write_post_step_2: argument 1"}
!33 = distinct !{!33, !31, !"_RNvYINtNtNtCscI6d9CVNmLh_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!34 = distinct !{!34, i1 true, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs6UcWeUBy5yz_17write_post_step_2"}
!35 = distinct !{!35, !34, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs6UcWeUBy5yz_17write_post_step_2: argument 1"}
!36 = distinct !{!36, !34, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!37 = distinct !{!37, i1 true, !"_RNvXs4_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!38 = distinct !{!38, !37, !"_RNvXs4_NtNtCscI6d9CVNmLh_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!39 = distinct !{!39, i1 true, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs6UcWeUBy5yz_17write_post_step_2"}
!40 = distinct !{!40, !39, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2"}
!42 = distinct !{!42, !41, !"_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE6unwrapCs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!43 = distinct !{!43, i1 true, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2"}
!44 = distinct !{!44, !43, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskY7rGxMC33y_28getting_started_step_2_mysql6models4PostECs6UcWeUBy5yz_17write_post_step_2: argument 0"}
!45 = !{i64 7773943585511324525}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!25}
!48 = !{!27}
!49 = !{!40, !38, !36, !35, !33, !32, !30, !29}
!50 = !{!36, !35, !33, !32, !30, !29, !27}
!51 = !{!42}
!52 = !{!44}
!53 = !{i64 -7599617752442133523}
!54 = !{i64 -2624081020897602054}
end_hunk_0
