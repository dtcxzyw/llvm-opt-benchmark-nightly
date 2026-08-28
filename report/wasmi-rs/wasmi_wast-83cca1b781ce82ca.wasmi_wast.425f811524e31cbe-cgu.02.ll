Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_wast-83cca1b781ce82ca.wasmi_wast.425f811524e31cbe-cgu.02?download=true
inline.NumInlined: 479
inline.NumDeleted: 299
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRReNtB6_5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast }>, align 8
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecTReB14_EENtB6_5Debug3fmtCs5HiJSMzJl2A_10wasmi_wast }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %1 = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideECs5HiJSMzJl2A_10wasmi_wast.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideECs5HiJSMzJl2A_10wasmi_wast.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !6, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !6, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i unwind label %bb.b, !noalias !6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i unwind label %bb.c, !noalias !6

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !6
  unreachable

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.d

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !9, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !12, !alias.scope !13, !noalias !9, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit.i.i unwind label %bb.c, !noalias !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !12, !alias.scope !18, !noalias !9, !noundef !5
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit8.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit8.i.i unwind label %bb.e, !noalias !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !9
  unreachable

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValEECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.f

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.g = load i8, ptr %i.f, align 8, !range !27, !alias.scope !28, !noundef !5 ; 2 uses
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %1 = trunc nuw i8 %i.g to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !49, !nonnull !5, !noundef !5
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !50
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #14
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !60, !nonnull !5, !noundef !5
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !61
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %.body.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #14
          to label %.body.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !71, !nonnull !5, !noundef !5
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !72
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #14
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.w = icmp eq i64 %i.e, %.val1
  br i1 %i.w, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph
  %i.x = add i64 %.sroa.0.1.i.i23, 1              ; 2 uses
  %i.y = icmp eq i64 %i.x, %.val1
  br i1 %i.y, label %.body, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.f, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %i.aa = icmp eq i64 %i.e, %.val1
  br i1 %i.aa, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.i
  %.sroa.0.1.i.i23 = phi i64 [ %i.x, %bb.i ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i.i23
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #15
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

.body:                                            ; preds = %bb.i, %.body.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEEECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.l

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.l:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEECs5HiJSMzJl2A_10wasmi_wast(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a
  %i.b = shl nuw nsw i64 %.8.val, 4
  %i.c = add nuw i64 %i.b, 64
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775737) %i.c, i64 noundef 8) #16
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = shl nuw nsw i64 %.8.val, 4
  %i.f = add nuw i64 %i.e, 64
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775737) %i.f, i64 noundef 8) #16
  resume { ptr, i32 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8VXqOAwmH9S_4wast4core5types7TypeUseNtBE_12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !73, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8VXqOAwmH9S_4wast4core5types12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !79, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = mul nuw nsw i64 %.val1.i.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775737) %i.f, i64 noundef 8) #16, !noalias !79
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i.i = load i64, ptr %i.g, align 8, !alias.scope !79, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %.val3.i.i, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8VXqOAwmH9S_4wast4core5types12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i = load ptr, ptr %i.i, align 8, !alias.scope !79, !nonnull !5, !noundef !5
  %i.j = mul nuw nsw i64 %.val3.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, -9223372036854775737) %i.j, i64 noundef 8) #16, !noalias !79
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8VXqOAwmH9S_4wast4core5types12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8VXqOAwmH9S_4wast4core5types12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast3wat3WatECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6module6ModuleECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %1 = trunc nuw i64 %i.a to i1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %1, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !92, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !92, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i2 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [224 x i8], ptr %i.d, i64 %.sroa.0.0.i.i.i.i.i2
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i2, 1 ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(224) %i.i)
          to label %bb.d unwind label %bb.f, !noalias !92

bb.e:                                             ; preds = %.lr.ph4
  %i.k = add i64 %.sroa.0.1.i.i.i.i.i3, 1         ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body.i.i.i, label %.lr.ph4

bb.f:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body.i.i.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i3 = phi i64 [ %i.k, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw [224 x i8], ptr %i.d, i64 %.sroa.0.1.i.i.i.i.i3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(224) %i.o) #15
          to label %bb.e unwind label %bb.g, !noalias !92

bb.g:                                             ; preds = %.lr.ph4
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !92
  unreachable

.body.i.i.i:                                      ; preds = %bb.e, %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %.body.i.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i: ; preds = %.body.i.i.i
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6module6ModuleECs5HiJSMzJl2A_10wasmi_wast.exit

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6module6ModuleECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6module6ModuleECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !93, !noundef !5 ; 6 uses
  %i.b = icmp ne i64 %i.a, 14
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -6
  %i.d = icmp samesign ugt i64 %i.a, 5
  %i.e = select i1 %i.d, i64 %i.c, i64 8
  switch i64 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 3, label %bb.j
    i64 4, label %bb.n
    i64 6, label %bb.r
    i64 7, label %bb.s
    i64 8, label %bb.v
    i64 9, label %bb.y
    i64 10, label %bb.z
    i64 11, label %bb.aa
    i64 12, label %bb.ad
    i64 13, label %bb.ag
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveEECs5HiJSMzJl2A_10wasmi_wast.exit, %bb.z, %bb.y, %bb.r, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !94, !alias.scope !95, !noundef !5
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 2)
  switch i64 %i.h, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast3wat3WatECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !94, !alias.scope !98, !noundef !5
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 2)
  switch i64 %i.m, label %bb.g [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast3wat3WatECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.i:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !94, !alias.scope !101, !noundef !5
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 2)
  switch i64 %i.r, label %bb.k [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast3wat3WatECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.m:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.n:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !94, !alias.scope !104, !noundef !5
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.v, i64 2)
  switch i64 %i.w, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.p:                                             ; preds = %bb.n
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast3wat3WatECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.u)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.q:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs8VXqOAwmH9S_4wast5token4SpanRShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.r:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.s:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !107, !alias.scope !108, !noundef !5 ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 4
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nsw i64 %i.ab, -3
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveECs5HiJSMzJl2A_10wasmi_wast:bb.a

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast3wat3WatECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ao)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.ad:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !107, !alias.scope !114, !noundef !5 ; 3 uses
  %i.ax = icmp ne i64 %i.aw, 4
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nsw i64 %i.aw, -3
  %i.az = icmp samesign ugt i64 %i.aw, 2
  %i.ba = select i1 %i.az, i64 %i.ay, i64 1
  switch i64 %i.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit [
    i64 0, label %bb.ae
    i64 1, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastArgENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bb)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.af:                                            ; preds = %bb.ad
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast3wat3WatECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.av)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.ag:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !123, !nonnull !5, !noundef !5 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !123, !noundef !5 ; 4 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %i.bi = icmp eq i64 %i.bk, %i.bg
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i.i.i816 = phi i64 [ %i.bk, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [120 x i8], ptr %i.be, i64 %.sroa.0.0.i.i.i816
  %i.bk = add i64 %.sroa.0.0.i.i.i816, 1          ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(120) %i.bj)
          to label %bb.ah unwind label %bb.aj, !noalias !123, !inline_history !124

bb.ai:                                            ; preds = %.lr.ph18
  %i.bl = add i64 %.sroa.0.1.i.i.i917, 1          ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.bg
  br i1 %i.bm, label %._crit_edge, label %.lr.ph18

bb.aj:                                            ; preds = %.lr.ph
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = icmp eq i64 %i.bk, %i.bg
  br i1 %i.bo, label %._crit_edge, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.aj, %bb.ai
  %.sroa.0.1.i.i.i917 = phi i64 [ %i.bl, %bb.ai ], [ %i.bk, %bb.aj ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [120 x i8], ptr %i.be, i64 %.sroa.0.1.i.i.i917
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(120) %i.bp) #15
          to label %bb.ai unwind label %bb.ak, !noalias !123, !inline_history !124

._crit_edge:                                      ; preds = %bb.ai, %bb.aj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.bc)
          to label %common.resume unwind label %bb.al, !inline_history !125

bb.ak:                                            ; preds = %.lr.ph18
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !123, !inline_history !124
  unreachable

common.resume:                                    ; preds = %bb.am, %.body.i, %._crit_edge
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %.body.i ], [ %i.bn, %._crit_edge ], [ %i.bs, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %._crit_edge
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !inline_history !125
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.ah, %bb.ag
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast13WastDirectiveENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.bc), !inline_history !125
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.am:                                            ; preds = %bb.x, %bb.w
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #15
          to label %common.resume unwind label %bb.aq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast11WastExecuteECs5HiJSMzJl2A_10wasmi_wast.exit5: ; preds = %bb.v, %bb.w, %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !132, !nonnull !5, !noundef !5 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !132, !noundef !5 ; 4 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph20

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i: ; preds = %.lr.ph20
  %i.ca = icmp eq i64 %i.cc, %i.by
  br i1 %i.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast11WastExecuteECs5HiJSMzJl2A_10wasmi_wast.exit5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i
  %.sroa.0.0.i.i.i19 = phi i64 [ %i.cc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast11WastExecuteECs5HiJSMzJl2A_10wasmi_wast.exit5 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %.sroa.0.0.i.i.i19
  %i.cc = add nuw nsw i64 %.sroa.0.0.i.i.i19, 1   ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i unwind label %bb.an, !noalias !132

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i.i: ; preds = %.lr.ph23
  %i.cd = add i64 %.sroa.0.1.i.i.i21, 1           ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.by
  br i1 %i.ce, label %.body.i, label %.lr.ph23

bb.an:                                            ; preds = %.lr.ph20
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = icmp eq i64 %i.cc, %i.by
  br i1 %i.cg, label %.body.i, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i.i
  %.sroa.0.1.i.i.i21 = phi i64 [ %i.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i.i ], [ %i.cc, %bb.an ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %.sroa.0.1.i.i.i21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4wast11WastRetCoreECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ch)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i.i unwind label %bb.ao, !noalias !132

bb.ao:                                            ; preds = %.lr.ph23
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !132
  unreachable

.body.i:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit7.i.i.i, %bb.an
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %.body.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast7WastRetECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast11WastExecuteECs5HiJSMzJl2A_10wasmi_wast.exit5
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8VXqOAwmH9S_4wast4wast7WastRetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8VXqOAwmH9S_4wast4wast8QuoteWatECs5HiJSMzJl2A_10wasmi_wast.exit

bb.aq:                                            ; preds = %bb.am
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !133, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !133, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 4 uses
  %i.f = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !12, !alias.scope !136, !noalias !133, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i unwind label %bb.c, !noalias !133

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e) #15
          to label %.body.i.i.i unwind label %bb.g, !noalias !133

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !range !4, !alias.scope !143, !noalias !133, !noundef !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i
  %1 = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i unwind label %bb.i, !noalias !133

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i unwind label %bb.i, !noalias !133

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !133
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i: ; preds = %bb.f, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i
  %i.o = icmp eq i64 %i.f, %.val1.i
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.p = add i64 %.sroa.0.1.i.i.i22, 1            ; 2 uses
  %i.q = icmp eq i64 %i.p, %.val1.i
  br i1 %i.q, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.j, %bb.c ]
  %i.s = icmp eq i64 %i.f, %.val1.i
  br i1 %i.s, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.p, %bb.h ], [ %i.f, %.body.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i22
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(72) %i.t) #15
          to label %bb.h unwind label %bb.j, !noalias !133

bb.j:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !133
  unreachable

.body.i:                                          ; preds = %bb.h, %.body.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECs5HiJSMzJl2A_10wasmi_wast.exit.i unwind label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !12, !alias.scope !146, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #15
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr %0, align 8, !range !4, !alias.scope !149, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit
  %1 = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECs5HiJSMzJl2A_10wasmi_wast.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs5HiJSMzJl2A_10wasmi_wast.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityECs5HiJSMzJl2A_10wasmi_wast(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !152, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_EECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !153, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775737) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_EECs5HiJSMzJl2A_10wasmi_wast.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !152, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !153, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775737) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #16
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_EECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core3tag7TagTypeECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !160, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8VXqOAwmH9S_4wast4core5types7TypeUseNtBE_12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !164, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = mul nuw nsw i64 %.val1.i.i.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775737) %i.f, i64 noundef 8) #16, !noalias !164
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !164, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8VXqOAwmH9S_4wast4core5types7TypeUseNtBE_12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !164, !nonnull !5, !noundef !5
  %i.j = mul nuw nsw i64 %.val3.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775737) %i.j, i64 noundef 8) #16, !noalias !164
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8VXqOAwmH9S_4wast4core5types7TypeUseNtBE_12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs8VXqOAwmH9S_4wast4core5types7TypeUseNtBE_12FunctionTypeEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %cond = icmp eq i64 %.val2, 0
  br i1 %cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %.val2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i14 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.0.i.i14
  %i.d = add nuw nsw i64 %.sroa.0.0.i.i14, 1      ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph16
  %i.e = add i64 %.sroa.0.1.i.i15, 1              ; 2 uses
  %i.f = icmp eq i64 %i.e, %.val2
  br i1 %i.f, label %.body.i, label %.lr.ph16

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %.val2
  br i1 %i.h, label %.body.i, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i15 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.1.i.i15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(88) %i.i) #15
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph16
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %i.k = mul nuw nsw i64 %.val2, 88
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775737) %i.k, i64 noundef 8) #16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = icmp eq i64 %.val6, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %.val2, 88
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775737) %i.n, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit

bb.f:                                             ; preds = %.body.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.p = shl nuw nsw i64 %.val6, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, -9223372036854775737) %i.p, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionECs5HiJSMzJl2A_10wasmi_wast.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %.val4, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit11, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr11InstructionEECs5HiJSMzJl2A_10wasmi_wast.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.t = shl nuw nsw i64 %.val4, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775737) %i.t, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit11

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.f, %.body.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.u, align 8, !align !165, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load i64, ptr %i.v, align 8           ; 2 uses
  %i.w = icmp eq ptr %.val9, null
  %i.x = icmp eq i64 %.val10, 0
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs8VXqOAwmH9S_4wast4core4expr10BranchHintEECs5HiJSMzJl2A_10wasmi_wast.exit
  %i.y = shl nuw nsw i64 %.val10, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, -9223372036854775737) %i.y, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs8VXqOAwmH9S_4wast5token4SpanEEECs5HiJSMzJl2A_10wasmi_wast.exit

end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6module11ModuleFieldECs5HiJSMzJl2A_10wasmi_wast:bb.a
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ee)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit

bb.az:                                            ; preds = %bb.av
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.ba:                                            ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i7 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load i64, ptr %i.ei, align 8, !range !426, !alias.scope !427, !noundef !5
  %switch.not.i.i = icmp eq i64 %i.el, 3
  br i1 %switch.not.i.i, label %bb.bc, label %common.resume

bb.bc:                                            ; preds = %bb.bb
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24) %i.em)
          to label %common.resume unwind label %bb.be

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i7: ; preds = %bb.ba
  %i.en = load i64, ptr %i.ei, align 8, !range !426, !alias.scope !432, !noundef !5
  %switch.not.i1.i = icmp eq i64 %i.en, 3
  br i1 %switch.not.i1.i, label %bb.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i7
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eo)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit

bb.be:                                            ; preds = %bb.bc
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bf:                                            ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i8 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !435, !noundef !5
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %common.resume, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.es)
          to label %common.resume unwind label %bb.bj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i8: ; preds = %bb.bf
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !440, !noundef !5
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ev)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.bw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i9, %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i8, %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i7, %bb.ay, %bb.ax, %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i6, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4func8FuncKindECs5HiJSMzJl2A_10wasmi_wast.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core3tag7TagTypeECs5HiJSMzJl2A_10wasmi_wast.exit.sink.split.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i, %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i.i.i, %bb.ae, %bb.ad, %bb.ad, %bb.ad, %bb.t, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i, %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom9ProducersECs5HiJSMzJl2A_10wasmi_wast.exit.i, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom7Dylink0ECs5HiJSMzJl2A_10wasmi_wast.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory4DataECs5HiJSMzJl2A_10wasmi_wast.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core5table4ElemECs5HiJSMzJl2A_10wasmi_wast.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core5types3RecECs5HiJSMzJl2A_10wasmi_wast.exit, %bb.a, %bb.a
  ret void

bb.bk:                                            ; preds = %bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !range !426, !alias.scope !443, !noundef !5
  %switch1.i.i = icmp samesign ugt i64 %i.fa, 1
  br i1 %switch1.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core5table4ElemECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.fb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core5table4ElemECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core5table11ElemPayloadECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(72) %i.fd) #15
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core5table4ElemECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.bk, %bb.bl
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core5table11ElemPayloadECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ff)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit

bb.bo:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !448, !noundef !5
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory4DataECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core4expr10ExpressionECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %i.fh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory4DataECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.fg) #15
          to label %common.resume unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6memory4DataECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.bo, %bb.bp
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs8VXqOAwmH9S_4wast4core6memory7DataValEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.fg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit

bb.bs:                                            ; preds = %bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i9 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core3tag7TagTypeECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.fo) #15
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i9: ; preds = %bb.bs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !462, !noundef !5 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6export12InlineExportECs5HiJSMzJl2A_10wasmi_wast.exit.i9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !468, !noundef !5 ; 2 uses
  %i.ft = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ft, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fu = mul nuw nsw i64 %.val1.i.i.i.i.i, 96
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef range(i64 1, -9223372036854775737) %i.fu, i64 noundef 8) #16, !noalias !469
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val3.i.i.i.i.i = load i64, ptr %i.fv, align 8, !alias.scope !468, !noundef !5 ; 2 uses
  %i.fw = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.fw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs8VXqOAwmH9S_4wast5token2IdEIB1d_NtB1A_14NameAnnotationENtNtNtB1C_4core5types7ValTypeEEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i.i.i.i.i = load ptr, ptr %i.fx, align 8, !alias.scope !468, !nonnull !5, !noundef !5
  %i.fy = mul nuw nsw i64 %.val3.i.i.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775737) %i.fy, i64 noundef 8) #16, !noalias !469
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8VXqOAwmH9S_4wast4core6custom6CustomECs5HiJSMzJl2A_10wasmi_wast.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsg06799QCvd1_17wasmi_collections15string_interner3SymINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEEECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.b = load i8, ptr %i.a, align 8, !range !27, !alias.scope !470, !noundef !5 ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEECs5HiJSMzJl2A_10wasmi_wast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %1 = trunc nuw i8 %i.b to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !491, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !491
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #14
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !501, !nonnull !5, !noundef !5
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !502
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #14
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !512, !nonnull !5, !noundef !5
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !513
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEECs5HiJSMzJl2A_10wasmi_wast.exit

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTINtNtNtCsefoF4u9kbII_5wasmi4func6caller6CallerL0_uENtNtNtNtB1x_6engine8executor5inout11InOutParamsEEp6OutputINtNtBQ_6result6ResultNtB2h_12InOutResultsNtNtB1x_5error5ErrorENtNtBQ_6marker4SendNtB4d_4SyncEL_E9drop_slowCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEECs5HiJSMzJl2A_10wasmi_wast.exit

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi4func16TrampolineEntityuEECs5HiJSMzJl2A_10wasmi_wast.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsefoF4u9kbII_5wasmi6linker10DefinitionuEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs5HiJSMzJl2A_10wasmi_wast.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE6resizeCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 12 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE8truncateCs5HiJSMzJl2A_10wasmi_wast.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %2, align 8  ; 16 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 10 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 14 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.f = load i64, ptr %0, align 8, !range !152, !alias.scope !514, !noalias !519, !noundef !5
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i, !prof !521

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 24), !noalias !519
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !522, !noalias !519
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !522, !noalias !519, !nonnull !5, !noundef !5
  %i.l = icmp ult i64 %i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i ; 7 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %.sroa.19.1.insert.ext.i = zext i8 %.sroa.9.0.copyload to i64 ; 3 uses
  %i.o = add i64 %i.e, -1
  %i.p = add i64 %i.o, %i.i                       ; 6 uses
  switch i8 %.sroa.0.0.copyload, label %.lr.ph.i.split [
    i8 0, label %.lr.ph.i.split.us
    i8 1, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader
    i8 2, label %.lr.ph.i.split.us
    i8 3, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader
    i8 4, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader
    i8 5, label %.lr.ph.i.split.us
    i8 6, label %.lr.ph.i.split.us
  ]

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader: ; preds = %.lr.ph.i
  %i.q = xor i64 %i.b, -1
  %i.r = add i64 %1, %i.q                         ; 3 uses
  %i.s = add i64 %1, -2
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.epil.preheader, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader.new

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader.new: ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader
  %unroll_iter = and i64 %i.r, -2
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader: ; preds = %.lr.ph.i, %.lr.ph.i
  %i.u = xor i64 %i.b, -1
  %i.v = add i64 %1, %i.u                         ; 2 uses
  %i.w = add i64 %1, -2
  %i.x = sub i64 %i.w, %i.b
  %xtraiter68 = and i64 %i.v, 7                   ; 3 uses
  %i.y = icmp ult i64 %i.x, 7
  br i1 %i.y, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil.preheader, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader.new

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader.new: ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader
  %unroll_iter72 = and i64 %i.v, -8
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.6.0.copyload, 0
  %i.z = and i64 %.sroa.7.0.copyload, 4294967295
  %.sroa.15.sroa.0.0.insert.ext.i.us = select i1 %.not.i.i, i64 0, i64 %i.z ; 5 uses
  %i.aa = xor i64 %i.b, -1
  %i.ab = add i64 %1, %i.aa                       ; 2 uses
  %i.ac = add i64 %1, -2
  %i.ad = sub i64 %i.ac, %i.b
  %xtraiter74 = and i64 %i.ab, 3                  ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil.preheader, label %.lr.ph.i.split.us.new

.lr.ph.i.split.us.new:                            ; preds = %.lr.ph.i.split.us
  %unroll_iter79 = and i64 %i.ab, -4
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us: ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us, %.lr.ph.i.split.us.new
  %.sroa.0.029.i.us = phi ptr [ %i.m, %.lr.ph.i.split.us.new ], [ %i.ai, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us ] ; 13 uses
  %niter80 = phi i64 [ 0, %.lr.ph.i.split.us.new ], [ %niter80.next.3, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us ]
  store i8 %.sroa.0.0.copyload, ptr %.sroa.0.029.i.us, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 8
  store i64 %.sroa.15.sroa.0.0.insert.ext.i.us, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !519
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 24
  store i8 %.sroa.0.0.copyload, ptr %i.af, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 28
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us.1, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 32
  store i64 %.sroa.15.sroa.0.0.insert.ext.i.us, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us.1, align 8, !noalias !519
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 48
  store i8 %.sroa.0.0.copyload, ptr %i.ag, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 52
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us.2, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 56
  store i64 %.sroa.15.sroa.0.0.insert.ext.i.us, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us.2, align 8, !noalias !519
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 72
  store i8 %.sroa.0.0.copyload, ptr %i.ah, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 76
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us.3, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 80
  store i64 %.sroa.15.sroa.0.0.insert.ext.i.us, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us.3, align 8, !noalias !519
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us, i64 96 ; 3 uses
  %niter80.next.3 = add i64 %niter80, 4           ; 2 uses
  %niter80.ncmp.3 = icmp eq i64 %niter80.next.3, %unroll_iter79
  br i1 %niter80.ncmp.3, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16: ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader.new
  %.sroa.0.029.i.us14 = phi ptr [ %i.m, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader.new ], [ %i.aq, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16 ] ; 17 uses
  %niter73 = phi i64 [ 0, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader.new ], [ %niter73.next.7, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16 ]
  store i8 %.sroa.0.0.copyload, ptr %.sroa.0.029.i.us14, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23, align 8, !noalias !519
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 24
  store i8 %.sroa.0.0.copyload, ptr %i.aj, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 32
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.1, align 8, !noalias !519
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 48
  store i8 %.sroa.0.0.copyload, ptr %i.ak, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 56
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.2, align 8, !noalias !519
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 72
  store i8 %.sroa.0.0.copyload, ptr %i.al, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 80
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.3, align 8, !noalias !519
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 96
  store i8 %.sroa.0.0.copyload, ptr %i.am, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 104
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.4, align 8, !noalias !519
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 120
  store i8 %.sroa.0.0.copyload, ptr %i.an, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 128
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.5, align 8, !noalias !519
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 144
  store i8 %.sroa.0.0.copyload, ptr %i.ao, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 152
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.6, align 8, !noalias !519
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 168
  store i8 %.sroa.0.0.copyload, ptr %i.ap, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 176
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.7, align 8, !noalias !519
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14, i64 192 ; 3 uses
  %niter73.next.7 = add i64 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i64 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %._crit_edge.thread.i.loopexit62.unr-lcssa, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33: ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader.new
  %.sroa.0.029.i.us31 = phi ptr [ %i.m, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader.new ], [ %i.as, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33 ] ; 11 uses
  %niter = phi i64 [ 0, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader.new ], [ %niter.next.1, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33 ]
  %.sroa.10.0..sroa.0.0.sroa_idx.i.us38 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa.0.0.sroa_idx.i.us38, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i64 3, i1 false)
  store i8 4, ptr %.sroa.0.029.i.us31, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us39 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us39, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us40 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us40, align 8, !noalias !519
  %.sroa.19.0..sroa.0.0.sroa_idx.i.us43 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 16
  store i64 %.sroa.19.1.insert.ext.i, ptr %.sroa.19.0..sroa.0.0.sroa_idx.i.us43, align 8, !noalias !519
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 24
  %.sroa.10.0..sroa.0.0.sroa_idx.i.us38.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa.0.0.sroa_idx.i.us38.1, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i64 3, i1 false)
  store i8 4, ptr %i.ar, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us39.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 28
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us39.1, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us40.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 32
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us40.1, align 8, !noalias !519
  %.sroa.19.0..sroa.0.0.sroa_idx.i.us43.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 40
  store i64 %.sroa.19.1.insert.ext.i, ptr %.sroa.19.0..sroa.0.0.sroa_idx.i.us43.1, align 8, !noalias !519
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31, i64 48 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.i.loopexit64.unr-lcssa, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  unreachable

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us
  %lcmp.mod76.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod76.not, label %._crit_edge.thread.i, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil.preheader

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %.lr.ph.i.split.us
  %.sroa.0.029.i.us.epil.init = phi ptr [ %i.m, %.lr.ph.i.split.us ], [ %i.ai, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod78 = icmp ne i64 %xtraiter74, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil: ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil.preheader
  %.sroa.0.029.i.us.epil = phi ptr [ %.sroa.0.029.i.us.epil.init, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil.preheader ], [ %i.at, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil ] ; 4 uses
  %epil.iter75 = phi i64 [ 0, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil.preheader ], [ %epil.iter75.next, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil ]
  store i8 %.sroa.0.0.copyload, ptr %.sroa.0.029.i.us.epil, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us.epil, i64 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us.epil, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us.epil, i64 8
  store i64 %.sroa.15.sroa.0.0.insert.ext.i.us, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us.epil, align 8, !noalias !519
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us.epil, i64 24 ; 2 uses
  %epil.iter75.next = add i64 %epil.iter75, 1     ; 2 uses
  %epil.iter75.cmp.not = icmp eq i64 %epil.iter75.next, %xtraiter74
  br i1 %epil.iter75.cmp.not, label %._crit_edge.thread.i, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil, !llvm.loop !523

._crit_edge.thread.i.loopexit62.unr-lcssa:        ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %._crit_edge.thread.i, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil.preheader

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit62.unr-lcssa, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader
  %.sroa.0.029.i.us14.epil.init = phi ptr [ %i.m, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.preheader ], [ %i.aq, %._crit_edge.thread.i.loopexit62.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil: ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil.preheader
  %.sroa.0.029.i.us14.epil = phi ptr [ %i.au, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil ], [ %.sroa.0.029.i.us14.epil.init, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil ], [ 0, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil.preheader ]
  store i8 %.sroa.0.0.copyload, ptr %.sroa.0.029.i.us14.epil, align 8, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14.epil, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us23.epil, align 8, !noalias !519
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us14.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter68
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil, !llvm.loop !525

._crit_edge.thread.i.loopexit64.unr-lcssa:        ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33
  %lcmp.mod.not = trunc i64 %i.r to i1
  br i1 %lcmp.mod.not, label %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.epil.preheader, label %._crit_edge.thread.i

_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit64.unr-lcssa, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader
  %.sroa.0.029.i.us31.epil.init = phi ptr [ %i.m, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.preheader ], [ %i.as, %._crit_edge.thread.i.loopexit64.unr-lcssa ] ; 6 uses
  %lcmp.mod67 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %.sroa.10.0..sroa.0.0.sroa_idx.i.us38.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31.epil.init, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa.0.0.sroa_idx.i.us38.epil, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i64 3, i1 false)
  store i8 4, ptr %.sroa.0.029.i.us31.epil.init, align 8, !noalias !519
  %.sroa.11.0..sroa.0.0.sroa_idx.i.us39.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31.epil.init, i64 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.11.0..sroa.0.0.sroa_idx.i.us39.epil, align 4, !noalias !519
  %.sroa.15.0..sroa.0.0.sroa_idx.i.us40.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31.epil.init, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.15.0..sroa.0.0.sroa_idx.i.us40.epil, align 8, !noalias !519
  %.sroa.19.0..sroa.0.0.sroa_idx.i.us43.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31.epil.init, i64 16
  store i64 %.sroa.19.1.insert.ext.i, ptr %.sroa.19.0..sroa.0.0.sroa_idx.i.us43.epil, align 8, !noalias !519
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i.us31.epil.init, i64 24
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.epil.preheader, %._crit_edge.thread.i.loopexit64.unr-lcssa, %._crit_edge.thread.i.loopexit62.unr-lcssa, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i
  %.sroa.0.0.lcssa37.i = phi ptr [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i ], [ %i.at, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil ], [ %i.au, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil ], [ %i.ai, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.aq, %._crit_edge.thread.i.loopexit62.unr-lcssa ], [ %i.as, %._crit_edge.thread.i.loopexit64.unr-lcssa ], [ %i.av, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.epil.preheader ] ; 6 uses
  %storemerge.lcssa36.i = phi i64 [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i ], [ %i.p, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.p, %._crit_edge.thread.i.loopexit62.unr-lcssa ], [ %i.p, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us.epil ], [ %i.p, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us16.epil ], [ %i.p, %._crit_edge.thread.i.loopexit64.unr-lcssa ], [ %i.p, %_RNvXsb_NtCsefoF4u9kbII_5wasmi5valueNtB5_3ValNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.us33.epil.preheader ]
  store i8 %.sroa.0.0.copyload, ptr %.sroa.0.0.lcssa37.i, align 8
  %.sroa.5.0..sroa.0.0.lcssa37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa37.i, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa.0.0.lcssa37.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i64 3, i1 false)
  %.sroa.6.0..sroa.0.0.lcssa37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa37.i, i64 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.0.0.lcssa37.i.sroa_idx, align 4
  %.sroa.7.0..sroa.0.0.lcssa37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa37.i, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa.0.0.lcssa37.i.sroa_idx, align 8
  %.sroa.9.0..sroa.0.0.lcssa37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa37.i, i64 16
  store i8 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa.0.0.lcssa37.i.sroa_idx, align 8
  %.sroa.10.0..sroa.0.0.lcssa37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa37.i, i64 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa.0.0.lcssa37.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, i64 7, i1 false)
  %i.aw = add i64 %storemerge.lcssa36.i, 1
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE8truncateCs5HiJSMzJl2A_10wasmi_wast.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi5value3ValE8truncateCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a, %._crit_edge.thread.i
  %storemerge = phi i64 [ %i.aw, %._crit_edge.thread.i ], [ %1, %bb.a ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefE16into_boxed_sliceCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !152, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEECs5HiJSMzJl2A_10wasmi_wast.exit unwind label %bb.g

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit._crit_edge, label %bb.e, !prof !526

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit._crit_edge: ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs5HiJSMzJl2A_10wasmi_wast.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #17
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5zeGauAcNNa_10wasmi_core5table3raw6RawRefEECs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !152, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !521

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEINtB2_12SpecFromIterBU_INtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterBU_Kj0_EE9from_iterCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.b = sub nuw i64 %2, %1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !527
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !527
  %i.c = load i64, ptr %i.a, align 8, !range !530, !noalias !527, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !531, !noalias !527, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %.noexc4.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEINtB4_18SpecFromIterNestedB13_INtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterB13_Kj0_EE9from_iterCs5HiJSMzJl2A_10wasmi_wast.exit, !prof !521

.noexc4.i:                                        ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !527
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #17, !noalias !527
  unreachable

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEINtB4_18SpecFromIterNestedB13_INtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterB13_Kj0_EE9from_iterCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !527, !nonnull !5, !noundef !5
  %i.j = icmp ule i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !527
  %.not5.i.i.i.i.i.i = icmp eq i64 %1, %2
  tail call void @llvm.assume(i1 %.not5.i.i.i.i.i.i)
  store i64 %i.f, ptr %0, align 8, !alias.scope !527
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !527
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !527
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEINtB2_12SpecFromIterBU_INtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterBU_Kj1_EE9from_iterCs5HiJSMzJl2A_10wasmi_wast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !535, !noalias !532, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load i64, ptr %i.b, align 8, !alias.scope !535, !noalias !532, !noundef !5 ; 4 uses
  %i.c = sub nuw i64 %.val3.i, %.val.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !537
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5HiJSMzJl2A_10wasmi_wast(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !537
  %i.d = load i64, ptr %i.a, align 8, !range !530, !noalias !537, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !531, !noalias !537, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %.noexc4.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, !prof !521

.noexc4.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !537
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #17, !noalias !537
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !537, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp ule i64 %i.c, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !537
  %i.l = icmp ule i64 %.val.i, %.val3.i
  tail call void @llvm.assume(i1 %i.l)
  %.not5.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val3.i
  br i1 %.not5.i.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEINtB4_18SpecFromIterNestedB13_INtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs5HiJSMzJl2A_10wasmi_wast.exit, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.58.0.copyload.i = load i8, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !535, !noalias !532
  %.not.i.i.i.i.i.i = icmp eq i64 %.val3.i, 1
  %i.m = icmp eq i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.m)
  store i8 %.sroa.58.0.copyload.i, ptr %i.j, align 1, !noalias !538
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  br label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEINtB4_18SpecFromIterNestedB13_INtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs5HiJSMzJl2A_10wasmi_wast.exit

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEINtB4_18SpecFromIterNestedB13_INtNtNtCskKLDkoKarTP_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs5HiJSMzJl2A_10wasmi_wast.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.val2.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i.i.i ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCs5HiJSMzJl2A_10wasmi_wast.exit.i.i.i ]
  store i64 %i.g, ptr %0, align 8, !alias.scope !532, !noalias !535
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !532, !noalias !535
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val2.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !532, !noalias !535
end_hunk_2
