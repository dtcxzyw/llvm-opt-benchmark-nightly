Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_perf.quinn_perf.ec62102bf437a985-cgu.03?download=true
inline.NumInlined: 827
inline.NumDeleted: 476
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [34 x i8] c"JoinHandle polled after completion", align 1
@1 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/runtime/task/core.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\A6\01\00\00\16\00\00\00" }>, align 8
@_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task5waker12WAKER_VTABLE = external global { ptr, ptr, ptr, ptr }

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj20_ECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19 {
bb.a:
    #dbg_value(ptr %0, !2623, !DIExpression(), !10922)
    #dbg_value(ptr %0, !2629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10903)
    #dbg_value(i64 32, !2629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10903)
  br label %bb.b, !dbg !10931

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.b
  %i.a = icmp eq i64 %i.c, 32, !dbg !10931
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit, label %bb.b, !dbg !10931

bb.b:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i
  %.sroa.0.0.i1 = phi i64 [ 0, %bb.a ], [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.0.i1, !dbg !10931 ; 4 uses
  %i.c = add nuw nsw i64 %.sroa.0.0.i1, 1, !dbg !10931 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10923), !dbg !10931
    #dbg_value(ptr %i.b, !2644, !DIExpression(), !10907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10924), !dbg !10932
    #dbg_value(ptr %i.b, !2651, !DIExpression(), !10911)
  %i.d = load ptr, ptr %i.b, align 8, !dbg !10933, !alias.scope !10925, !nonnull !2579, !align !2654, !noundef !2579
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !10933
  %i.f = load ptr, ptr %i.e, align 8, !dbg !10933, !noalias !10926, !nonnull !2579, !noundef !2579
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10934
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10935
  %i.i = load ptr, ptr %i.h, align 8, !dbg !10935, !alias.scope !10925, !noundef !2579
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10936
  %i.k = load i64, ptr %i.j, align 8, !dbg !10936, !alias.scope !10925, !noundef !2579
  invoke void %i.f(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.c, !dbg !10933, !inline_history !24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i: ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.sroa.0.1.i2, 1, !dbg !10931 ; 2 uses
  %i.m = icmp eq i64 %i.l, 32, !dbg !10931
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i._crit_edge, label %.lr.ph, !dbg !10931

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.c, 32, !dbg !10931
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i._crit_edge, label %.lr.ph, !dbg !10931

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i
  %.sroa.0.1.i2 = phi i64 [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.1.i2, !dbg !10931 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10927), !dbg !10931
    #dbg_value(ptr %i.p, !2644, !DIExpression(), !10917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10928), !dbg !10937
    #dbg_value(ptr %i.p, !2651, !DIExpression(), !10921)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !10938, !alias.scope !10929, !nonnull !2579, !align !2654, !noundef !2579
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !10938
  %i.s = load ptr, ptr %i.r, align 8, !dbg !10938, !noalias !10930, !nonnull !2579, !noundef !2579
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !10939
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !10940
  %i.v = load ptr, ptr %i.u, align 8, !dbg !10940, !alias.scope !10929, !noundef !2579
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !10941
  %i.x = load i64, ptr %i.w, align 8, !dbg !10941, !alias.scope !10929, !noundef !2579
  invoke void %i.s(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i unwind label %bb.d, !dbg !10938, !inline_history !24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit8.i, %bb.c
  resume { ptr, i32 } %i.n, !dbg !10931

bb.d:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !10931
  unreachable, !dbg !10931

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i
  ret void, !dbg !10942
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !56 {
bb.a:
    #dbg_value(ptr %0, !2769, !DIExpression(), !10985)
  %i.a = load i64, ptr %0, align 8, !dbg !10992, !range !2773, !noundef !2579
  %1 = trunc nuw i64 %i.a to i1, !dbg !10992
  br i1 %1, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECskigd7sy4fqX_10quinn_perf.exit, !dbg !10992

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.a
  ret void, !dbg !10992

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10992 ; 5 uses
    #dbg_value(ptr %i.b, !2775, !DIExpression(), !10944)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.c, !dbg !10993

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10986), !dbg !10993
    #dbg_value(ptr %i.b, !2780, !DIExpression(), !10948)
  %i.d = load ptr, ptr %i.b, align 8, !dbg !10994, !alias.scope !10987, !noundef !2579 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !10994
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.d, !dbg !10994

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.b, !2787, !DIExpression(), !10952)
    #dbg_value(ptr %i.b, !2792, !DIExpression(), !10954)
    #dbg_value(i64 1, !2796, !DIExpression(), !10956)
    #dbg_value(i8 1, !2802, !DIExpression(), !10956)
    #dbg_value(i64 1, !2804, !DIExpression(), !10958)
    #dbg_value(i8 1, !2809, !DIExpression(), !10958)
    #dbg_value(ptr %i.d, !2801, !DIExpression(), !10959)
    #dbg_value(ptr %i.d, !2808, !DIExpression(), !10958)
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !10995, !noalias !10988
  %i.g = icmp eq i64 %i.f, 1, !dbg !10996
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECskigd7sy4fqX_10quinn_perf.exit.i, !dbg !10996

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !2813, !DIExpression(), !10965)
  fence acquire, !dbg !10997
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.i, !dbg !10998

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10989), !dbg !10993
    #dbg_value(ptr %i.b, !2780, !DIExpression(), !10969)
  %i.h = load ptr, ptr %i.b, align 8, !dbg !10999, !alias.scope !10990, !noundef !2579 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !10999
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECskigd7sy4fqX_10quinn_perf.exit, label %bb.g, !dbg !10999

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.b, !2787, !DIExpression(), !10971)
    #dbg_value(ptr %i.b, !2792, !DIExpression(), !10973)
    #dbg_value(i64 1, !2796, !DIExpression(), !10975)
    #dbg_value(i8 1, !2802, !DIExpression(), !10975)
    #dbg_value(i64 1, !2804, !DIExpression(), !10977)
    #dbg_value(i8 1, !2809, !DIExpression(), !10977)
    #dbg_value(ptr %i.h, !2801, !DIExpression(), !10978)
    #dbg_value(ptr %i.h, !2808, !DIExpression(), !10977)
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !11000, !noalias !10991
  %i.k = icmp eq i64 %i.j, 1, !dbg !11001
  br i1 %i.k, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECskigd7sy4fqX_10quinn_perf.exit, !dbg !11001

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !2813, !DIExpression(), !10984)
  fence acquire, !dbg !11002
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #12, !dbg !11003
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECskigd7sy4fqX_10quinn_perf.exit, !dbg !11003

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !10993
  unreachable, !dbg !10993

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.c, !dbg !10993
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11004 {
bb.a:
    #dbg_value(ptr %0, !11116, !DIExpression(), !11120)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11190
  %i.b = load i32, ptr %i.a, align 8, !dbg !11190, !range !11121, !noundef !2579
  %i.c = icmp eq i32 %i.b, -1, !dbg !11190
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming5StateECskigd7sy4fqX_10quinn_perf.exit, label %bb.b, !dbg !11190

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming5StateECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.r, %bb.q, %bb.a
  ret void, !dbg !11190

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11122), !dbg !11190
    #dbg_value(ptr %0, !11124, !DIExpression(), !11009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11128), !dbg !11191
    #dbg_value(ptr %0, !11130, !DIExpression(), !11014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11134), !dbg !11192
    #dbg_value(ptr %0, !11136, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11142), !dbg !11193
    #dbg_value(ptr %0, !11144, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11024)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11150), !dbg !11194
    #dbg_value(ptr %i.d, !2644, !DIExpression(), !11028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11151), !dbg !11195
    #dbg_value(ptr %i.d, !2651, !DIExpression(), !11032)
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11196, !alias.scope !11152, !nonnull !2579, !align !2654, !noundef !2579
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !11196
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11196, !noalias !11152, !nonnull !2579, !noundef !2579
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11197
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11198
  %i.j = load ptr, ptr %i.i, align 8, !dbg !11198, !alias.scope !11152, !noundef !2579
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11199
  %i.l = load i64, ptr %i.k, align 8, !dbg !11199, !alias.scope !11152, !noundef !2579
  invoke void %i.g(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.c, !dbg !11196, !inline_history !11033

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !11193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11153), !dbg !11193
    #dbg_value(ptr %i.n, !2644, !DIExpression(), !11037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11154), !dbg !11200
    #dbg_value(ptr %i.n, !2651, !DIExpression(), !11041)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !11201, !alias.scope !11155, !nonnull !2579, !align !2654, !noundef !2579
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !11201
  %i.q = load ptr, ptr %i.p, align 8, !dbg !11201, !noalias !11156, !nonnull !2579, !noundef !2579
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !11202
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !11203
  %i.t = load ptr, ptr %i.s, align 8, !dbg !11203, !alias.scope !11155, !noundef !2579
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !11204
  %i.v = load i64, ptr %i.u, align 8, !dbg !11204, !alias.scope !11155, !noundef !2579
  invoke void %i.q(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i.i.i unwind label %bb.e, !dbg !11201, !inline_history !24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !11193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11157), !dbg !11193
    #dbg_value(ptr %i.w, !2644, !DIExpression(), !11045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11158), !dbg !11205
    #dbg_value(ptr %i.w, !2651, !DIExpression(), !11049)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !11206, !alias.scope !11159, !nonnull !2579, !align !2654, !noundef !2579
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !11206
  %i.z = load ptr, ptr %i.y, align 8, !dbg !11206, !noalias !11160, !nonnull !2579, !noundef !2579
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !11207
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !11208
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !11208, !alias.scope !11159, !noundef !2579
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !11209
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !11209, !alias.scope !11159, !noundef !2579
  invoke void %i.z(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit3.i.i.i unwind label %bb.d, !dbg !11206, !inline_history !24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %i.m, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !11193
    #dbg_value(ptr %i.af, !11162, !DIExpression(), !11052)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %.body.i.i unwind label %bb.e, !dbg !11210

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit3.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !11193
    #dbg_value(ptr %i.ah, !11162, !DIExpression(), !11054)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialPacketECskigd7sy4fqX_10quinn_perf.exit.i.i unwind label %bb.f, !dbg !11211

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i.i.i, %bb.c
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !11193
  unreachable, !dbg !11193

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit3.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !11192

.body.i.i:                                        ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !11192 ; 2 uses
    #dbg_value(ptr %i.ak, !11167, !DIExpression(), !11057)
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !11212, !alias.scope !11173, !noundef !2579
  %i.am = icmp eq ptr %i.al, null, !dbg !11212
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECskigd7sy4fqX_10quinn_perf.exit.i.i, label %bb.g, !dbg !11212

bb.g:                                             ; preds = %.body.i.i
    #dbg_value(ptr %i.ak, !11162, !DIExpression(), !11061)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECskigd7sy4fqX_10quinn_perf.exit.i.i unwind label %bb.m, !dbg !11213

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialPacketECskigd7sy4fqX_10quinn_perf.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECskigd7sy4fqX_10quinn_perf.exit3.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !11192 ; 2 uses
    #dbg_value(ptr %i.an, !11167, !DIExpression(), !11063)
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !11214, !alias.scope !11174, !noundef !2579
  %i.ap = icmp eq ptr %i.ao, null, !dbg !11214
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECskigd7sy4fqX_10quinn_perf.exit6.i.i, label %bb.h, !dbg !11214

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialPacketECskigd7sy4fqX_10quinn_perf.exit.i.i
    #dbg_value(ptr %i.an, !11162, !DIExpression(), !11067)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECskigd7sy4fqX_10quinn_perf.exit6.i.i unwind label %bb.i, !dbg !11215
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf:bb.a
  %i.e = icmp eq i64 %i.d, 1, !dbg !13828
  br i1 %i.e, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !13828

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !2813, !DIExpression(), !13800)
  fence acquire, !dbg !13829
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.h, !dbg !13830

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13823), !dbg !13825
    #dbg_value(ptr %0, !9183, !DIExpression(), !13804)
  %i.f = load ptr, ptr %0, align 8, !dbg !13831, !alias.scope !13823, !noundef !2579 ; 2 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !13831
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECskigd7sy4fqX_10quinn_perf.exit2, label %bb.f, !dbg !13831

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !9190, !DIExpression(), !13806)
    #dbg_value(ptr %0, !9194, !DIExpression(), !13808)
    #dbg_value(i64 1, !9196, !DIExpression(), !13810)
    #dbg_value(i8 1, !9198, !DIExpression(), !13810)
    #dbg_value(i64 1, !9200, !DIExpression(), !13812)
    #dbg_value(i8 1, !9202, !DIExpression(), !13812)
    #dbg_value(ptr %i.f, !9197, !DIExpression(), !13813)
    #dbg_value(ptr %i.f, !9201, !DIExpression(), !13812)
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !13832, !noalias !13824
  %i.i = icmp eq i64 %i.h, 1, !dbg !13833
  br i1 %i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !13833

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !2813, !DIExpression(), !13819)
  fence acquire, !dbg !13834
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #12, !dbg !13835
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !13835

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECskigd7sy4fqX_10quinn_perf.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void, !dbg !13825

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !13825
  unreachable, !dbg !13825

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.a, !dbg !13825
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13836 {
bb.a:
    #dbg_value(ptr %0, !14114, !DIExpression(), !14118)
  %i.a = load i32, ptr %0, align 8, !dbg !14229, !range !8851, !noundef !2579
  switch i32 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0ECskigd7sy4fqX_10quinn_perf.exit [
    i32 0, label %bb.b
    i32 1, label %bb.ag
  ], !dbg !14229

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0ECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECskigd7sy4fqX_10quinn_perf.exit.i, %bb.b, %bb.a
  ret void, !dbg !14229

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14229 ; 5 uses
    #dbg_value(ptr %i.b, !14119, !DIExpression(DW_OP_deref), !13846)
    #dbg_value(ptr poison, !14124, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !13846)
    #dbg_value(ptr poison, !14125, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13847)
    #dbg_value(ptr poison, !14126, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !13848)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !14230
  %i.d = load i8, ptr %i.c, align 8, !dbg !14230, !range !9290, !noundef !2579
  switch i8 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0ECskigd7sy4fqX_10quinn_perf.exit [
    i8 0, label %bb.c
    i8 3, label %bb.i
  ], !dbg !14230

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.b, !9292, !DIExpression(), !13850)
    #dbg_value(ptr %i.b, !9299, !DIExpression(), !13852)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.d, !dbg !14231

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14140), !dbg !14231
    #dbg_value(ptr %i.b, !9304, !DIExpression(), !13856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14141), !dbg !14232
    #dbg_value(ptr %i.b, !9310, !DIExpression(), !13860)
    #dbg_value(ptr %i.b, !9312, !DIExpression(), !13862)
    #dbg_value(i64 1, !9319, !DIExpression(), !13864)
    #dbg_value(i8 1, !9321, !DIExpression(), !13864)
    #dbg_value(i64 1, !9323, !DIExpression(), !13866)
    #dbg_value(i8 1, !9325, !DIExpression(), !13866)
  %i.f = load ptr, ptr %i.b, align 8, !dbg !14233, !alias.scope !14142, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.f, !9320, !DIExpression(), !13872)
    #dbg_value(ptr %i.f, !9324, !DIExpression(), !13866)
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !14234, !noalias !14143
  %i.h = icmp eq i64 %i.g, 1, !dbg !14235
  br i1 %i.h, label %bb.e, label %.body.i, !dbg !14235

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !2813, !DIExpression(), !13874)
  fence acquire, !dbg !14236
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #12
          to label %.body.i unwind label %bb.h, !dbg !14237

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14144), !dbg !14231
    #dbg_value(ptr %i.b, !9304, !DIExpression(), !13878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14145), !dbg !14238
    #dbg_value(ptr %i.b, !9310, !DIExpression(), !13882)
    #dbg_value(ptr %i.b, !9312, !DIExpression(), !13884)
    #dbg_value(i64 1, !9319, !DIExpression(), !13886)
    #dbg_value(i8 1, !9321, !DIExpression(), !13886)
    #dbg_value(i64 1, !9323, !DIExpression(), !13888)
    #dbg_value(i8 1, !9325, !DIExpression(), !13888)
  %i.i = load ptr, ptr %i.b, align 8, !dbg !14239, !alias.scope !14146, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.i, !9320, !DIExpression(), !13890)
    #dbg_value(ptr %i.i, !9324, !DIExpression(), !13888)
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !14240, !noalias !14147
  %i.k = icmp eq i64 %i.j, 1, !dbg !14241
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECskigd7sy4fqX_10quinn_perf.exit.i, !dbg !14241

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !2813, !DIExpression(), !13892)
  fence acquire, !dbg !14242
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.t, !dbg !14243

bb.h:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !14231
  unreachable, !dbg !14231

bb.i:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14244 ; 3 uses
    #dbg_value(ptr %i.m, !14149, !DIExpression(), !13895)
    #dbg_value(ptr %i.m, !14156, !DIExpression(), !13898)
    #dbg_value(ptr %i.m, !14163, !DIExpression(), !13901)
  invoke void @_RNvXs0_NvNtNtNtCsar2VadbF9t7_5tokio7runtime4time5entry1__NtB7_10TimerEntryNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.m)
          to label %bb.l unwind label %bb.j, !dbg !14245

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !14245 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14169), !dbg !14245
    #dbg_value(ptr %i.o, !14171, !DIExpression(), !13906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14177), !dbg !14246
    #dbg_value(ptr %i.o, !7678, !DIExpression(), !13910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14178), !dbg !14247
    #dbg_value(ptr %i.o, !7682, !DIExpression(), !13914)
    #dbg_value(ptr %i.o, !7684, !DIExpression(), !13916)
    #dbg_value(i64 1, !7691, !DIExpression(), !13918)
    #dbg_value(i8 1, !7693, !DIExpression(), !13918)
    #dbg_value(i64 1, !7695, !DIExpression(), !13920)
    #dbg_value(i8 1, !7697, !DIExpression(), !13920)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !14248, !alias.scope !14179, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.p, !7692, !DIExpression(), !13922)
    #dbg_value(ptr %i.p, !7696, !DIExpression(), !13920)
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !14249, !noalias !14179
  %i.r = icmp eq i64 %i.q, 1, !dbg !14250
  br i1 %i.r, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, !dbg !14250

bb.k:                                             ; preds = %bb.j
    #dbg_value(i8 2, !2813, !DIExpression(), !13924)
  fence acquire, !dbg !14251
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i unwind label %bb.s, !dbg !14252

bb.l:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !14245 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14180), !dbg !14245
    #dbg_value(ptr %i.s, !14171, !DIExpression(), !13928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14181), !dbg !14253
    #dbg_value(ptr %i.s, !7678, !DIExpression(), !13932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14182), !dbg !14254
    #dbg_value(ptr %i.s, !7682, !DIExpression(), !13936)
    #dbg_value(ptr %i.s, !7684, !DIExpression(), !13938)
    #dbg_value(i64 1, !7691, !DIExpression(), !13940)
    #dbg_value(i8 1, !7693, !DIExpression(), !13940)
    #dbg_value(i64 1, !7695, !DIExpression(), !13942)
    #dbg_value(i8 1, !7697, !DIExpression(), !13942)
  %i.t = load ptr, ptr %i.s, align 8, !dbg !14255, !alias.scope !14183, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.t, !7692, !DIExpression(), !13944)
    #dbg_value(ptr %i.t, !7696, !DIExpression(), !13942)
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !14256, !noalias !14183
  %i.v = icmp eq i64 %i.u, 1, !dbg !14257
  br i1 %i.v, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit4.i.i.i.i, !dbg !14257

bb.m:                                             ; preds = %bb.l
    #dbg_value(i8 2, !2813, !DIExpression(), !13946)
  fence acquire, !dbg !14258
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit4.i.i.i.i unwind label %bb.p, !dbg !14259

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i: ; preds = %bb.p, %bb.k, %bb.j
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.p ], [ %i.n, %bb.k ], [ %i.n, %bb.j ] ; 3 uses
    #dbg_value(ptr %i.m, !14185, !DIExpression(), !13949)
  %i.w = load i64, ptr %i.m, align 8, !dbg !14260, !range !2773, !noundef !2579
  %1 = trunc nuw i64 %i.w to i1, !dbg !14260
  br i1 %1, label %bb.n, label %.body6.i, !dbg !14260

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  %i.x = getelementptr i8, ptr %0, i64 80, !dbg !14260
  %.val.i.i.i.i.i = load ptr, ptr %i.x, align 8, !dbg !14260, !align !2654, !noundef !2579 ; 2 uses
    #dbg_value(ptr poison, !14192, !DIExpression(), !13952)
    #dbg_value(ptr poison, !14197, !DIExpression(), !13955)
    #dbg_value(ptr poison, !14204, !DIExpression(), !13958)
    #dbg_value(ptr poison, !7712, !DIExpression(), !13960)
    #dbg_value(ptr poison, !7719, !DIExpression(), !13962)
    #dbg_value(ptr poison, !7726, !DIExpression(), !13964)
  %i.y = icmp eq ptr %.val.i.i.i.i.i, null, !dbg !14261
  br i1 %i.y, label %.body6.i, label %bb.o, !dbg !14261

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr i8, ptr %0, i64 88, !dbg !14260
  %.val1.i.i.i.i.i = load ptr, ptr %i.z, align 8, !dbg !14260
    #dbg_value(ptr poison, !7731, !DIExpression(), !13966)
    #dbg_value(ptr poison, !7736, !DIExpression(), !13968)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24, !dbg !14262
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !14262, !nonnull !2579, !noundef !2579
  invoke void %i.ab(ptr noundef %.val1.i.i.i.i.i)
          to label %.body6.i unwind label %bb.s, !dbg !14262, !inline_history !13969

bb.p:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit4.i.i.i.i: ; preds = %bb.m, %bb.l
    #dbg_value(ptr %i.m, !14185, !DIExpression(), !13971)
  %i.ad = load i64, ptr %i.m, align 8, !dbg !14263, !range !2773, !noundef !2579
  %2 = trunc nuw i64 %i.ad to i1, !dbg !14263
  br i1 %2, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECskigd7sy4fqX_10quinn_perf.exit.i, !dbg !14263

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit4.i.i.i.i
  %i.ae = getelementptr i8, ptr %0, i64 80, !dbg !14263
  %.val.i6.i.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !14263, !align !2654, !noundef !2579 ; 2 uses
    #dbg_value(ptr poison, !14192, !DIExpression(), !13973)
    #dbg_value(ptr poison, !14197, !DIExpression(), !13975)
    #dbg_value(ptr poison, !14204, !DIExpression(), !13977)
    #dbg_value(ptr poison, !7712, !DIExpression(), !13979)
    #dbg_value(ptr poison, !7719, !DIExpression(), !13981)
    #dbg_value(ptr poison, !7726, !DIExpression(), !13983)
  %i.af = icmp eq ptr %.val.i6.i.i.i.i, null, !dbg !14264
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.r, !dbg !14264

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr i8, ptr %0, i64 88, !dbg !14263
  %.val1.i7.i.i.i.i = load ptr, ptr %i.ag, align 8, !dbg !14263
    #dbg_value(ptr poison, !7731, !DIExpression(), !13985)
    #dbg_value(ptr poison, !7736, !DIExpression(), !13987)
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i, i64 24, !dbg !14265
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !14265, !nonnull !2579, !noundef !2579
  invoke void %i.ai(ptr noundef %.val1.i7.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.x, !dbg !14265, !inline_history !13988

bb.s:                                             ; preds = %bb.o, %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !14245
  unreachable, !dbg !14245

bb.t:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !14230

.body.i:                                          ; preds = %bb.t, %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %i.e, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14230 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14208), !dbg !14230
    #dbg_value(ptr %i.al, !9332, !DIExpression(), !13992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14209), !dbg !14266
    #dbg_value(ptr %i.al, !9338, !DIExpression(), !13996)
    #dbg_value(ptr %i.al, !9340, !DIExpression(), !13998)
    #dbg_value(i64 1, !9347, !DIExpression(), !14000)
    #dbg_value(i8 1, !9349, !DIExpression(), !14000)
    #dbg_value(i64 1, !9351, !DIExpression(), !14002)
    #dbg_value(i8 1, !9353, !DIExpression(), !14002)
  %i.am = load ptr, ptr %i.al, align 8, !dbg !14267, !alias.scope !14210, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.am, !9348, !DIExpression(), !14004)
    #dbg_value(ptr %i.am, !9352, !DIExpression(), !14002)
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !dbg !14268, !noalias !14210
  %i.ao = icmp eq i64 %i.an, 1, !dbg !14269
  br i1 %i.ao, label %bb.u, label %common.resume.i, !dbg !14269

bb.u:                                             ; preds = %.body.i
    #dbg_value(i8 2, !2813, !DIExpression(), !14006)
  fence acquire, !dbg !14270
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #12
          to label %common.resume.i unwind label %bb.w, !dbg !14271

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14230 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14211), !dbg !14230
    #dbg_value(ptr %i.ap, !9332, !DIExpression(), !14010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14212), !dbg !14272
    #dbg_value(ptr %i.ap, !9338, !DIExpression(), !14014)
    #dbg_value(ptr %i.ap, !9340, !DIExpression(), !14016)
    #dbg_value(i64 1, !9347, !DIExpression(), !14018)
    #dbg_value(i8 1, !9349, !DIExpression(), !14018)
    #dbg_value(i64 1, !9351, !DIExpression(), !14020)
    #dbg_value(i8 1, !9353, !DIExpression(), !14020)
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !14273, !alias.scope !14213, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.aq, !9348, !DIExpression(), !14022)
    #dbg_value(ptr %i.aq, !9352, !DIExpression(), !14020)
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !dbg !14274, !noalias !14213
  %i.as = icmp eq i64 %i.ar, 1, !dbg !14275
  br i1 %i.as, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !14275

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECskigd7sy4fqX_10quinn_perf.exit.i
    #dbg_value(i8 2, !2813, !DIExpression(), !14024)
  fence acquire, !dbg !14276
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #12, !dbg !14277
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0ECskigd7sy4fqX_10quinn_perf.exit, !dbg !14277

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit11.i, %bb.y, %bb.u
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !14230
  unreachable, !dbg !14230

common.resume.i:                                  ; preds = %bb.ac, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit11.i, %bb.u, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit11.i ], [ %eh.lpad-body.i, %bb.u ], [ %i.bg, %bb.ac ], [ %i.bg, %bb.ab ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !14278

bb.x:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i, !dbg !14279

.body6.i:                                         ; preds = %bb.x, %bb.o, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.au, %bb.x ], [ %.pn.i.i.i.i, %bb.o ], [ %.pn.i.i.i.i, %bb.n ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14279 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14214), !dbg !14279
    #dbg_value(ptr %i.av, !9332, !DIExpression(), !14028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14215), !dbg !14280
    #dbg_value(ptr %i.av, !9338, !DIExpression(), !14032)
    #dbg_value(ptr %i.av, !9340, !DIExpression(), !14034)
    #dbg_value(i64 1, !9347, !DIExpression(), !14036)
    #dbg_value(i8 1, !9349, !DIExpression(), !14036)
    #dbg_value(i64 1, !9351, !DIExpression(), !14038)
    #dbg_value(i8 1, !9353, !DIExpression(), !14038)
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !14281, !alias.scope !14216, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.aw, !9348, !DIExpression(), !14040)
    #dbg_value(ptr %i.aw, !9352, !DIExpression(), !14038)
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !dbg !14282, !noalias !14216
  %i.ay = icmp eq i64 %i.ax, 1, !dbg !14283
  br i1 %i.ay, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit11.i, !dbg !14283

bb.y:                                             ; preds = %.body6.i
    #dbg_value(i8 2, !2813, !DIExpression(), !14042)
  fence acquire, !dbg !14284
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit11.i unwind label %bb.w, !dbg !14285

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECskigd7sy4fqX_10quinn_perf.exit.i: ; preds = %bb.r, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECskigd7sy4fqX_10quinn_perf.exit4.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14279 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14217), !dbg !14279
    #dbg_value(ptr %i.az, !9332, !DIExpression(), !14046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14218), !dbg !14286
    #dbg_value(ptr %i.az, !9338, !DIExpression(), !14050)
    #dbg_value(ptr %i.az, !9340, !DIExpression(), !14052)
    #dbg_value(i64 1, !9347, !DIExpression(), !14054)
    #dbg_value(i8 1, !9349, !DIExpression(), !14054)
    #dbg_value(i64 1, !9351, !DIExpression(), !14056)
    #dbg_value(i8 1, !9353, !DIExpression(), !14056)
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !14287, !alias.scope !14219, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.ba, !9348, !DIExpression(), !14058)
    #dbg_value(ptr %i.ba, !9352, !DIExpression(), !14056)
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !dbg !14288, !noalias !14219
  %i.bc = icmp eq i64 %i.bb, 1, !dbg !14289
  br i1 %i.bc, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit13.i, !dbg !14289

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECskigd7sy4fqX_10quinn_perf.exit.i
    #dbg_value(i8 2, !2813, !DIExpression(), !14060)
  fence acquire, !dbg !14290
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit13.i unwind label %bb.aa, !dbg !14291

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit11.i: ; preds = %bb.aa, %bb.y, %.body6.i
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %eh.lpad-body7.i, %bb.y ], [ %eh.lpad-body7.i, %.body6.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14292
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bd) #13
          to label %common.resume.i unwind label %bb.w, !dbg !14292

bb.aa:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit11.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit13.i: ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECskigd7sy4fqX_10quinn_perf.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14292 ; 5 uses
    #dbg_value(ptr %i.bf, !9292, !DIExpression(), !14062)
    #dbg_value(ptr %i.bf, !9299, !DIExpression(), !14064)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %bb.ad unwind label %bb.ab, !dbg !14293

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit13.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14220), !dbg !14293
    #dbg_value(ptr %i.bf, !9304, !DIExpression(), !14068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14221), !dbg !14294
    #dbg_value(ptr %i.bf, !9310, !DIExpression(), !14072)
    #dbg_value(ptr %i.bf, !9312, !DIExpression(), !14074)
    #dbg_value(i64 1, !9319, !DIExpression(), !14076)
    #dbg_value(i8 1, !9321, !DIExpression(), !14076)
    #dbg_value(i64 1, !9323, !DIExpression(), !14078)
    #dbg_value(i8 1, !9325, !DIExpression(), !14078)
  %i.bh = load ptr, ptr %i.bf, align 8, !dbg !14295, !alias.scope !14222, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.bh, !9320, !DIExpression(), !14084)
    #dbg_value(ptr %i.bh, !9324, !DIExpression(), !14078)
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !14296, !noalias !14223
  %i.bj = icmp eq i64 %i.bi, 1, !dbg !14297
  br i1 %i.bj, label %bb.ac, label %common.resume.i, !dbg !14297

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i8 2, !2813, !DIExpression(), !14086)
  fence acquire, !dbg !14298
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #12
          to label %common.resume.i unwind label %bb.af, !dbg !14299

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEECskigd7sy4fqX_10quinn_perf.exit13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14224), !dbg !14293
    #dbg_value(ptr %i.bf, !9304, !DIExpression(), !14090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14225), !dbg !14300
    #dbg_value(ptr %i.bf, !9310, !DIExpression(), !14094)
    #dbg_value(ptr %i.bf, !9312, !DIExpression(), !14096)
    #dbg_value(i64 1, !9319, !DIExpression(), !14098)
    #dbg_value(i8 1, !9321, !DIExpression(), !14098)
    #dbg_value(i64 1, !9323, !DIExpression(), !14100)
    #dbg_value(i8 1, !9325, !DIExpression(), !14100)
end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNtCs7OITKvp9Irj_4perf6server3run00ECskigd7sy4fqX_10quinn_perf:bb.a
    #dbg_value(ptr poison, !17543, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 384), !17073)
    #dbg_value(ptr poison, !17545, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 408), !17074)
    #dbg_value(ptr poison, !17546, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 392), !17075)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !17773
  %i.g = load i8, ptr %i.f, align 8, !dbg !17773, !range !9478, !noundef !2579
  switch i8 %i.g, label %common.ret [
    i8 0, label %bb.g
    i8 3, label %bb.k
    i8 4, label %bb.ap
  ], !dbg !17773

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.e, !17532, !DIExpression(), !17077)
  invoke void @_RNvXs_NtCsB8MOEg02Qk_5quinn8incomingNtB4_8IncomingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e)
          to label %bb.i unwind label %bb.h, !dbg !17774

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e) #13
          to label %.body.i unwind label %bb.j, !dbg !17774

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming8IncomingECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bp, !dbg !17774

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17774
  unreachable, !dbg !17774

bb.k:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !17775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17616), !dbg !17775
    #dbg_value(ptr %i.j, !17618, !DIExpression(), !17082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17624), !dbg !17776
    #dbg_value(ptr %i.j, !17626, !DIExpression(), !17087)
  %i.k = load i64, ptr %i.j, align 8, !dbg !17777, !range !17632, !alias.scope !17633, !noundef !2579 ; 4 uses
  %i.l = icmp eq i64 %i.k, -1, !dbg !17777
  br i1 %i.l, label %bb.l, label %bb.ak, !dbg !17777

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 816, !dbg !17777 ; 2 uses
    #dbg_value(ptr %i.m, !17635, !DIExpression(), !17090)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !17778 ; 6 uses
    #dbg_value(ptr %i.n, !17641, !DIExpression(), !17093)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !17779, !alias.scope !17647, !noundef !2579
  %i.p = icmp eq ptr %i.o, null, !dbg !17779
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, label %bb.m, !dbg !17779

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.n, !9299, !DIExpression(), !17099)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.p unwind label %bb.n, !dbg !17780

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17648), !dbg !17780
    #dbg_value(ptr %i.n, !9304, !DIExpression(), !17103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17649), !dbg !17781
    #dbg_value(ptr %i.n, !9310, !DIExpression(), !17107)
    #dbg_value(ptr %i.n, !9312, !DIExpression(), !17109)
    #dbg_value(i64 1, !9319, !DIExpression(), !17111)
    #dbg_value(i8 1, !9321, !DIExpression(), !17111)
    #dbg_value(i64 1, !9323, !DIExpression(), !17113)
    #dbg_value(i8 1, !9325, !DIExpression(), !17113)
  %i.r = load ptr, ptr %i.n, align 8, !dbg !17782, !alias.scope !17650, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.r, !9320, !DIExpression(), !17117)
    #dbg_value(ptr %i.r, !9324, !DIExpression(), !17113)
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !17783, !noalias !17651
  %i.t = icmp eq i64 %i.s, 1, !dbg !17784
  br i1 %i.t, label %bb.o, label %.body.i.i.i.i, !dbg !17784

bb.o:                                             ; preds = %bb.n
    #dbg_value(i8 2, !2813, !DIExpression(), !17119)
  fence acquire, !dbg !17785
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #12
          to label %.body.i.i.i.i unwind label %bb.r, !dbg !17786

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17652), !dbg !17780
    #dbg_value(ptr %i.n, !9304, !DIExpression(), !17123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17653), !dbg !17787
    #dbg_value(ptr %i.n, !9310, !DIExpression(), !17127)
    #dbg_value(ptr %i.n, !9312, !DIExpression(), !17129)
    #dbg_value(i64 1, !9319, !DIExpression(), !17131)
    #dbg_value(i8 1, !9321, !DIExpression(), !17131)
    #dbg_value(i64 1, !9323, !DIExpression(), !17133)
    #dbg_value(i8 1, !9325, !DIExpression(), !17133)
  %i.u = load ptr, ptr %i.n, align 8, !dbg !17788, !alias.scope !17654, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.u, !9320, !DIExpression(), !17135)
    #dbg_value(ptr %i.u, !9324, !DIExpression(), !17133)
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !17789, !noalias !17655
  %i.w = icmp eq i64 %i.v, 1, !dbg !17790
  br i1 %i.w, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, !dbg !17790

bb.q:                                             ; preds = %bb.p
    #dbg_value(i8 2, !2813, !DIExpression(), !17137)
  fence acquire, !dbg !17791
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i unwind label %bb.s, !dbg !17792

bb.r:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17780
  unreachable, !dbg !17780

bb.s:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !17778

.body.i.i.i.i:                                    ; preds = %bb.s, %bb.o, %bb.n
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.s ], [ %i.q, %bb.o ], [ %i.q, %bb.n ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !17778
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(8) %i.z) #13
          to label %.body4.i.i.i.i unwind label %bb.aj, !dbg !17778

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !17778 ; 5 uses
    #dbg_value(ptr %i.aa, !9178, !DIExpression(), !17139)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiverbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.w unwind label %bb.t, !dbg !17793

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17656), !dbg !17793
    #dbg_value(ptr %i.aa, !9183, !DIExpression(), !17143)
  %i.ac = load ptr, ptr %i.aa, align 8, !dbg !17794, !alias.scope !17657, !noundef !2579 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !17794
  br i1 %i.ad, label %.body4.i.i.i.i, label %bb.u, !dbg !17794

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.aa, !9190, !DIExpression(), !17147)
    #dbg_value(ptr %i.aa, !9194, !DIExpression(), !17149)
    #dbg_value(i64 1, !9196, !DIExpression(), !17151)
    #dbg_value(i8 1, !9198, !DIExpression(), !17151)
    #dbg_value(i64 1, !9200, !DIExpression(), !17153)
    #dbg_value(i8 1, !9202, !DIExpression(), !17153)
    #dbg_value(ptr %i.ac, !9197, !DIExpression(), !17154)
    #dbg_value(ptr %i.ac, !9201, !DIExpression(), !17153)
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !dbg !17795, !noalias !17658
  %i.af = icmp eq i64 %i.ae, 1, !dbg !17796
  br i1 %i.af, label %bb.v, label %.body4.i.i.i.i, !dbg !17796

bb.v:                                             ; preds = %bb.u
    #dbg_value(i8 2, !2813, !DIExpression(), !17160)
  fence acquire, !dbg !17797
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #12
          to label %.body4.i.i.i.i unwind label %bb.z, !dbg !17798

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17659), !dbg !17793
    #dbg_value(ptr %i.aa, !9183, !DIExpression(), !17164)
  %i.ag = load ptr, ptr %i.aa, align 8, !dbg !17799, !alias.scope !17660, !noundef !2579 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null, !dbg !17799
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, label %bb.x, !dbg !17799

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.aa, !9190, !DIExpression(), !17166)
    #dbg_value(ptr %i.aa, !9194, !DIExpression(), !17168)
    #dbg_value(i64 1, !9196, !DIExpression(), !17170)
    #dbg_value(i8 1, !9198, !DIExpression(), !17170)
    #dbg_value(i64 1, !9200, !DIExpression(), !17172)
    #dbg_value(i8 1, !9202, !DIExpression(), !17172)
    #dbg_value(ptr %i.ag, !9197, !DIExpression(), !17173)
    #dbg_value(ptr %i.ag, !9201, !DIExpression(), !17172)
  %i.ai = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !dbg !17800, !noalias !17661
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !17801
  br i1 %i.aj, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, !dbg !17801

bb.y:                                             ; preds = %bb.x
    #dbg_value(i8 2, !2813, !DIExpression(), !17179)
  fence acquire, !dbg !17802
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i unwind label %bb.aa, !dbg !17803

bb.z:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17793
  unreachable, !dbg !17793

.body4.i.i.i.i:                                   ; preds = %bb.aa, %bb.v, %bb.u, %bb.t, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.al, %bb.aa ], [ %i.ab, %bb.v ], [ %i.ab, %bb.u ], [ %i.ab, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #13
          to label %.body7.i unwind label %bb.aj, !dbg !17778

bb.aa:                                            ; preds = %bb.y
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
    #dbg_value(ptr %i.m, !2769, !DIExpression(), !17181)
  %i.am = load i64, ptr %i.m, align 8, !dbg !17804, !range !2773, !alias.scope !17662, !noundef !2579
  %1 = trunc nuw i64 %i.am to i1, !dbg !17804
  br i1 %1, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i, !dbg !17804

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 824, !dbg !17804 ; 5 uses
    #dbg_value(ptr %i.an, !2775, !DIExpression(), !17185)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.af unwind label %bb.ac, !dbg !17805

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17663), !dbg !17805
    #dbg_value(ptr %i.an, !2780, !DIExpression(), !17189)
  %i.ap = load ptr, ptr %i.an, align 8, !dbg !17806, !alias.scope !17664, !noundef !2579 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null, !dbg !17806
  br i1 %i.aq, label %.body7.i, label %bb.ad, !dbg !17806

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.an, !2787, !DIExpression(), !17193)
    #dbg_value(ptr %i.an, !2792, !DIExpression(), !17195)
    #dbg_value(i64 1, !2796, !DIExpression(), !17197)
    #dbg_value(i8 1, !2802, !DIExpression(), !17197)
    #dbg_value(i64 1, !2804, !DIExpression(), !17199)
    #dbg_value(i8 1, !2809, !DIExpression(), !17199)
    #dbg_value(ptr %i.ap, !2801, !DIExpression(), !17200)
    #dbg_value(ptr %i.ap, !2808, !DIExpression(), !17199)
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !dbg !17807, !noalias !17665
  %i.as = icmp eq i64 %i.ar, 1, !dbg !17808
  br i1 %i.as, label %bb.ae, label %.body7.i, !dbg !17808

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i8 2, !2813, !DIExpression(), !17206)
  fence acquire, !dbg !17809
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #12
          to label %.body7.i unwind label %bb.ai, !dbg !17810

bb.af:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17666), !dbg !17805
    #dbg_value(ptr %i.an, !2780, !DIExpression(), !17210)
  %i.at = load ptr, ptr %i.an, align 8, !dbg !17811, !alias.scope !17667, !noundef !2579 ; 2 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !17811
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.ag, !dbg !17811

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.an, !2787, !DIExpression(), !17212)
    #dbg_value(ptr %i.an, !2792, !DIExpression(), !17214)
    #dbg_value(i64 1, !2796, !DIExpression(), !17216)
    #dbg_value(i8 1, !2802, !DIExpression(), !17216)
    #dbg_value(i64 1, !2804, !DIExpression(), !17218)
    #dbg_value(i8 1, !2809, !DIExpression(), !17218)
    #dbg_value(ptr %i.at, !2801, !DIExpression(), !17219)
    #dbg_value(ptr %i.at, !2808, !DIExpression(), !17218)
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !17812, !noalias !17668
  %i.aw = icmp eq i64 %i.av, 1, !dbg !17813
  br i1 %i.aw, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i, !dbg !17813

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(i8 2, !2813, !DIExpression(), !17225)
  fence acquire, !dbg !17814
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bt, !dbg !17815

bb.ai:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17805
  unreachable, !dbg !17805

bb.aj:                                            ; preds = %.body4.i.i.i.i, %.body.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17778
  unreachable, !dbg !17778

bb.ak:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17669), !dbg !17777
    #dbg_value(ptr %i.j, !17671, !DIExpression(), !17230)
  %i.az = icmp ne i64 %i.k, 4, !dbg !17816
  tail call void @llvm.assume(i1 %i.az), !dbg !17816
  %i.ba = add nsw i64 %i.k, -2, !dbg !17816
  %.inv.i.i.i.i = icmp samesign ult i64 %i.k, 2, !dbg !17816
  %i.bb = select i1 %.inv.i.i.i.i, i64 2, i64 %i.ba, !dbg !17816
  switch i64 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i [
    i64 1, label %bb.al
    i64 2, label %.invoke.i
    i64 3, label %bb.ao
  ], !dbg !17816

bb.al:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.j, !17677, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !17233)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !17817 ; 3 uses
    #dbg_value(ptr %i.bc, !17684, !DIExpression(), !17236)
    #dbg_value(ptr %i.bc, !17689, !DIExpression(), !17239)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i unwind label %bb.am, !dbg !17818

bb.am:                                            ; preds = %bb.al
  %i.bd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.bc, !17694, !DIExpression(), !17242)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body7.i unwind label %bb.an, !dbg !17819

bb.an:                                            ; preds = %bb.am
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17818
  unreachable, !dbg !17818

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i: ; preds = %bb.al
    #dbg_value(ptr %i.bc, !17694, !DIExpression(), !17244)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bt, !dbg !17820

bb.ao:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.bf, !17701, !DIExpression(), !17247)
    #dbg_value(ptr %i.bf, !2644, !DIExpression(), !17249)
    #dbg_value(ptr %i.bf, !2651, !DIExpression(), !17251)
  br label %.invoke.i, !dbg !17821

.invoke.i:                                        ; preds = %bb.ak, %bb.ao
  %.sink = phi i64 [ 816, %bb.ao ], [ 824, %bb.ak ]
  %.sink.i = phi i64 [ 448, %bb.ao ], [ 456, %bb.ak ]
  %.sink28.i = phi i64 [ 432, %bb.ao ], [ 440, %bb.ak ]
  %.sink27.i = phi i64 [ 440, %bb.ao ], [ 448, %bb.ak ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink, !dbg !17816
  %.sink30.i = load ptr, ptr %i.bf, align 8, !dbg !17816, !alias.scope !17707, !nonnull !2579, !align !2654, !noundef !2579
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 32, !dbg !17816
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !17816, !noalias !17707, !nonnull !2579, !noundef !2579
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink.i, !dbg !17816
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink28.i, !dbg !17816
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !17816, !alias.scope !17707, !noundef !2579
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink27.i, !dbg !17816
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !17816, !alias.scope !17707, !noundef !2579
  invoke void %i.bh(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bk, i64 noundef %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bt, !dbg !17816, !inline_history !17252

bb.ap:                                            ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 800, !dbg !17822
    #dbg_value(ptr %i.bn, !17708, !DIExpression(), !17255)
    #dbg_value(ptr %i.bn, !17715, !DIExpression(), !17258)
  %i.bo = load i32, ptr %i.bn, align 8, !dbg !17823, !range !8851, !noundef !2579
  switch i32 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EECskigd7sy4fqX_10quinn_perf.exit.i.i [
    i32 0, label %bb.aq
    i32 1, label %bb.bi
  ], !dbg !17823

bb.aq:                                            ; preds = %bb.ap
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !17823 ; 5 uses
    #dbg_value(ptr %i.bp, !17721, !DIExpression(DW_OP_deref), !17266)
    #dbg_value(ptr poison, !17726, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !17267)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 896, !dbg !17824
  %i.br = load i8, ptr %i.bq, align 8, !dbg !17824, !range !9290, !noundef !2579
  switch i8 %i.br, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EECskigd7sy4fqX_10quinn_perf.exit.i.i [
    i8 0, label %bb.ar
    i8 3, label %bb.aw
  ], !dbg !17824

common.ret.sink.split.i.i.i.i:                    ; preds = %bb.bf, %bb.au
  %.sink.i.i.i.i = phi ptr [ %i.bp, %bb.au ], [ %i.cp, %bb.bf ]
  fence acquire, !dbg !17825
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sink.i.i.i.i) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EECskigd7sy4fqX_10quinn_perf.exit.i.i unwind label %bb.bk, !dbg !17826

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(ptr %i.bp, !9292, !DIExpression(), !17274)
    #dbg_value(ptr %i.bp, !9299, !DIExpression(), !17276)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.au unwind label %bb.as, !dbg !17827

bb.as:                                            ; preds = %bb.ar
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17734), !dbg !17827
    #dbg_value(ptr %i.bp, !9304, !DIExpression(), !17280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17735), !dbg !17828
    #dbg_value(ptr %i.bp, !9310, !DIExpression(), !17284)
    #dbg_value(ptr %i.bp, !9312, !DIExpression(), !17286)
    #dbg_value(i64 1, !9319, !DIExpression(), !17288)
    #dbg_value(i8 1, !9321, !DIExpression(), !17288)
    #dbg_value(i64 1, !9323, !DIExpression(), !17290)
    #dbg_value(i8 1, !9325, !DIExpression(), !17290)
  %i.bt = load ptr, ptr %i.bp, align 8, !dbg !17829, !alias.scope !17736, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.bt, !9320, !DIExpression(), !17296)
    #dbg_value(ptr %i.bt, !9324, !DIExpression(), !17290)
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !dbg !17830, !noalias !17737
  %i.bv = icmp eq i64 %i.bu, 1, !dbg !17831
  br i1 %i.bv, label %bb.at, label %.body.i.i, !dbg !17831

bb.at:                                            ; preds = %bb.as
    #dbg_value(i8 2, !2813, !DIExpression(), !17298)
  fence acquire, !dbg !17832
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #12
          to label %.body.i.i unwind label %bb.av, !dbg !17833

bb.au:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17738), !dbg !17827
    #dbg_value(ptr %i.bp, !9304, !DIExpression(), !17302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17739), !dbg !17834
    #dbg_value(ptr %i.bp, !9310, !DIExpression(), !17306)
    #dbg_value(ptr %i.bp, !9312, !DIExpression(), !17308)
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore20OwnedSemaphorePermitECskigd7sy4fqX_10quinn_perf:bb.a
  %i.e = load ptr, ptr %0, align 8, !dbg !19966, !alias.scope !19957, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.e, !9524, !DIExpression(), !19948)
    #dbg_value(ptr %i.e, !9528, !DIExpression(), !19946)
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !19967, !noalias !19957
  %i.g = icmp eq i64 %i.f, 1, !dbg !19968
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !19968

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !2813, !DIExpression(), !19950)
  fence acquire, !dbg !19969
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #12, !dbg !19970
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !19970

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2: ; preds = %bb.d, %bb.e
  ret void, !dbg !19958

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !19958
  unreachable, !dbg !19958

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a, !dbg !19958
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core7TrailerECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1457 {
bb.a:
    #dbg_value(ptr %0, !7705, !DIExpression(), !20027)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20036
  %.val = load ptr, ptr %i.a, align 8, !dbg !20036, !align !2654, !noundef !2579 ; 2 uses
    #dbg_value(ptr poison, !7712, !DIExpression(), !19972)
    #dbg_value(ptr poison, !7719, !DIExpression(), !19974)
    #dbg_value(ptr poison, !7726, !DIExpression(), !19976)
  %i.b = icmp eq ptr %.val, null, !dbg !20037
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.b, !dbg !20037

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24, !dbg !20036
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !20036
    #dbg_value(ptr poison, !7731, !DIExpression(), !19978)
    #dbg_value(ptr poison, !7736, !DIExpression(), !19980)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !20038
  %i.e = load ptr, ptr %i.d, align 8, !dbg !20038, !nonnull !2579, !noundef !2579
  invoke void %i.e(ptr noundef %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.c, !dbg !20038, !inline_history !1463

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20036 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20028), !dbg !20036
    #dbg_value(ptr %i.g, !7740, !DIExpression(), !19984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20029), !dbg !20039
    #dbg_value(ptr %i.g, !7747, !DIExpression(), !19988)
  %i.h = load ptr, ptr %i.g, align 8, !dbg !20040, !alias.scope !20030, !noundef !2579 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !20040
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit, label %bb.d, !dbg !20040

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !7754, !DIExpression(), !19990)
    #dbg_value(ptr %i.g, !7758, !DIExpression(), !19992)
    #dbg_value(i64 1, !7760, !DIExpression(), !19994)
    #dbg_value(i8 1, !7762, !DIExpression(), !19994)
    #dbg_value(i64 1, !7764, !DIExpression(), !19996)
    #dbg_value(i8 1, !7766, !DIExpression(), !19996)
    #dbg_value(ptr %i.h, !7761, !DIExpression(), !19997)
    #dbg_value(ptr %i.h, !7765, !DIExpression(), !19996)
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !20041, !noalias !20031
  %i.k = icmp eq i64 %i.j, 1, !dbg !20042
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit, !dbg !20042

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !2813, !DIExpression(), !20003)
  fence acquire, !dbg !20043
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.h, !dbg !20044

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20036 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20032), !dbg !20036
    #dbg_value(ptr %i.l, !7740, !DIExpression(), !20007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20033), !dbg !20045
    #dbg_value(ptr %i.l, !7747, !DIExpression(), !20011)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !20046, !alias.scope !20034, !noundef !2579 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !20046
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, label %bb.f, !dbg !20046

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %i.l, !7754, !DIExpression(), !20013)
    #dbg_value(ptr %i.l, !7758, !DIExpression(), !20015)
    #dbg_value(i64 1, !7760, !DIExpression(), !20017)
    #dbg_value(i8 1, !7762, !DIExpression(), !20017)
    #dbg_value(i64 1, !7764, !DIExpression(), !20019)
    #dbg_value(i8 1, !7766, !DIExpression(), !20019)
    #dbg_value(ptr %i.m, !7761, !DIExpression(), !20020)
    #dbg_value(ptr %i.m, !7765, !DIExpression(), !20019)
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !20047, !noalias !20035
  %i.p = icmp eq i64 %i.o, 1, !dbg !20048
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, !dbg !20048

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !2813, !DIExpression(), !20026)
  fence acquire, !dbg !20049
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #12, !dbg !20050
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, !dbg !20050

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit, %bb.f, %bb.g
  ret void, !dbg !20036

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !20036
  unreachable, !dbg !20036

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f, !dbg !20036
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2027 {
bb.a:
    #dbg_value(ptr %0, !9741, !DIExpression(), !20051)
    #dbg_value(ptr %0, !9743, !DIExpression(), !20053)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !20056
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !20057

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9746, !DIExpression(), !20055)
    #dbg_value(ptr undef, !9746, !DIExpression(DW_OP_deref), !20055)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20058
  br label %bb.c, !dbg !20059

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !20060
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20061 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !20136, !DIExpression(), !20140)
    #dbg_value(ptr %1, !20137, !DIExpression(), !20140)
    #dbg_value(ptr %2, !20138, !DIExpression(), !20140)
    #dbg_declare(ptr poison, !20141, !DIExpression(), !20152)
    #dbg_value(ptr poison, !20158, !DIExpression(), !20161)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !20188
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !20189
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !20189

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !20190
    #dbg_value(ptr %0, !20156, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !20162)
    #dbg_value(ptr %0, !20148, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20163)
    #dbg_value(ptr %0, !20165, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20172)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !20191 ; 2 uses
    #dbg_declare(ptr poison, !20173, !DIExpression(), !20070)
    #dbg_value(ptr %i.d, !20176, !DIExpression(), !20071)
    #dbg_value(ptr %i.d, !20179, !DIExpression(), !20074)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20192, !noalias !20184
    #dbg_value(i32 2, !20182, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !20074)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !20193, !noalias !20184
  store i32 2, ptr %i.d, align 8, !dbg !20194, !noalias !20184
  %i.e = load i32, ptr %i.a, align 8, !dbg !20192, !range !8851, !noalias !20184, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !20195
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !20195, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !20196, !noalias !20184

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !20140

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !20197, !noalias !20184

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !20198, !noalias !20184
  unreachable, !dbg !20198

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !20199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !20199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20197, !noalias !20184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20185), !dbg !20200
    #dbg_value(ptr %1, !9775, !DIExpression(), !20080)
  %i.j = load i64, ptr %1, align 8, !dbg !20201, !range !2773, !alias.scope !20185, !noundef !2579
  %3 = trunc nuw i64 %i.j to i1, !dbg !20201
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.g, !dbg !20201

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20201 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20186), !dbg !20201
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !20084)
  %i.l = load i64, ptr %i.k, align 8, !dbg !20202, !alias.scope !20187, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !20202
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !20202

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20202
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !20202, !alias.scope !20187, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !20202
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !20202, !alias.scope !20187 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !20086)
    #dbg_value(ptr poison, !8867, !DIExpression(), !20088)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !20203
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !20203

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !20090)
    #dbg_value(ptr poison, !8881, !DIExpression(), !20092)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !20204, !invariant.load !2579, !noalias !20187 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !20204
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !20204

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !20204, !noalias !20187

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !20094)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20095)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20095)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20097)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20099)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20101)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20103)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20097)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20099)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20101)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20103)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !20205
  %i.s = load i64, ptr %i.r, align 8, !dbg !20205, !range !4479, !invariant.load !2579, !noalias !20187 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20104)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20104)
  %i.t = icmp eq i64 %i.s, 0, !dbg !20206
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !20206

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !20205
  %i.v = load i64, ptr %i.u, align 8, !dbg !20207, !range !4480, !invariant.load !2579, !noalias !20187
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20104)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20097)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20099)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20101)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20103)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20095)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20106)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20108)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !20106)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !20108)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !20110)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !20112)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20106)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20108)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20110)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20112)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20106)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20108)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20110)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20112)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !20208, !noalias !20187
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20209

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !20114)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20115)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20115)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20117)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20119)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20121)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20123)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20117)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20119)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20121)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20123)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !20210
  %i.y = load i64, ptr %i.x, align 8, !dbg !20210, !range !4479, !invariant.load !2579, !noalias !20187 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20124)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20124)
  %i.z = icmp eq i64 %i.y, 0, !dbg !20211
  br i1 %i.z, label %.body, label %bb.n, !dbg !20211

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !20210
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !20212, !range !4480, !invariant.load !2579, !noalias !20187
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20124)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20117)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20119)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20121)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20123)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20115)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20126)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20128)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !20126)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !20128)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !20130)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !20132)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20126)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20128)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20130)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20132)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20126)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20128)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20130)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20132)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !20213, !noalias !20187
  br label %.body, !dbg !20214

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !20215

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8, !dbg !20200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !20200
  br label %common.resume, !dbg !20216

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !20200
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !20200
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !20217
  br label %bb.o, !dbg !20218
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20220 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !20313, !DIExpression(), !20232)
    #dbg_value(ptr poison, !20348, !DIExpression(), !20236)
    #dbg_value(ptr poison, !20336, !DIExpression(), !20237)
    #dbg_value(ptr poison, !20341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20354)
    #dbg_value(ptr poison, !20340, !DIExpression(), !20355)
    #dbg_value(ptr poison, !20346, !DIExpression(), !20356)
    #dbg_value(ptr poison, !20357, !DIExpression(), !20360)
    #dbg_value(ptr %0, !20309, !DIExpression(), !20361)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !20388 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !20388
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !20388
    #dbg_value(i1 %i.c, !20310, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !20362)
    #dbg_value(i1 %i.d, !20310, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !20362)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20389

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !20390

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !20346, !DIExpression(), !20356)
    #dbg_value(ptr undef, !20340, !DIExpression(), !20355)
    #dbg_value(ptr undef, !20341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20354)
    #dbg_value(ptr undef, !20313, !DIExpression(), !20232)
    #dbg_value(ptr undef, !20336, !DIExpression(), !20237)
    #dbg_value(ptr poison, !20363, !DIExpression(), !20241)
    #dbg_declare(ptr poison, !20367, !DIExpression(), !20242)
    #dbg_declare(ptr poison, !20366, !DIExpression(), !20242)
    #dbg_value(ptr poison, !20371, !DIExpression(), !20245)
    #dbg_declare(ptr poison, !20374, !DIExpression(), !20246)
    #dbg_value(ptr poison, !20378, !DIExpression(DW_OP_deref, DW_OP_deref), !20249)
    #dbg_value(ptr poison, !20383, !DIExpression(), !20252)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20391
    #dbg_value(ptr %i.e, !20385, !DIExpression(), !20255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20392, !noalias !20387
  store i32 2, ptr %i.a, align 8, !dbg !20392, !noalias !20387
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !20393

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !20394
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !20394
    #dbg_value(ptr undef, !20348, !DIExpression(), !20236)
    #dbg_value(ptr %i.g, !20351, !DIExpression(), !20236)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !20395 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !20396
  unreachable, !dbg !20396

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20397, !noalias !20387
    #dbg_value(ptr undef, !20341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20354)
    #dbg_value(ptr undef, !20341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20354)
    #dbg_value(ptr poison, !9821, !DIExpression(), !20259)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20398

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !20395 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !20395 ; 6 uses
    #dbg_value(ptr %i.j, !20341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20354)
    #dbg_value(ptr %i.k, !20341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20354)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !20259)
  %i.l = icmp eq ptr %i.j, null, !dbg !20398
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !20398

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !20261)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !20399, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !20399
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !20399

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !20399

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !20263)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20264)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20264)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20266)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20268)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20272)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20266)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20268)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20270)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20272)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !20400
  %i.o = load i64, ptr %i.n, align 8, !dbg !20400, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20273)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20273)
  %i.p = icmp eq i64 %i.o, 0, !dbg !20401
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !20401

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !20400
  %i.r = load i64, ptr %i.q, align 8, !dbg !20402, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20273)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20266)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20268)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20270)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20272)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20264)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20275)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20277)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !20275)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !20277)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !20279)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !20281)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20275)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20277)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20279)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20275)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20277)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20279)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20281)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !20403
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20404

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !20283)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20284)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20284)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20286)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20288)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20290)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20292)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20286)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20288)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20290)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20292)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !20405
  %i.u = load i64, ptr %i.t, align 8, !dbg !20405, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20293)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20293)
  %i.v = icmp eq i64 %i.u, 0, !dbg !20406
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !20406

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !20405
  %i.x = load i64, ptr %i.w, align 8, !dbg !20407, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20293)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20286)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20288)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20290)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20292)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20284)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20295)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20297)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !20295)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !20297)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !20299)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !20301)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20295)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20297)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20299)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20301)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20295)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20297)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20299)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20301)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !20408
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !20409

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !20399

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !9741, !DIExpression(), !20303)
    #dbg_value(ptr %0, !9743, !DIExpression(), !20305)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !20410
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20411

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !9746, !DIExpression(DW_OP_deref), !20307)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20412
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20413
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21212
    #dbg_value(i64 %..i, !21074, !DIExpression(), !21171)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !21213
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !21214

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !21172, !DIExpression(DW_OP_deref), !21175)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21215
  br label %bb.p, !dbg !21216

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !21217
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21218 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !21254, !DIExpression(), !21256)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !21261
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !21262

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9741, !DIExpression(), !21220)
    #dbg_value(ptr %0, !9743, !DIExpression(), !21222)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21263
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21264

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !9746, !DIExpression(DW_OP_deref), !21224)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21265
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21266

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !21257, !DIExpression(), !21260)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21267 ; 2 uses
    #dbg_value(ptr poison, !9905, !DIExpression(), !21230)
    #dbg_value(ptr %i.e, !9940, !DIExpression(), !21231)
    #dbg_value(ptr %i.e, !9943, !DIExpression(), !21233)
    #dbg_value(ptr %i.e, !9938, !DIExpression(), !21234)
    #dbg_value(ptr %i.e, !9934, !DIExpression(), !21235)
    #dbg_value(ptr %i.e, !9935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21236)
    #dbg_value(ptr undef, !9946, !DIExpression(), !21238)
    #dbg_value(ptr %i.e, !9949, !DIExpression(), !21239)
    #dbg_value(ptr %i.e, !9951, !DIExpression(), !21241)
    #dbg_declare(ptr poison, !9955, !DIExpression(), !21242)
    #dbg_declare(ptr poison, !9954, !DIExpression(), !21242)
    #dbg_value(ptr %i.e, !9959, !DIExpression(), !21244)
    #dbg_declare(ptr poison, !9962, !DIExpression(), !21245)
    #dbg_value(ptr poison, !9967, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21247)
    #dbg_value(ptr %i.e, !9972, !DIExpression(), !21249)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21268
  store i32 2, ptr %i.a, align 8, !dbg !21268
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !21269

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !21270
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !21270
    #dbg_value(ptr undef, !9905, !DIExpression(), !21230)
    #dbg_value(ptr %i.g, !9929, !DIExpression(), !21230)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !21271 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !21272
  unreachable, !dbg !21272

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21273
    #dbg_value(ptr %i.e, !9935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21236)
    #dbg_value(ptr undef, !9935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21236)
    #dbg_value(ptr poison, !9941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21250)
    #dbg_value(ptr poison, !9974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21252)
    #dbg_value(ptr poison, !9941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21250)
    #dbg_value(ptr poison, !9974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21252)
    #dbg_value(i64 poison, !9977, !DIExpression(), !21252)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21274

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !21271
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !21271 ; 2 uses
    #dbg_value(ptr %i.j, !9935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21236)
    #dbg_value(ptr %i.k, !9935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21236)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !9941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21250)
    #dbg_value(ptr %i.j, !9974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21252)
    #dbg_value(ptr %i.k, !9941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21250)
    #dbg_value(ptr %i.k, !9974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21252)
    #dbg_value(i64 poison, !9977, !DIExpression(), !21252)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21275

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !21276
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !21276
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21277
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !21277, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !9944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21233)
    #dbg_value(ptr %.sroa.6.0.i, !9944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21233)
    #dbg_value(ptr %.sroa.8.0.i, !9944, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21278
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21278
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !21278
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !21278
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !21278
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !21278
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !21278
  store i32 1, ptr %i.b, align 8, !dbg !21278
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !21279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21280
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !21281
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21281

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !21282
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2083 {
bb.a:
    #dbg_value(ptr %0, !10007, !DIExpression(), !21283)
    #dbg_value(ptr %0, !10009, !DIExpression(), !21285)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21288
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !21289

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10012, !DIExpression(), !21287)
    #dbg_value(ptr undef, !10012, !DIExpression(DW_OP_deref), !21287)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21290
  br label %bb.c, !dbg !21291

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !21292
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21293 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !21368, !DIExpression(), !21372)
    #dbg_value(ptr %1, !21369, !DIExpression(), !21372)
    #dbg_value(ptr %2, !21370, !DIExpression(), !21372)
    #dbg_declare(ptr poison, !21373, !DIExpression(), !21384)
    #dbg_value(ptr poison, !21390, !DIExpression(), !21393)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !21420
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !21421
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !21421

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !21422
    #dbg_value(ptr %0, !21388, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !21394)
    #dbg_value(ptr %0, !21380, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21395)
    #dbg_value(ptr %0, !21397, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21404)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !21423 ; 2 uses
    #dbg_declare(ptr poison, !21405, !DIExpression(), !21302)
    #dbg_value(ptr %i.d, !21408, !DIExpression(), !21303)
    #dbg_value(ptr %i.d, !21411, !DIExpression(), !21306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21424, !noalias !21416
    #dbg_value(i32 2, !21414, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21306)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !21425, !noalias !21416
  store i32 2, ptr %i.d, align 8, !dbg !21426, !noalias !21416
  %i.e = load i32, ptr %i.a, align 8, !dbg !21424, !range !8851, !noalias !21416, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !21427
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !21427, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !21428, !noalias !21416

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !21372

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !21429, !noalias !21416

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !21430, !noalias !21416
  unreachable, !dbg !21430

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !21431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21429, !noalias !21416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21417), !dbg !21432
    #dbg_value(ptr %1, !9775, !DIExpression(), !21312)
  %i.j = load i64, ptr %1, align 8, !dbg !21433, !range !2773, !alias.scope !21417, !noundef !2579
  %3 = trunc nuw i64 %i.j to i1, !dbg !21433
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.g, !dbg !21433

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21433 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21418), !dbg !21433
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !21316)
  %i.l = load i64, ptr %i.k, align 8, !dbg !21434, !alias.scope !21419, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !21434
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !21434

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21434
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !21434, !alias.scope !21419, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !21434
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !21434, !alias.scope !21419 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !21318)
    #dbg_value(ptr poison, !8867, !DIExpression(), !21320)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !21435
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !21435

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !21322)
    #dbg_value(ptr poison, !8881, !DIExpression(), !21324)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !21436, !invariant.load !2579, !noalias !21419 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !21436
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !21436

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !21436, !noalias !21419

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !21326)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21327)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21327)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21329)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21331)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21333)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21335)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21329)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21331)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21333)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21335)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !21437
  %i.s = load i64, ptr %i.r, align 8, !dbg !21437, !range !4479, !invariant.load !2579, !noalias !21419 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21336)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21336)
  %i.t = icmp eq i64 %i.s, 0, !dbg !21438
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !21438

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !21437
  %i.v = load i64, ptr %i.u, align 8, !dbg !21439, !range !4480, !invariant.load !2579, !noalias !21419
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21336)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21329)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21331)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21333)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21335)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21327)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21338)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21340)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !21338)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !21340)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !21342)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !21344)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21338)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21340)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21342)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21344)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21338)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21340)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21342)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21344)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !21440, !noalias !21419
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21441

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !21346)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21347)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21347)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21349)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21351)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21353)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21355)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21349)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21351)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21353)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21355)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !21442
  %i.y = load i64, ptr %i.x, align 8, !dbg !21442, !range !4479, !invariant.load !2579, !noalias !21419 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21356)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21356)
  %i.z = icmp eq i64 %i.y, 0, !dbg !21443
  br i1 %i.z, label %.body, label %bb.n, !dbg !21443

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !21442
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !21444, !range !4480, !invariant.load !2579, !noalias !21419
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21356)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21349)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21351)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21353)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21355)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21347)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21358)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21360)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !21358)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !21360)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !21362)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !21364)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21358)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21360)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21362)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21364)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21358)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21360)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21362)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21364)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !21445, !noalias !21419
  br label %.body, !dbg !21446

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !21447

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8, !dbg !21432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !21432
  br label %common.resume, !dbg !21448

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !21432
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !21432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !21449
  br label %bb.o, !dbg !21450
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21452 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !21545, !DIExpression(), !21464)
    #dbg_value(ptr poison, !21580, !DIExpression(), !21468)
    #dbg_value(ptr poison, !21568, !DIExpression(), !21469)
    #dbg_value(ptr poison, !21573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21586)
    #dbg_value(ptr poison, !21572, !DIExpression(), !21587)
    #dbg_value(ptr poison, !21578, !DIExpression(), !21588)
    #dbg_value(ptr poison, !21589, !DIExpression(), !21592)
    #dbg_value(ptr %0, !21541, !DIExpression(), !21593)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !21620 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !21620
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !21620
    #dbg_value(i1 %i.c, !21542, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !21594)
    #dbg_value(i1 %i.d, !21542, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !21594)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21621

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !21622

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !21578, !DIExpression(), !21588)
    #dbg_value(ptr undef, !21572, !DIExpression(), !21587)
    #dbg_value(ptr undef, !21573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21586)
    #dbg_value(ptr undef, !21545, !DIExpression(), !21464)
    #dbg_value(ptr undef, !21568, !DIExpression(), !21469)
    #dbg_value(ptr poison, !21595, !DIExpression(), !21473)
    #dbg_declare(ptr poison, !21599, !DIExpression(), !21474)
    #dbg_declare(ptr poison, !21598, !DIExpression(), !21474)
    #dbg_value(ptr poison, !21603, !DIExpression(), !21477)
    #dbg_declare(ptr poison, !21606, !DIExpression(), !21478)
    #dbg_value(ptr poison, !21610, !DIExpression(DW_OP_deref, DW_OP_deref), !21481)
    #dbg_value(ptr poison, !21615, !DIExpression(), !21484)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21623
    #dbg_value(ptr %i.e, !21617, !DIExpression(), !21487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21624, !noalias !21619
  store i32 2, ptr %i.a, align 8, !dbg !21624, !noalias !21619
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !21625

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !21626
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !21626
    #dbg_value(ptr undef, !21580, !DIExpression(), !21468)
    #dbg_value(ptr %i.g, !21583, !DIExpression(), !21468)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !21627 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !21628
  unreachable, !dbg !21628

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21629, !noalias !21619
    #dbg_value(ptr undef, !21573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21586)
    #dbg_value(ptr undef, !21573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21586)
    #dbg_value(ptr poison, !9821, !DIExpression(), !21491)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21630

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !21627 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !21627 ; 6 uses
    #dbg_value(ptr %i.j, !21573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21586)
    #dbg_value(ptr %i.k, !21573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21586)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !21491)
  %i.l = icmp eq ptr %i.j, null, !dbg !21630
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !21630

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !21493)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !21631, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !21631
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !21631

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !21631

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !21495)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21496)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21496)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21498)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21500)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21502)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21504)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21498)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21500)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21502)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21504)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !21632
  %i.o = load i64, ptr %i.n, align 8, !dbg !21632, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21505)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21505)
  %i.p = icmp eq i64 %i.o, 0, !dbg !21633
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !21633

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !21632
  %i.r = load i64, ptr %i.q, align 8, !dbg !21634, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21505)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21498)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21500)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21502)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21504)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21496)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21507)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21509)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !21507)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !21509)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !21511)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !21513)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21507)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21509)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21511)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21513)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21507)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21509)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21511)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21513)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !21635
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21636

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !21515)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21516)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21516)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21518)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21520)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21522)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21524)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21518)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21520)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21522)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21524)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !21637
  %i.u = load i64, ptr %i.t, align 8, !dbg !21637, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21525)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21525)
  %i.v = icmp eq i64 %i.u, 0, !dbg !21638
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !21638

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !21637
  %i.x = load i64, ptr %i.w, align 8, !dbg !21639, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21525)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21518)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21520)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21522)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21524)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21516)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21527)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21529)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !21527)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !21529)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !21531)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !21533)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21527)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21529)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21531)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21533)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21527)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21529)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21531)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21533)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !21640
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !21641

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !21631

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10007, !DIExpression(), !21535)
    #dbg_value(ptr %0, !10009, !DIExpression(), !21537)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21642
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21643

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10012, !DIExpression(DW_OP_deref), !21539)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21644
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21645
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22444
    #dbg_value(i64 %..i, !22306, !DIExpression(), !22403)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !22445
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !22446

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !22404, !DIExpression(DW_OP_deref), !22407)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22447
  br label %bb.p, !dbg !22448

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !22449
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22450 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !22486, !DIExpression(), !22488)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !22493
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !22494

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10007, !DIExpression(), !22452)
    #dbg_value(ptr %0, !10009, !DIExpression(), !22454)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22495
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22496

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10012, !DIExpression(DW_OP_deref), !22456)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22497
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22498

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !22489, !DIExpression(), !22492)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22499 ; 2 uses
    #dbg_value(ptr poison, !10031, !DIExpression(), !22462)
    #dbg_value(ptr %i.e, !10065, !DIExpression(), !22463)
    #dbg_value(ptr %i.e, !10068, !DIExpression(), !22465)
    #dbg_value(ptr %i.e, !10063, !DIExpression(), !22466)
    #dbg_value(ptr %i.e, !10059, !DIExpression(), !22467)
    #dbg_value(ptr %i.e, !10060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22468)
    #dbg_value(ptr undef, !10071, !DIExpression(), !22470)
    #dbg_value(ptr %i.e, !10074, !DIExpression(), !22471)
    #dbg_value(ptr %i.e, !10076, !DIExpression(), !22473)
    #dbg_declare(ptr poison, !10080, !DIExpression(), !22474)
    #dbg_declare(ptr poison, !10079, !DIExpression(), !22474)
    #dbg_value(ptr %i.e, !10084, !DIExpression(), !22476)
    #dbg_declare(ptr poison, !10087, !DIExpression(), !22477)
    #dbg_value(ptr poison, !10091, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22479)
    #dbg_value(ptr %i.e, !10096, !DIExpression(), !22481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22500
  store i32 2, ptr %i.a, align 8, !dbg !22500
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !22501

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !22502
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !22502
    #dbg_value(ptr undef, !10031, !DIExpression(), !22462)
    #dbg_value(ptr %i.g, !10054, !DIExpression(), !22462)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !22503 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !22504
  unreachable, !dbg !22504

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22505
    #dbg_value(ptr %i.e, !10060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22468)
    #dbg_value(ptr undef, !10060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22468)
    #dbg_value(ptr poison, !10066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22482)
    #dbg_value(ptr poison, !10098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22484)
    #dbg_value(ptr poison, !10066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22482)
    #dbg_value(ptr poison, !10098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22484)
    #dbg_value(i64 poison, !10099, !DIExpression(), !22484)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22506

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !22503
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !22503 ; 2 uses
    #dbg_value(ptr %i.j, !10060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22468)
    #dbg_value(ptr %i.k, !10060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22468)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22482)
    #dbg_value(ptr %i.j, !10098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22484)
    #dbg_value(ptr %i.k, !10066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22482)
    #dbg_value(ptr %i.k, !10098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22484)
    #dbg_value(i64 poison, !10099, !DIExpression(), !22484)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22507

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !22508
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !22508
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22509
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !22509, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22465)
    #dbg_value(ptr %.sroa.6.0.i, !10069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22465)
    #dbg_value(ptr %.sroa.8.0.i, !10069, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22510
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22510
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !22510
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22510
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !22510
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !22510
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !22510
  store i32 1, ptr %i.b, align 8, !dbg !22510
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !22511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22512
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !22513
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22513

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !22514
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2108 {
bb.a:
    #dbg_value(ptr %0, !10107, !DIExpression(), !22515)
    #dbg_value(ptr %0, !10109, !DIExpression(), !22517)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22520
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !22521

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10112, !DIExpression(), !22519)
    #dbg_value(ptr undef, !10112, !DIExpression(DW_OP_deref), !22519)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22522
  br label %bb.c, !dbg !22523

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !22524
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22525 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !22600, !DIExpression(), !22604)
    #dbg_value(ptr %1, !22601, !DIExpression(), !22604)
    #dbg_value(ptr %2, !22602, !DIExpression(), !22604)
    #dbg_declare(ptr poison, !22605, !DIExpression(), !22616)
    #dbg_value(ptr poison, !22622, !DIExpression(), !22625)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !22652
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !22653
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !22653

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !22654
    #dbg_value(ptr %0, !22620, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !22626)
    #dbg_value(ptr %0, !22612, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !22627)
    #dbg_value(ptr %0, !22629, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !22636)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22655 ; 2 uses
    #dbg_declare(ptr poison, !22637, !DIExpression(), !22534)
    #dbg_value(ptr %i.d, !22640, !DIExpression(), !22535)
    #dbg_value(ptr %i.d, !22643, !DIExpression(), !22538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22656, !noalias !22648
    #dbg_value(i32 2, !22646, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22538)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !22657, !noalias !22648
  store i32 2, ptr %i.d, align 8, !dbg !22658, !noalias !22648
  %i.e = load i32, ptr %i.a, align 8, !dbg !22656, !range !8851, !noalias !22648, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !22659
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !22659, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !22660, !noalias !22648

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !22604

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !22661, !noalias !22648

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !22662, !noalias !22648
  unreachable, !dbg !22662

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !22663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22661, !noalias !22648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22649), !dbg !22664
    #dbg_value(ptr %1, !9775, !DIExpression(), !22544)
  %i.j = load i64, ptr %1, align 8, !dbg !22665, !range !2773, !alias.scope !22649, !noundef !2579
  %3 = trunc nuw i64 %i.j to i1, !dbg !22665
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.g, !dbg !22665

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22665 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22650), !dbg !22665
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !22548)
  %i.l = load i64, ptr %i.k, align 8, !dbg !22666, !alias.scope !22651, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !22666
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !22666

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22666
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !22666, !alias.scope !22651, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !22666
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !22666, !alias.scope !22651 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !22550)
    #dbg_value(ptr poison, !8867, !DIExpression(), !22552)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !22667
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !22667

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !22554)
    #dbg_value(ptr poison, !8881, !DIExpression(), !22556)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !22668, !invariant.load !2579, !noalias !22651 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !22668
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !22668

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !22668, !noalias !22651

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !22558)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22559)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22559)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22561)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22563)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22565)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22567)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22561)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22563)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22565)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22567)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22669
  %i.s = load i64, ptr %i.r, align 8, !dbg !22669, !range !4479, !invariant.load !2579, !noalias !22651 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22568)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22568)
  %i.t = icmp eq i64 %i.s, 0, !dbg !22670
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !22670

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22669
  %i.v = load i64, ptr %i.u, align 8, !dbg !22671, !range !4480, !invariant.load !2579, !noalias !22651
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22568)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22561)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22563)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22565)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22567)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22559)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22570)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22572)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !22570)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !22572)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !22574)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !22576)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22570)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22572)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22574)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22576)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22570)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22572)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22574)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22576)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !22672, !noalias !22651
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22673

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !22578)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22579)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22579)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22581)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22583)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22585)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22587)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22581)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22583)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22585)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22587)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22674
  %i.y = load i64, ptr %i.x, align 8, !dbg !22674, !range !4479, !invariant.load !2579, !noalias !22651 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22588)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22588)
  %i.z = icmp eq i64 %i.y, 0, !dbg !22675
  br i1 %i.z, label %.body, label %bb.n, !dbg !22675

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22674
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !22676, !range !4480, !invariant.load !2579, !noalias !22651
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22588)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22581)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22583)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22585)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22587)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22579)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22590)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22592)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !22590)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !22592)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !22594)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !22596)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22590)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22592)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22594)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22596)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22590)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22592)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22594)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22596)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !22677, !noalias !22651
  br label %.body, !dbg !22678

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !22679

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8, !dbg !22664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !22664
  br label %common.resume, !dbg !22680

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !22664
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !22664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !22681
  br label %bb.o, !dbg !22682
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22684 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !22777, !DIExpression(), !22696)
    #dbg_value(ptr poison, !22812, !DIExpression(), !22700)
    #dbg_value(ptr poison, !22800, !DIExpression(), !22701)
    #dbg_value(ptr poison, !22805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22818)
    #dbg_value(ptr poison, !22804, !DIExpression(), !22819)
    #dbg_value(ptr poison, !22810, !DIExpression(), !22820)
    #dbg_value(ptr poison, !22821, !DIExpression(), !22824)
    #dbg_value(ptr %0, !22773, !DIExpression(), !22825)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !22852 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !22852
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !22852
    #dbg_value(i1 %i.c, !22774, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !22826)
    #dbg_value(i1 %i.d, !22774, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !22826)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22853

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !22854

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !22810, !DIExpression(), !22820)
    #dbg_value(ptr undef, !22804, !DIExpression(), !22819)
    #dbg_value(ptr undef, !22805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22818)
    #dbg_value(ptr undef, !22777, !DIExpression(), !22696)
    #dbg_value(ptr undef, !22800, !DIExpression(), !22701)
    #dbg_value(ptr poison, !22827, !DIExpression(), !22705)
    #dbg_declare(ptr poison, !22831, !DIExpression(), !22706)
    #dbg_declare(ptr poison, !22830, !DIExpression(), !22706)
    #dbg_value(ptr poison, !22835, !DIExpression(), !22709)
    #dbg_declare(ptr poison, !22838, !DIExpression(), !22710)
    #dbg_value(ptr poison, !22842, !DIExpression(DW_OP_deref, DW_OP_deref), !22713)
    #dbg_value(ptr poison, !22847, !DIExpression(), !22716)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22855
    #dbg_value(ptr %i.e, !22849, !DIExpression(), !22719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22856, !noalias !22851
  store i32 2, ptr %i.a, align 8, !dbg !22856, !noalias !22851
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !22857

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !22858
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !22858
    #dbg_value(ptr undef, !22812, !DIExpression(), !22700)
    #dbg_value(ptr %i.g, !22815, !DIExpression(), !22700)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !22859 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !22860
  unreachable, !dbg !22860

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22861, !noalias !22851
    #dbg_value(ptr undef, !22805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22818)
    #dbg_value(ptr undef, !22805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22818)
    #dbg_value(ptr poison, !9821, !DIExpression(), !22723)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22862

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !22859 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !22859 ; 6 uses
    #dbg_value(ptr %i.j, !22805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22818)
    #dbg_value(ptr %i.k, !22805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22818)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !22723)
  %i.l = icmp eq ptr %i.j, null, !dbg !22862
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !22862

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !22725)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !22863, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !22863
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !22863

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !22863

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !22727)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22728)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22728)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22730)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22732)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22734)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22736)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22730)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22732)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22734)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22736)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !22864
  %i.o = load i64, ptr %i.n, align 8, !dbg !22864, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22737)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22737)
  %i.p = icmp eq i64 %i.o, 0, !dbg !22865
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !22865

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !22864
  %i.r = load i64, ptr %i.q, align 8, !dbg !22866, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22737)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22730)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22732)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22734)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22736)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22728)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22739)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22741)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !22739)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !22741)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !22743)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !22745)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22739)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22741)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22743)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22745)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22739)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22741)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22743)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22745)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !22867
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22868

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !22747)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22748)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22748)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22750)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22752)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22754)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22756)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22750)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22752)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22754)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22756)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !22869
  %i.u = load i64, ptr %i.t, align 8, !dbg !22869, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22757)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22757)
  %i.v = icmp eq i64 %i.u, 0, !dbg !22870
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !22870

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !22869
  %i.x = load i64, ptr %i.w, align 8, !dbg !22871, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22757)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22750)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22752)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22754)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22756)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22748)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22759)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22761)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !22759)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !22761)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !22763)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !22765)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22759)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22761)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22763)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22765)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22759)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22761)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22763)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22765)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !22872
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !22873

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !22863

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10107, !DIExpression(), !22767)
    #dbg_value(ptr %0, !10109, !DIExpression(), !22769)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22874
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22875

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10112, !DIExpression(DW_OP_deref), !22771)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22876
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22877
end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23676
    #dbg_value(i64 %..i, !23538, !DIExpression(), !23635)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !23677
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !23678

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !23636, !DIExpression(DW_OP_deref), !23639)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !23679
  br label %bb.p, !dbg !23680

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !23681
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23682 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !23718, !DIExpression(), !23720)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !23725
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !23726

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10107, !DIExpression(), !23684)
    #dbg_value(ptr %0, !10109, !DIExpression(), !23686)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !23727
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23728

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10112, !DIExpression(DW_OP_deref), !23688)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !23729
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23730

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !23721, !DIExpression(), !23724)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23731 ; 2 uses
    #dbg_value(ptr poison, !10131, !DIExpression(), !23694)
    #dbg_value(ptr %i.e, !10165, !DIExpression(), !23695)
    #dbg_value(ptr %i.e, !10168, !DIExpression(), !23697)
    #dbg_value(ptr %i.e, !10163, !DIExpression(), !23698)
    #dbg_value(ptr %i.e, !10159, !DIExpression(), !23699)
    #dbg_value(ptr %i.e, !10160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23700)
    #dbg_value(ptr undef, !10171, !DIExpression(), !23702)
    #dbg_value(ptr %i.e, !10174, !DIExpression(), !23703)
    #dbg_value(ptr %i.e, !10176, !DIExpression(), !23705)
    #dbg_declare(ptr poison, !10180, !DIExpression(), !23706)
    #dbg_declare(ptr poison, !10179, !DIExpression(), !23706)
    #dbg_value(ptr %i.e, !10184, !DIExpression(), !23708)
    #dbg_declare(ptr poison, !10187, !DIExpression(), !23709)
    #dbg_value(ptr poison, !10191, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23711)
    #dbg_value(ptr %i.e, !10196, !DIExpression(), !23713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23732
  store i32 2, ptr %i.a, align 8, !dbg !23732
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !23733

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !23734
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !23734
    #dbg_value(ptr undef, !10131, !DIExpression(), !23694)
    #dbg_value(ptr %i.g, !10154, !DIExpression(), !23694)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !23735 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !23736
  unreachable, !dbg !23736

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23737
    #dbg_value(ptr %i.e, !10160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23700)
    #dbg_value(ptr undef, !10160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23700)
    #dbg_value(ptr poison, !10166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23714)
    #dbg_value(ptr poison, !10198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
    #dbg_value(ptr poison, !10166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23714)
    #dbg_value(ptr poison, !10198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23716)
    #dbg_value(i64 poison, !10199, !DIExpression(), !23716)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23738

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !23735
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !23735 ; 2 uses
    #dbg_value(ptr %i.j, !10160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23700)
    #dbg_value(ptr %i.k, !10160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23700)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23714)
    #dbg_value(ptr %i.j, !10198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
    #dbg_value(ptr %i.k, !10166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23714)
    #dbg_value(ptr %i.k, !10198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23716)
    #dbg_value(i64 poison, !10199, !DIExpression(), !23716)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23739

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !23740
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !23740
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23741
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !23741, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23697)
    #dbg_value(ptr %.sroa.6.0.i, !10169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23697)
    #dbg_value(ptr %.sroa.8.0.i, !10169, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23742
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !23742
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !23742
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23742
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !23742
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !23742
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !23742
  store i32 1, ptr %i.b, align 8, !dbg !23742
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !23743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23744
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !23745
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23745

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !23746
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2133 {
bb.a:
    #dbg_value(ptr %0, !10207, !DIExpression(), !23747)
    #dbg_value(ptr %0, !10209, !DIExpression(), !23749)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !23752
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !23753

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10212, !DIExpression(), !23751)
    #dbg_value(ptr undef, !10212, !DIExpression(DW_OP_deref), !23751)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !23754
  br label %bb.c, !dbg !23755

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !23756
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23757 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !23832, !DIExpression(), !23836)
    #dbg_value(ptr %1, !23833, !DIExpression(), !23836)
    #dbg_value(ptr %2, !23834, !DIExpression(), !23836)
    #dbg_declare(ptr poison, !23837, !DIExpression(), !23848)
    #dbg_value(ptr poison, !23854, !DIExpression(), !23857)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !23884
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !23885
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !23885

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !23886
    #dbg_value(ptr %0, !23852, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23858)
    #dbg_value(ptr %0, !23844, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !23859)
    #dbg_value(ptr %0, !23861, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !23868)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !23887 ; 2 uses
    #dbg_declare(ptr poison, !23869, !DIExpression(), !23766)
    #dbg_value(ptr %i.d, !23872, !DIExpression(), !23767)
    #dbg_value(ptr %i.d, !23875, !DIExpression(), !23770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23888, !noalias !23880
    #dbg_value(i32 2, !23878, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23770)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !23889, !noalias !23880
  store i32 2, ptr %i.d, align 8, !dbg !23890, !noalias !23880
  %i.e = load i32, ptr %i.a, align 8, !dbg !23888, !range !8851, !noalias !23880, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !23891
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !23891, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !23892, !noalias !23880

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !23836

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !23893, !noalias !23880

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !23894, !noalias !23880
  unreachable, !dbg !23894

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !23895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !23895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23893, !noalias !23880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23881), !dbg !23896
    #dbg_value(ptr %1, !9775, !DIExpression(), !23776)
  %i.j = load i64, ptr %1, align 8, !dbg !23897, !range !2773, !alias.scope !23881, !noundef !2579
  %3 = trunc nuw i64 %i.j to i1, !dbg !23897
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.g, !dbg !23897

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23897 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23882), !dbg !23897
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !23780)
  %i.l = load i64, ptr %i.k, align 8, !dbg !23898, !alias.scope !23883, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !23898
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !23898

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23898
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !23898, !alias.scope !23883, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23898
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !23898, !alias.scope !23883 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !23782)
    #dbg_value(ptr poison, !8867, !DIExpression(), !23784)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !23899
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !23899

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !23786)
    #dbg_value(ptr poison, !8881, !DIExpression(), !23788)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !23900, !invariant.load !2579, !noalias !23883 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !23900
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !23900

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !23900, !noalias !23883

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !23790)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23791)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23791)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23793)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23795)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23797)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23799)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23793)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23795)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23797)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23799)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !23901
  %i.s = load i64, ptr %i.r, align 8, !dbg !23901, !range !4479, !invariant.load !2579, !noalias !23883 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23800)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23800)
  %i.t = icmp eq i64 %i.s, 0, !dbg !23902
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !23902

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !23901
  %i.v = load i64, ptr %i.u, align 8, !dbg !23903, !range !4480, !invariant.load !2579, !noalias !23883
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23800)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23793)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23795)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23797)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23799)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23791)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23802)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23804)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !23802)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !23804)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !23806)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !23808)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23802)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23804)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23806)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23808)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23802)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23804)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23806)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23808)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !23904, !noalias !23883
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23905

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !23810)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23811)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23811)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23813)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23815)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23819)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23813)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23815)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23817)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23819)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !23906
  %i.y = load i64, ptr %i.x, align 8, !dbg !23906, !range !4479, !invariant.load !2579, !noalias !23883 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23820)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23820)
  %i.z = icmp eq i64 %i.y, 0, !dbg !23907
  br i1 %i.z, label %.body, label %bb.n, !dbg !23907

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !23906
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !23908, !range !4480, !invariant.load !2579, !noalias !23883
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23820)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23813)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23815)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23819)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23811)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23822)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23824)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !23822)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !23824)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !23826)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !23828)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23822)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23824)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23826)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23828)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23822)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23824)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23826)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23828)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !23909, !noalias !23883
  br label %.body, !dbg !23910

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !23911

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8, !dbg !23896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !23896
  br label %common.resume, !dbg !23912

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !23896
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !23896
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !23913
  br label %bb.o, !dbg !23914
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23916 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !24009, !DIExpression(), !23928)
    #dbg_value(ptr poison, !24044, !DIExpression(), !23932)
    #dbg_value(ptr poison, !24032, !DIExpression(), !23933)
    #dbg_value(ptr poison, !24037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24050)
    #dbg_value(ptr poison, !24036, !DIExpression(), !24051)
    #dbg_value(ptr poison, !24042, !DIExpression(), !24052)
    #dbg_value(ptr poison, !24053, !DIExpression(), !24056)
    #dbg_value(ptr %0, !24005, !DIExpression(), !24057)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !24084 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !24084
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !24084
    #dbg_value(i1 %i.c, !24006, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !24058)
    #dbg_value(i1 %i.d, !24006, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !24058)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24085

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !24086

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !24042, !DIExpression(), !24052)
    #dbg_value(ptr undef, !24036, !DIExpression(), !24051)
    #dbg_value(ptr undef, !24037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24050)
    #dbg_value(ptr undef, !24009, !DIExpression(), !23928)
    #dbg_value(ptr undef, !24032, !DIExpression(), !23933)
    #dbg_value(ptr poison, !24059, !DIExpression(), !23937)
    #dbg_declare(ptr poison, !24063, !DIExpression(), !23938)
    #dbg_declare(ptr poison, !24062, !DIExpression(), !23938)
    #dbg_value(ptr poison, !24067, !DIExpression(), !23941)
    #dbg_declare(ptr poison, !24070, !DIExpression(), !23942)
    #dbg_value(ptr poison, !24074, !DIExpression(DW_OP_deref, DW_OP_deref), !23945)
    #dbg_value(ptr poison, !24079, !DIExpression(), !23948)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24087
    #dbg_value(ptr %i.e, !24081, !DIExpression(), !23951)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24088, !noalias !24083
  store i32 2, ptr %i.a, align 8, !dbg !24088, !noalias !24083
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !24089

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !24090
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !24090
    #dbg_value(ptr undef, !24044, !DIExpression(), !23932)
    #dbg_value(ptr %i.g, !24047, !DIExpression(), !23932)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !24091 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !24092
  unreachable, !dbg !24092

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24093, !noalias !24083
    #dbg_value(ptr undef, !24037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24050)
    #dbg_value(ptr undef, !24037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24050)
    #dbg_value(ptr poison, !9821, !DIExpression(), !23955)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24094

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !24091 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !24091 ; 6 uses
    #dbg_value(ptr %i.j, !24037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24050)
    #dbg_value(ptr %i.k, !24037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24050)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !23955)
  %i.l = icmp eq ptr %i.j, null, !dbg !24094
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !24094

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !23957)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !24095, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !24095
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !24095

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !24095

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !23959)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23960)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23960)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23962)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23964)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23966)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23968)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23962)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23964)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23966)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23968)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !24096
  %i.o = load i64, ptr %i.n, align 8, !dbg !24096, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23969)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23969)
  %i.p = icmp eq i64 %i.o, 0, !dbg !24097
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !24097

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !24096
  %i.r = load i64, ptr %i.q, align 8, !dbg !24098, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23969)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23962)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23964)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23966)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23968)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23960)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23971)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23973)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !23971)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !23973)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !23975)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !23977)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23971)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23973)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23975)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23977)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23971)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23973)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23975)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23977)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !24099
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24100

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !23979)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23980)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23980)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23982)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23984)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23986)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23988)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23982)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23984)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23986)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23988)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !24101
  %i.u = load i64, ptr %i.t, align 8, !dbg !24101, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23989)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23989)
  %i.v = icmp eq i64 %i.u, 0, !dbg !24102
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !24102

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !24101
  %i.x = load i64, ptr %i.w, align 8, !dbg !24103, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23989)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23982)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23984)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23986)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23988)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23980)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23991)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23993)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !23991)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !23993)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !23995)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !23997)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23991)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23993)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23995)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23997)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23991)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23993)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23995)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23997)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !24104
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !24105

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !24095

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10207, !DIExpression(), !23999)
    #dbg_value(ptr %0, !10209, !DIExpression(), !24001)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24106
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24107

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10212, !DIExpression(DW_OP_deref), !24003)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24108
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24109
end_hunk_6
begin_hunk_7_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24908
    #dbg_value(i64 %..i, !24770, !DIExpression(), !24867)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !24909
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !24910

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !24868, !DIExpression(DW_OP_deref), !24871)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24911
  br label %bb.p, !dbg !24912

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !24913
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24914 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !24950, !DIExpression(), !24952)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !24957
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !24958

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10207, !DIExpression(), !24916)
    #dbg_value(ptr %0, !10209, !DIExpression(), !24918)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24959
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24960

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10212, !DIExpression(DW_OP_deref), !24920)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24961
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24962

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !24953, !DIExpression(), !24956)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24963 ; 2 uses
    #dbg_value(ptr poison, !10231, !DIExpression(), !24926)
    #dbg_value(ptr %i.e, !10265, !DIExpression(), !24927)
    #dbg_value(ptr %i.e, !10268, !DIExpression(), !24929)
    #dbg_value(ptr %i.e, !10263, !DIExpression(), !24930)
    #dbg_value(ptr %i.e, !10259, !DIExpression(), !24931)
    #dbg_value(ptr %i.e, !10260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24932)
    #dbg_value(ptr undef, !10271, !DIExpression(), !24934)
    #dbg_value(ptr %i.e, !10274, !DIExpression(), !24935)
    #dbg_value(ptr %i.e, !10276, !DIExpression(), !24937)
    #dbg_declare(ptr poison, !10280, !DIExpression(), !24938)
    #dbg_declare(ptr poison, !10279, !DIExpression(), !24938)
    #dbg_value(ptr %i.e, !10284, !DIExpression(), !24940)
    #dbg_declare(ptr poison, !10287, !DIExpression(), !24941)
    #dbg_value(ptr poison, !10291, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24943)
    #dbg_value(ptr %i.e, !10296, !DIExpression(), !24945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24964
  store i32 2, ptr %i.a, align 8, !dbg !24964
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !24965

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !24966
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !24966
    #dbg_value(ptr undef, !10231, !DIExpression(), !24926)
    #dbg_value(ptr %i.g, !10254, !DIExpression(), !24926)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !24967 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !24968
  unreachable, !dbg !24968

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24969
    #dbg_value(ptr %i.e, !10260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24932)
    #dbg_value(ptr undef, !10260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24932)
    #dbg_value(ptr poison, !10266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24946)
    #dbg_value(ptr poison, !10298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24948)
    #dbg_value(ptr poison, !10266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24946)
    #dbg_value(ptr poison, !10298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24948)
    #dbg_value(i64 poison, !10299, !DIExpression(), !24948)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24970

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !24967
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !24967 ; 2 uses
    #dbg_value(ptr %i.j, !10260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24932)
    #dbg_value(ptr %i.k, !10260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24932)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24946)
    #dbg_value(ptr %i.j, !10298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24948)
    #dbg_value(ptr %i.k, !10266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24946)
    #dbg_value(ptr %i.k, !10298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24948)
    #dbg_value(i64 poison, !10299, !DIExpression(), !24948)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24971

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !24972
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !24972
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !24973
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !24973, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24929)
    #dbg_value(ptr %.sroa.6.0.i, !10269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24929)
    #dbg_value(ptr %.sroa.8.0.i, !10269, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24974
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24974
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !24974
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24974
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !24974
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24974
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !24974
  store i32 1, ptr %i.b, align 8, !dbg !24974
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !24975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24976
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !24977
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24977

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !24978
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2158 {
bb.a:
    #dbg_value(ptr %0, !10307, !DIExpression(), !24979)
    #dbg_value(ptr %0, !10309, !DIExpression(), !24981)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24984
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !24985

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10312, !DIExpression(), !24983)
    #dbg_value(ptr undef, !10312, !DIExpression(DW_OP_deref), !24983)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24986
  br label %bb.c, !dbg !24987

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !24988
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24989 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !25064, !DIExpression(), !25068)
    #dbg_value(ptr %1, !25065, !DIExpression(), !25068)
    #dbg_value(ptr %2, !25066, !DIExpression(), !25068)
    #dbg_declare(ptr poison, !25069, !DIExpression(), !25080)
    #dbg_value(ptr poison, !25086, !DIExpression(), !25089)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !25116
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !25117
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !25117

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !25118
    #dbg_value(ptr %0, !25084, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25090)
    #dbg_value(ptr %0, !25076, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !25091)
    #dbg_value(ptr %0, !25093, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !25100)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25119 ; 2 uses
    #dbg_declare(ptr poison, !25101, !DIExpression(), !24998)
    #dbg_value(ptr %i.d, !25104, !DIExpression(), !24999)
    #dbg_value(ptr %i.d, !25107, !DIExpression(), !25002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25120, !noalias !25112
    #dbg_value(i32 2, !25110, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25002)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !25121, !noalias !25112
  store i32 2, ptr %i.d, align 8, !dbg !25122, !noalias !25112
  %i.e = load i32, ptr %i.a, align 8, !dbg !25120, !range !8851, !noalias !25112, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !25123
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !25123, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !25124, !noalias !25112

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !25068

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !25125, !noalias !25112

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !25126, !noalias !25112
  unreachable, !dbg !25126

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !25127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !25127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25125, !noalias !25112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25113), !dbg !25128
    #dbg_value(ptr %1, !9775, !DIExpression(), !25008)
  %i.j = load i64, ptr %1, align 8, !dbg !25129, !range !2773, !alias.scope !25113, !noundef !2579
  %3 = trunc nuw i64 %i.j to i1, !dbg !25129
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.g, !dbg !25129

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25129 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25114), !dbg !25129
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !25012)
  %i.l = load i64, ptr %i.k, align 8, !dbg !25130, !alias.scope !25115, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !25130
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !25130

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25130
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !25130, !alias.scope !25115, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25130
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !25130, !alias.scope !25115 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !25014)
    #dbg_value(ptr poison, !8867, !DIExpression(), !25016)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !25131
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !25131

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !25018)
    #dbg_value(ptr poison, !8881, !DIExpression(), !25020)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !25132, !invariant.load !2579, !noalias !25115 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !25132
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !25132

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !25132, !noalias !25115

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !25022)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25023)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25023)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25025)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25027)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25029)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25031)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25025)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25027)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25029)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25031)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !25133
  %i.s = load i64, ptr %i.r, align 8, !dbg !25133, !range !4479, !invariant.load !2579, !noalias !25115 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25032)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25032)
  %i.t = icmp eq i64 %i.s, 0, !dbg !25134
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !25134

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !25133
  %i.v = load i64, ptr %i.u, align 8, !dbg !25135, !range !4480, !invariant.load !2579, !noalias !25115
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25032)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25025)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25027)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25029)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25031)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25023)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25034)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25036)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !25034)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !25036)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !25038)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !25040)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25034)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25036)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25038)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25040)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25034)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25036)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25038)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25040)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !25136, !noalias !25115
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25137

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !25042)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25043)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25043)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25045)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25047)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25049)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25051)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25045)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25047)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25049)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25051)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !25138
  %i.y = load i64, ptr %i.x, align 8, !dbg !25138, !range !4479, !invariant.load !2579, !noalias !25115 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25052)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25052)
  %i.z = icmp eq i64 %i.y, 0, !dbg !25139
  br i1 %i.z, label %.body, label %bb.n, !dbg !25139

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !25138
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !25140, !range !4480, !invariant.load !2579, !noalias !25115
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25052)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25045)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25047)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25049)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25051)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25043)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25054)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25056)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !25054)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !25056)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !25058)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !25060)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25054)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25056)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25058)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25060)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25054)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25056)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25058)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25060)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !25141, !noalias !25115
  br label %.body, !dbg !25142

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !25143

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8, !dbg !25128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !25128
  br label %common.resume, !dbg !25144

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !25128
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !25128
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !25145
  br label %bb.o, !dbg !25146
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !25148 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !25241, !DIExpression(), !25160)
    #dbg_value(ptr poison, !25276, !DIExpression(), !25164)
    #dbg_value(ptr poison, !25264, !DIExpression(), !25165)
    #dbg_value(ptr poison, !25269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25282)
    #dbg_value(ptr poison, !25268, !DIExpression(), !25283)
    #dbg_value(ptr poison, !25274, !DIExpression(), !25284)
    #dbg_value(ptr poison, !25285, !DIExpression(), !25288)
    #dbg_value(ptr %0, !25237, !DIExpression(), !25289)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !25316 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !25316
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !25316
    #dbg_value(i1 %i.c, !25238, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !25290)
    #dbg_value(i1 %i.d, !25238, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !25290)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25317

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !25318

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !25274, !DIExpression(), !25284)
    #dbg_value(ptr undef, !25268, !DIExpression(), !25283)
    #dbg_value(ptr undef, !25269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25282)
    #dbg_value(ptr undef, !25241, !DIExpression(), !25160)
    #dbg_value(ptr undef, !25264, !DIExpression(), !25165)
    #dbg_value(ptr poison, !25291, !DIExpression(), !25169)
    #dbg_declare(ptr poison, !25295, !DIExpression(), !25170)
    #dbg_declare(ptr poison, !25294, !DIExpression(), !25170)
    #dbg_value(ptr poison, !25299, !DIExpression(), !25173)
    #dbg_declare(ptr poison, !25302, !DIExpression(), !25174)
    #dbg_value(ptr poison, !25306, !DIExpression(DW_OP_deref, DW_OP_deref), !25177)
    #dbg_value(ptr poison, !25311, !DIExpression(), !25180)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25319
    #dbg_value(ptr %i.e, !25313, !DIExpression(), !25183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25320, !noalias !25315
  store i32 2, ptr %i.a, align 8, !dbg !25320, !noalias !25315
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !25321

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !25322
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !25322
    #dbg_value(ptr undef, !25276, !DIExpression(), !25164)
    #dbg_value(ptr %i.g, !25279, !DIExpression(), !25164)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !25323 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !25324
  unreachable, !dbg !25324

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25325, !noalias !25315
    #dbg_value(ptr undef, !25269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25282)
    #dbg_value(ptr undef, !25269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25282)
    #dbg_value(ptr poison, !9821, !DIExpression(), !25187)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25326

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !25323 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !25323 ; 6 uses
    #dbg_value(ptr %i.j, !25269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25282)
    #dbg_value(ptr %i.k, !25269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25282)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !25187)
  %i.l = icmp eq ptr %i.j, null, !dbg !25326
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !25326

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !25189)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !25327, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !25327
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !25327

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !25327

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !25191)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25192)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25192)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25194)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25196)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25198)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25200)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25194)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25196)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25198)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25200)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !25328
  %i.o = load i64, ptr %i.n, align 8, !dbg !25328, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25201)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25201)
  %i.p = icmp eq i64 %i.o, 0, !dbg !25329
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !25329

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !25328
  %i.r = load i64, ptr %i.q, align 8, !dbg !25330, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25201)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25194)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25196)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25198)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25200)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25192)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25203)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25205)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !25203)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !25205)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !25207)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !25209)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25203)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25205)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25207)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25209)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25203)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25205)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25207)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25209)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !25331
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25332

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !25211)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25212)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25212)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25214)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25216)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25218)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25220)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25214)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25216)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25218)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25220)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !25333
  %i.u = load i64, ptr %i.t, align 8, !dbg !25333, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25221)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25221)
  %i.v = icmp eq i64 %i.u, 0, !dbg !25334
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !25334

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !25333
  %i.x = load i64, ptr %i.w, align 8, !dbg !25335, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25221)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25214)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25216)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25218)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25220)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25212)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25223)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25225)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !25223)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !25225)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !25227)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !25229)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25223)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25225)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25227)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25229)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25223)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25225)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25227)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25229)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !25336
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !25337

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !25327

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10307, !DIExpression(), !25231)
    #dbg_value(ptr %0, !10309, !DIExpression(), !25233)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !25338
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25339

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10312, !DIExpression(DW_OP_deref), !25235)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !25340
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25341
end_hunk_7
begin_hunk_8_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !26100, !DIExpression(DW_OP_deref), !26103)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26143
  br label %bb.p, !dbg !26144

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !26145
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26146 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !26182, !DIExpression(), !26184)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !26189
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !26190

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10307, !DIExpression(), !26148)
    #dbg_value(ptr %0, !10309, !DIExpression(), !26150)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26191
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26192

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10312, !DIExpression(DW_OP_deref), !26152)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26193
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26194

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !26185, !DIExpression(), !26188)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26195 ; 2 uses
    #dbg_value(ptr poison, !10331, !DIExpression(), !26158)
    #dbg_value(ptr %i.e, !10365, !DIExpression(), !26159)
    #dbg_value(ptr %i.e, !10368, !DIExpression(), !26161)
    #dbg_value(ptr %i.e, !10363, !DIExpression(), !26162)
    #dbg_value(ptr %i.e, !10359, !DIExpression(), !26163)
    #dbg_value(ptr %i.e, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26164)
    #dbg_value(ptr undef, !10371, !DIExpression(), !26166)
    #dbg_value(ptr %i.e, !10374, !DIExpression(), !26167)
    #dbg_value(ptr %i.e, !10376, !DIExpression(), !26169)
    #dbg_declare(ptr poison, !10380, !DIExpression(), !26170)
    #dbg_declare(ptr poison, !10379, !DIExpression(), !26170)
    #dbg_value(ptr %i.e, !10384, !DIExpression(), !26172)
    #dbg_declare(ptr poison, !10387, !DIExpression(), !26173)
    #dbg_value(ptr poison, !10391, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr %i.e, !10396, !DIExpression(), !26177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26196
  store i32 2, ptr %i.a, align 8, !dbg !26196
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !26197

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !26198
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !26198
    #dbg_value(ptr undef, !10331, !DIExpression(), !26158)
    #dbg_value(ptr %i.g, !10354, !DIExpression(), !26158)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !26199 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !26200
  unreachable, !dbg !26200

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26201
    #dbg_value(ptr %i.e, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26164)
    #dbg_value(ptr undef, !10360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26164)
    #dbg_value(ptr poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26178)
    #dbg_value(ptr poison, !10398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26180)
    #dbg_value(ptr poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26178)
    #dbg_value(ptr poison, !10398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26180)
    #dbg_value(i64 poison, !10399, !DIExpression(), !26180)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26202

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !26199
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !26199 ; 2 uses
    #dbg_value(ptr %i.j, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26164)
    #dbg_value(ptr %i.k, !10360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26164)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26178)
    #dbg_value(ptr %i.j, !10398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26180)
    #dbg_value(ptr %i.k, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26178)
    #dbg_value(ptr %i.k, !10398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26180)
    #dbg_value(i64 poison, !10399, !DIExpression(), !26180)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26203

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !26204
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !26204
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26205
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !26205, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26161)
    #dbg_value(ptr %.sroa.6.0.i, !10369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26161)
    #dbg_value(ptr %.sroa.8.0.i, !10369, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26206
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26206
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !26206
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !26206
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !26206
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !26206
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !26206
  store i32 1, ptr %i.b, align 8, !dbg !26206
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !26207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26208
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !26209
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26209

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !26210
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2183 {
bb.a:
    #dbg_value(ptr %0, !10407, !DIExpression(), !26211)
    #dbg_value(ptr %0, !10409, !DIExpression(), !26213)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26216
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !26217

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10412, !DIExpression(), !26215)
    #dbg_value(ptr undef, !10412, !DIExpression(DW_OP_deref), !26215)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26218
  br label %bb.c, !dbg !26219

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !26220
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26221 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !26296, !DIExpression(), !26300)
    #dbg_value(ptr %1, !26297, !DIExpression(), !26300)
    #dbg_value(ptr %2, !26298, !DIExpression(), !26300)
    #dbg_declare(ptr poison, !26301, !DIExpression(), !26312)
    #dbg_value(ptr poison, !26318, !DIExpression(), !26321)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !26348
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !26349
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !26349

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !26350
    #dbg_value(ptr %0, !26316, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !26322)
    #dbg_value(ptr %0, !26308, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !26323)
    #dbg_value(ptr %0, !26325, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !26332)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26351 ; 2 uses
    #dbg_declare(ptr poison, !26333, !DIExpression(), !26230)
    #dbg_value(ptr %i.d, !26336, !DIExpression(), !26231)
    #dbg_value(ptr %i.d, !26339, !DIExpression(), !26234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26352, !noalias !26344
    #dbg_value(i32 2, !26342, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26234)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.a, ptr noundef nonnull align 8 dereferenceable(1448) %i.d, i64 1448, i1 false), !dbg !26353, !noalias !26344
  store i32 2, ptr %i.d, align 8, !dbg !26354, !noalias !26344
  %i.e = load i32, ptr %i.a, align 8, !dbg !26352, !range !8851, !noalias !26344, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !26355
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !26355, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !26356, !noalias !26344

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !26357, !range !8851, !noalias !26344, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !26357
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !26357

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !26300

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !26357, !noalias !26344

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !26358, !noalias !26344
  unreachable, !dbg !26358

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !26359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !26359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26357, !noalias !26344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26345), !dbg !26360
    #dbg_value(ptr %1, !9775, !DIExpression(), !26240)
  %i.l = load i64, ptr %1, align 8, !dbg !26361, !range !2773, !alias.scope !26345, !noundef !2579
  %3 = trunc nuw i64 %i.l to i1, !dbg !26361
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !26361

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26361 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26346), !dbg !26361
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !26244)
  %i.n = load i64, ptr %i.m, align 8, !dbg !26362, !alias.scope !26347, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !26362
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !26362

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26362
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !26362, !alias.scope !26347, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !26362
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !26362, !alias.scope !26347 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !26246)
    #dbg_value(ptr poison, !8867, !DIExpression(), !26248)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !26363
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !26363

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !26250)
    #dbg_value(ptr poison, !8881, !DIExpression(), !26252)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !26364, !invariant.load !2579, !noalias !26347 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !26364
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !26364

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !26364, !noalias !26347

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !26254)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26255)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26255)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26257)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26259)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26261)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26263)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26257)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26259)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26261)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26263)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !26365
  %i.u = load i64, ptr %i.t, align 8, !dbg !26365, !range !4479, !invariant.load !2579, !noalias !26347 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26264)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26264)
  %i.v = icmp eq i64 %i.u, 0, !dbg !26366
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !26366

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !26365
  %i.x = load i64, ptr %i.w, align 8, !dbg !26367, !range !4480, !invariant.load !2579, !noalias !26347
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26264)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26257)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26259)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26261)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26263)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26255)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26266)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26268)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !26266)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !26268)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !26270)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !26272)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26266)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26268)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26270)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26272)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26266)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26268)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26270)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26272)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !26368, !noalias !26347
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26369

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !26274)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26275)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26275)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26277)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26279)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26281)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26283)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26277)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26279)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26281)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26283)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !26370
  %i.aa = load i64, ptr %i.z, align 8, !dbg !26370, !range !4479, !invariant.load !2579, !noalias !26347 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26284)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26284)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !26371
  br i1 %i.ab, label %.body, label %bb.o, !dbg !26371

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !26370
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !26372, !range !4480, !invariant.load !2579, !noalias !26347
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26284)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26277)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26279)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26281)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26283)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26275)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26286)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26288)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !26286)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !26288)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !26290)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !26292)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26286)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26288)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26290)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26292)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26286)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26288)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26290)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26292)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !26373, !noalias !26347
  br label %.body, !dbg !26374

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !26375

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8, !dbg !26360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !26360
  br label %common.resume, !dbg !26376

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !26360
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !26360
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !26377
  br label %bb.p, !dbg !26378
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26380 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !26473, !DIExpression(), !26392)
    #dbg_value(ptr poison, !26508, !DIExpression(), !26396)
    #dbg_value(ptr poison, !26496, !DIExpression(), !26397)
    #dbg_value(ptr poison, !26501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26514)
    #dbg_value(ptr poison, !26500, !DIExpression(), !26515)
    #dbg_value(ptr poison, !26506, !DIExpression(), !26516)
    #dbg_value(ptr poison, !26517, !DIExpression(), !26520)
    #dbg_value(ptr %0, !26469, !DIExpression(), !26521)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !26548 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !26548
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !26548
    #dbg_value(i1 %i.c, !26470, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !26522)
    #dbg_value(i1 %i.d, !26470, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !26522)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26549

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !26550

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !26506, !DIExpression(), !26516)
    #dbg_value(ptr undef, !26500, !DIExpression(), !26515)
    #dbg_value(ptr undef, !26501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26514)
    #dbg_value(ptr undef, !26473, !DIExpression(), !26392)
    #dbg_value(ptr undef, !26496, !DIExpression(), !26397)
    #dbg_value(ptr poison, !26523, !DIExpression(), !26401)
    #dbg_declare(ptr poison, !26527, !DIExpression(), !26402)
    #dbg_declare(ptr poison, !26526, !DIExpression(), !26402)
    #dbg_value(ptr poison, !26531, !DIExpression(), !26405)
    #dbg_declare(ptr poison, !26534, !DIExpression(), !26406)
    #dbg_value(ptr poison, !26538, !DIExpression(DW_OP_deref, DW_OP_deref), !26409)
    #dbg_value(ptr poison, !26543, !DIExpression(), !26412)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26551
    #dbg_value(ptr %i.e, !26545, !DIExpression(), !26415)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26552, !noalias !26547
  store i32 2, ptr %i.a, align 8, !dbg !26552, !noalias !26547
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %.thread unwind label %bb.c, !dbg !26553

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !26554
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !26554
    #dbg_value(ptr undef, !26508, !DIExpression(), !26396)
    #dbg_value(ptr %i.g, !26511, !DIExpression(), !26396)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !26555 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !26556
  unreachable, !dbg !26556

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26557, !noalias !26547
    #dbg_value(ptr undef, !26501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26514)
    #dbg_value(ptr undef, !26501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26514)
    #dbg_value(ptr poison, !9821, !DIExpression(), !26419)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26558

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !26555 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !26555 ; 6 uses
    #dbg_value(ptr %i.j, !26501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26514)
    #dbg_value(ptr %i.k, !26501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26514)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !26419)
  %i.l = icmp eq ptr %i.j, null, !dbg !26558
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !26558

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !26421)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !26559, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !26559
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !26559

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !26559

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !26423)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26424)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26424)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26426)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26428)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26430)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26432)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26426)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26428)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26430)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26432)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26560
  %i.o = load i64, ptr %i.n, align 8, !dbg !26560, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26433)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26433)
  %i.p = icmp eq i64 %i.o, 0, !dbg !26561
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !26561

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26560
  %i.r = load i64, ptr %i.q, align 8, !dbg !26562, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26433)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26426)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26428)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26430)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26432)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26424)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26435)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26437)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !26435)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !26437)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !26439)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !26441)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26435)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26437)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26439)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26441)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26435)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26437)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26439)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26441)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !26563
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26564

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !26443)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26444)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26444)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26446)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26448)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26450)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26452)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26446)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26448)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26450)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26452)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26565
  %i.u = load i64, ptr %i.t, align 8, !dbg !26565, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26453)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26453)
  %i.v = icmp eq i64 %i.u, 0, !dbg !26566
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !26566

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26565
  %i.x = load i64, ptr %i.w, align 8, !dbg !26567, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26453)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26446)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26448)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26450)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26452)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26444)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26455)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26457)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !26455)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !26457)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !26459)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !26461)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26455)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26457)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26459)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26461)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26455)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26457)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26459)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26461)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !26568
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !26569

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !26559

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10407, !DIExpression(), !26463)
    #dbg_value(ptr %0, !10409, !DIExpression(), !26465)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26570
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26571

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10412, !DIExpression(DW_OP_deref), !26467)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26572
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26573
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !27332, !DIExpression(DW_OP_deref), !27335)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27375
  br label %bb.p, !dbg !27376

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !27377
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27378 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !27414, !DIExpression(), !27416)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !27421
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !27422

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10407, !DIExpression(), !27380)
    #dbg_value(ptr %0, !10409, !DIExpression(), !27382)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !27423
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27424

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10412, !DIExpression(DW_OP_deref), !27384)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27425
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27426

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !27417, !DIExpression(), !27420)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27427 ; 2 uses
    #dbg_value(ptr poison, !10431, !DIExpression(), !27390)
    #dbg_value(ptr %i.e, !10465, !DIExpression(), !27391)
    #dbg_value(ptr %i.e, !10468, !DIExpression(), !27393)
    #dbg_value(ptr %i.e, !10463, !DIExpression(), !27394)
    #dbg_value(ptr %i.e, !10459, !DIExpression(), !27395)
    #dbg_value(ptr %i.e, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27396)
    #dbg_value(ptr undef, !10471, !DIExpression(), !27398)
    #dbg_value(ptr %i.e, !10474, !DIExpression(), !27399)
    #dbg_value(ptr %i.e, !10476, !DIExpression(), !27401)
    #dbg_declare(ptr poison, !10480, !DIExpression(), !27402)
    #dbg_declare(ptr poison, !10479, !DIExpression(), !27402)
    #dbg_value(ptr %i.e, !10484, !DIExpression(), !27404)
    #dbg_declare(ptr poison, !10487, !DIExpression(), !27405)
    #dbg_value(ptr poison, !10491, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !27407)
    #dbg_value(ptr %i.e, !10496, !DIExpression(), !27409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27428
  store i32 2, ptr %i.a, align 8, !dbg !27428
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !27429

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !27430
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !27430
    #dbg_value(ptr undef, !10431, !DIExpression(), !27390)
    #dbg_value(ptr %i.g, !10454, !DIExpression(), !27390)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !27431 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !27432
  unreachable, !dbg !27432

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27433
    #dbg_value(ptr %i.e, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27396)
    #dbg_value(ptr undef, !10460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27396)
    #dbg_value(ptr poison, !10466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27410)
    #dbg_value(ptr poison, !10498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27412)
    #dbg_value(ptr poison, !10466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27410)
    #dbg_value(ptr poison, !10498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27412)
    #dbg_value(i64 poison, !10499, !DIExpression(), !27412)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27434

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !27431
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !27431 ; 2 uses
    #dbg_value(ptr %i.j, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27396)
    #dbg_value(ptr %i.k, !10460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27396)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27410)
    #dbg_value(ptr %i.j, !10498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27412)
    #dbg_value(ptr %i.k, !10466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27410)
    #dbg_value(ptr %i.k, !10498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27412)
    #dbg_value(i64 poison, !10499, !DIExpression(), !27412)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27435

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !27436
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !27436
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !27437
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !27437, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27393)
    #dbg_value(ptr %.sroa.6.0.i, !10469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27393)
    #dbg_value(ptr %.sroa.8.0.i, !10469, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27438
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !27438
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !27438
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !27438
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !27438
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !27438
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !27438
  store i32 1, ptr %i.b, align 8, !dbg !27438
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.b), !dbg !27439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !27440
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !27441
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27441

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !27442
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2208 {
bb.a:
    #dbg_value(ptr %0, !10507, !DIExpression(), !27443)
    #dbg_value(ptr %0, !10509, !DIExpression(), !27445)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !27448
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !27449

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10512, !DIExpression(), !27447)
    #dbg_value(ptr undef, !10512, !DIExpression(DW_OP_deref), !27447)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27450
  br label %bb.c, !dbg !27451

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !27452
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27453 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !27528, !DIExpression(), !27532)
    #dbg_value(ptr %1, !27529, !DIExpression(), !27532)
    #dbg_value(ptr %2, !27530, !DIExpression(), !27532)
    #dbg_declare(ptr poison, !27533, !DIExpression(), !27544)
    #dbg_value(ptr poison, !27550, !DIExpression(), !27553)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440, !dbg !27580
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !27581
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !27581

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !27582
    #dbg_value(ptr %0, !27548, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27554)
    #dbg_value(ptr %0, !27540, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !27555)
    #dbg_value(ptr %0, !27557, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !27564)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !27583 ; 2 uses
    #dbg_declare(ptr poison, !27565, !DIExpression(), !27462)
    #dbg_value(ptr %i.d, !27568, !DIExpression(), !27463)
    #dbg_value(ptr %i.d, !27571, !DIExpression(), !27466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27584, !noalias !27576
    #dbg_value(i32 2, !27574, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !27466)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1392) %i.a, ptr noundef nonnull align 8 dereferenceable(1392) %i.d, i64 1392, i1 false), !dbg !27585, !noalias !27576
  store i32 2, ptr %i.d, align 8, !dbg !27586, !noalias !27576
  %i.e = load i32, ptr %i.a, align 8, !dbg !27584, !range !8851, !noalias !27576, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !27587
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !27587, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !27588, !noalias !27576

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !27589, !range !8851, !noalias !27576, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !27589
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !27589

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !27532

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !27589, !noalias !27576

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !27590, !noalias !27576
  unreachable, !dbg !27590

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !27591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !27591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27589, !noalias !27576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27577), !dbg !27592
    #dbg_value(ptr %1, !9775, !DIExpression(), !27472)
  %i.l = load i64, ptr %1, align 8, !dbg !27593, !range !2773, !alias.scope !27577, !noundef !2579
  %3 = trunc nuw i64 %i.l to i1, !dbg !27593
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !27593

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27593 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27578), !dbg !27593
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !27476)
  %i.n = load i64, ptr %i.m, align 8, !dbg !27594, !alias.scope !27579, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !27594
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !27594

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27594
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !27594, !alias.scope !27579, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !27594
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !27594, !alias.scope !27579 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !27478)
    #dbg_value(ptr poison, !8867, !DIExpression(), !27480)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !27595
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !27595

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !27482)
    #dbg_value(ptr poison, !8881, !DIExpression(), !27484)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !27596, !invariant.load !2579, !noalias !27579 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !27596
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !27596

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !27596, !noalias !27579

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !27486)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27487)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27487)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27489)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27491)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27493)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27495)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27489)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27491)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27493)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27495)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !27597
  %i.u = load i64, ptr %i.t, align 8, !dbg !27597, !range !4479, !invariant.load !2579, !noalias !27579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27496)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27496)
  %i.v = icmp eq i64 %i.u, 0, !dbg !27598
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !27598

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !27597
  %i.x = load i64, ptr %i.w, align 8, !dbg !27599, !range !4480, !invariant.load !2579, !noalias !27579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27496)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27489)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27491)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27493)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27495)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27487)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27498)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27500)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !27498)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !27500)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !27502)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !27504)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27498)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27500)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27502)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27504)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27498)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27500)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27502)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27504)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !27600, !noalias !27579
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27601

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !27506)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27507)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27507)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27509)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27511)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27513)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27515)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27509)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27511)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27513)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27515)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !27602
  %i.aa = load i64, ptr %i.z, align 8, !dbg !27602, !range !4479, !invariant.load !2579, !noalias !27579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27516)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27516)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !27603
  br i1 %i.ab, label %.body, label %bb.o, !dbg !27603

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !27602
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !27604, !range !4480, !invariant.load !2579, !noalias !27579
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27516)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27509)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27511)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27513)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27515)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27507)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27518)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27520)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !27518)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !27520)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !27522)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !27524)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27518)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27520)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27522)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27524)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27518)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27520)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27522)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27524)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !27605, !noalias !27579
  br label %.body, !dbg !27606

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !27607

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8, !dbg !27592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !27592
  br label %common.resume, !dbg !27608

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !27592
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !27592
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !27609
  br label %bb.p, !dbg !27610
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27612 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !27705, !DIExpression(), !27624)
    #dbg_value(ptr poison, !27740, !DIExpression(), !27628)
    #dbg_value(ptr poison, !27728, !DIExpression(), !27629)
    #dbg_value(ptr poison, !27733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27746)
    #dbg_value(ptr poison, !27732, !DIExpression(), !27747)
    #dbg_value(ptr poison, !27738, !DIExpression(), !27748)
    #dbg_value(ptr poison, !27749, !DIExpression(), !27752)
    #dbg_value(ptr %0, !27701, !DIExpression(), !27753)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !27780 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !27780
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !27780
    #dbg_value(i1 %i.c, !27702, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !27754)
    #dbg_value(i1 %i.d, !27702, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !27754)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27781

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !27782

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !27738, !DIExpression(), !27748)
    #dbg_value(ptr undef, !27732, !DIExpression(), !27747)
    #dbg_value(ptr undef, !27733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27746)
    #dbg_value(ptr undef, !27705, !DIExpression(), !27624)
    #dbg_value(ptr undef, !27728, !DIExpression(), !27629)
    #dbg_value(ptr poison, !27755, !DIExpression(), !27633)
    #dbg_declare(ptr poison, !27759, !DIExpression(), !27634)
    #dbg_declare(ptr poison, !27758, !DIExpression(), !27634)
    #dbg_value(ptr poison, !27763, !DIExpression(), !27637)
    #dbg_declare(ptr poison, !27766, !DIExpression(), !27638)
    #dbg_value(ptr poison, !27770, !DIExpression(DW_OP_deref, DW_OP_deref), !27641)
    #dbg_value(ptr poison, !27775, !DIExpression(), !27644)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27783
    #dbg_value(ptr %i.e, !27777, !DIExpression(), !27647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27784, !noalias !27779
  store i32 2, ptr %i.a, align 8, !dbg !27784, !noalias !27779
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.a)
          to label %.thread unwind label %bb.c, !dbg !27785

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !27786
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !27786
    #dbg_value(ptr undef, !27740, !DIExpression(), !27628)
    #dbg_value(ptr %i.g, !27743, !DIExpression(), !27628)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !27787 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !27788
  unreachable, !dbg !27788

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27789, !noalias !27779
    #dbg_value(ptr undef, !27733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27746)
    #dbg_value(ptr undef, !27733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27746)
    #dbg_value(ptr poison, !9821, !DIExpression(), !27651)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27790

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !27787 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !27787 ; 6 uses
    #dbg_value(ptr %i.j, !27733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27746)
    #dbg_value(ptr %i.k, !27733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27746)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !27651)
  %i.l = icmp eq ptr %i.j, null, !dbg !27790
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !27790

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !27653)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !27791, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !27791
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !27791

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !27791

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !27655)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27656)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27656)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27658)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27660)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27662)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27664)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27658)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27660)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27662)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27664)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !27792
  %i.o = load i64, ptr %i.n, align 8, !dbg !27792, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27665)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27665)
  %i.p = icmp eq i64 %i.o, 0, !dbg !27793
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !27793

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27792
  %i.r = load i64, ptr %i.q, align 8, !dbg !27794, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27665)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27658)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27660)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27662)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27664)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27656)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27667)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27669)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !27667)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !27669)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !27671)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !27673)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27667)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27669)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27671)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27673)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27667)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27669)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27671)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27673)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !27795
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27796

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !27675)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27676)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27676)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27678)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27680)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27682)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27684)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27678)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27680)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27682)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27684)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !27797
  %i.u = load i64, ptr %i.t, align 8, !dbg !27797, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27685)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27685)
  %i.v = icmp eq i64 %i.u, 0, !dbg !27798
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !27798

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27797
  %i.x = load i64, ptr %i.w, align 8, !dbg !27799, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27685)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27678)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27680)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27682)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27684)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27676)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27687)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27689)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !27687)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !27689)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !27691)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !27693)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27687)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27689)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27691)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27693)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27687)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27689)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27691)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27693)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !27800
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !27801

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !27791

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10507, !DIExpression(), !27695)
    #dbg_value(ptr %0, !10509, !DIExpression(), !27697)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !27802
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27803

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10512, !DIExpression(DW_OP_deref), !27699)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27804
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27805
end_hunk_9
begin_hunk_10_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !28564, !DIExpression(DW_OP_deref), !28567)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28607
  br label %bb.p, !dbg !28608

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !28609
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28610 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 4 uses
  %i.b = alloca [1392 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !28646, !DIExpression(), !28648)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !28653
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !28654

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10507, !DIExpression(), !28612)
    #dbg_value(ptr %0, !10509, !DIExpression(), !28614)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !28655
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28656

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10512, !DIExpression(DW_OP_deref), !28616)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28657
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28658

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !28649, !DIExpression(), !28652)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28659 ; 2 uses
    #dbg_value(ptr poison, !10531, !DIExpression(), !28622)
    #dbg_value(ptr %i.e, !10565, !DIExpression(), !28623)
    #dbg_value(ptr %i.e, !10568, !DIExpression(), !28625)
    #dbg_value(ptr %i.e, !10563, !DIExpression(), !28626)
    #dbg_value(ptr %i.e, !10559, !DIExpression(), !28627)
    #dbg_value(ptr %i.e, !10560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28628)
    #dbg_value(ptr undef, !10571, !DIExpression(), !28630)
    #dbg_value(ptr %i.e, !10574, !DIExpression(), !28631)
    #dbg_value(ptr %i.e, !10576, !DIExpression(), !28633)
    #dbg_declare(ptr poison, !10580, !DIExpression(), !28634)
    #dbg_declare(ptr poison, !10579, !DIExpression(), !28634)
    #dbg_value(ptr %i.e, !10584, !DIExpression(), !28636)
    #dbg_declare(ptr poison, !10587, !DIExpression(), !28637)
    #dbg_value(ptr poison, !10591, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28639)
    #dbg_value(ptr %i.e, !10596, !DIExpression(), !28641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28660
  store i32 2, ptr %i.a, align 8, !dbg !28660
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !28661

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !28662
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !28662
    #dbg_value(ptr undef, !10531, !DIExpression(), !28622)
    #dbg_value(ptr %i.g, !10554, !DIExpression(), !28622)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !28663 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !28664
  unreachable, !dbg !28664

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28665
    #dbg_value(ptr %i.e, !10560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28628)
    #dbg_value(ptr undef, !10560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28628)
    #dbg_value(ptr poison, !10566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28642)
    #dbg_value(ptr poison, !10598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28644)
    #dbg_value(ptr poison, !10566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28642)
    #dbg_value(ptr poison, !10598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28644)
    #dbg_value(i64 poison, !10599, !DIExpression(), !28644)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28666

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !28663
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !28663 ; 2 uses
    #dbg_value(ptr %i.j, !10560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28628)
    #dbg_value(ptr %i.k, !10560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28628)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28642)
    #dbg_value(ptr %i.j, !10598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28644)
    #dbg_value(ptr %i.k, !10566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28642)
    #dbg_value(ptr %i.k, !10598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28644)
    #dbg_value(i64 poison, !10599, !DIExpression(), !28644)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28667

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !28668
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !28668
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28669
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !28669, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28625)
    #dbg_value(ptr %.sroa.6.0.i, !10569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28625)
    #dbg_value(ptr %.sroa.8.0.i, !10569, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28670
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !28670
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !28670
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !28670
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !28670
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !28670
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !28670
  store i32 1, ptr %i.b, align 8, !dbg !28670
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.b), !dbg !28671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28672
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !28673
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28673

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !28674
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2233 {
bb.a:
    #dbg_value(ptr %0, !10607, !DIExpression(), !28675)
    #dbg_value(ptr %0, !10609, !DIExpression(), !28677)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !28680
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !28681

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10612, !DIExpression(), !28679)
    #dbg_value(ptr undef, !10612, !DIExpression(DW_OP_deref), !28679)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28682
  br label %bb.c, !dbg !28683

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !28684
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28685 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !28760, !DIExpression(), !28764)
    #dbg_value(ptr %1, !28761, !DIExpression(), !28764)
    #dbg_value(ptr %2, !28762, !DIExpression(), !28764)
    #dbg_declare(ptr poison, !28765, !DIExpression(), !28776)
    #dbg_value(ptr poison, !28782, !DIExpression(), !28785)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1240, !dbg !28812
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !28813
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !28813

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !28814
    #dbg_value(ptr %0, !28780, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !28786)
    #dbg_value(ptr %0, !28772, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !28787)
    #dbg_value(ptr %0, !28789, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !28796)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !28815 ; 2 uses
    #dbg_declare(ptr poison, !28797, !DIExpression(), !28694)
    #dbg_value(ptr %i.d, !28800, !DIExpression(), !28695)
    #dbg_value(ptr %i.d, !28803, !DIExpression(), !28698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28816, !noalias !28808
    #dbg_value(i32 2, !28806, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !28698)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1192) %i.a, ptr noundef nonnull align 8 dereferenceable(1192) %i.d, i64 1192, i1 false), !dbg !28817, !noalias !28808
  store i32 2, ptr %i.d, align 8, !dbg !28818, !noalias !28808
  %i.e = load i32, ptr %i.a, align 8, !dbg !28816, !range !8851, !noalias !28808, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !28819
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !28819, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !28820, !noalias !28808

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !28821, !range !8851, !noalias !28808, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !28821
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !28821

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !28764

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !28821, !noalias !28808

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !28822, !noalias !28808
  unreachable, !dbg !28822

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !28823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !28823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28821, !noalias !28808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28809), !dbg !28824
    #dbg_value(ptr %1, !9775, !DIExpression(), !28704)
  %i.l = load i64, ptr %1, align 8, !dbg !28825, !range !2773, !alias.scope !28809, !noundef !2579
  %3 = trunc nuw i64 %i.l to i1, !dbg !28825
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !28825

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28825 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28810), !dbg !28825
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !28708)
  %i.n = load i64, ptr %i.m, align 8, !dbg !28826, !alias.scope !28811, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !28826
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !28826

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28826
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !28826, !alias.scope !28811, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !28826
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !28826, !alias.scope !28811 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !28710)
    #dbg_value(ptr poison, !8867, !DIExpression(), !28712)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !28827
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !28827

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !28714)
    #dbg_value(ptr poison, !8881, !DIExpression(), !28716)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !28828, !invariant.load !2579, !noalias !28811 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !28828
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !28828

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !28828, !noalias !28811

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !28718)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28719)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28719)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28721)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28723)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28725)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28727)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28721)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28723)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28725)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28727)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !28829
  %i.u = load i64, ptr %i.t, align 8, !dbg !28829, !range !4479, !invariant.load !2579, !noalias !28811 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28728)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28728)
  %i.v = icmp eq i64 %i.u, 0, !dbg !28830
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !28830

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !28829
  %i.x = load i64, ptr %i.w, align 8, !dbg !28831, !range !4480, !invariant.load !2579, !noalias !28811
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28728)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28721)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28723)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28725)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28727)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28719)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28730)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28732)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !28730)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !28732)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !28734)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !28736)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28730)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28732)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28734)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28736)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28730)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28732)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28734)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28736)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !28832, !noalias !28811
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28833

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !28738)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28739)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28739)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28741)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28743)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28745)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28747)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28741)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28743)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28745)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28747)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !28834
  %i.aa = load i64, ptr %i.z, align 8, !dbg !28834, !range !4479, !invariant.load !2579, !noalias !28811 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28748)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28748)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !28835
  br i1 %i.ab, label %.body, label %bb.o, !dbg !28835

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !28834
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !28836, !range !4480, !invariant.load !2579, !noalias !28811
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28748)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28741)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28743)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28745)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28747)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28739)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28750)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28752)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !28750)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !28752)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !28754)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !28756)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28750)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28752)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28754)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28756)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28750)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28752)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28754)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28756)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !28837, !noalias !28811
  br label %.body, !dbg !28838

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !28839

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8, !dbg !28824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !28824
  br label %common.resume, !dbg !28840

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !28824
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !28824
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !28841
  br label %bb.p, !dbg !28842
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28844 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !28937, !DIExpression(), !28856)
    #dbg_value(ptr poison, !28972, !DIExpression(), !28860)
    #dbg_value(ptr poison, !28960, !DIExpression(), !28861)
    #dbg_value(ptr poison, !28965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28978)
    #dbg_value(ptr poison, !28964, !DIExpression(), !28979)
    #dbg_value(ptr poison, !28970, !DIExpression(), !28980)
    #dbg_value(ptr poison, !28981, !DIExpression(), !28984)
    #dbg_value(ptr %0, !28933, !DIExpression(), !28985)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !29012 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !29012
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !29012
    #dbg_value(i1 %i.c, !28934, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !28986)
    #dbg_value(i1 %i.d, !28934, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !28986)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29013

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !29014

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !28970, !DIExpression(), !28980)
    #dbg_value(ptr undef, !28964, !DIExpression(), !28979)
    #dbg_value(ptr undef, !28965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28978)
    #dbg_value(ptr undef, !28937, !DIExpression(), !28856)
    #dbg_value(ptr undef, !28960, !DIExpression(), !28861)
    #dbg_value(ptr poison, !28987, !DIExpression(), !28865)
    #dbg_declare(ptr poison, !28991, !DIExpression(), !28866)
    #dbg_declare(ptr poison, !28990, !DIExpression(), !28866)
    #dbg_value(ptr poison, !28995, !DIExpression(), !28869)
    #dbg_declare(ptr poison, !28998, !DIExpression(), !28870)
    #dbg_value(ptr poison, !29002, !DIExpression(DW_OP_deref, DW_OP_deref), !28873)
    #dbg_value(ptr poison, !29007, !DIExpression(), !28876)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29015
    #dbg_value(ptr %i.e, !29009, !DIExpression(), !28879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29016, !noalias !29011
  store i32 2, ptr %i.a, align 8, !dbg !29016, !noalias !29011
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.a)
          to label %.thread unwind label %bb.c, !dbg !29017

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !29018
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !29018
    #dbg_value(ptr undef, !28972, !DIExpression(), !28860)
    #dbg_value(ptr %i.g, !28975, !DIExpression(), !28860)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !29019 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !29020
  unreachable, !dbg !29020

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29021, !noalias !29011
    #dbg_value(ptr undef, !28965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28978)
    #dbg_value(ptr undef, !28965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28978)
    #dbg_value(ptr poison, !9821, !DIExpression(), !28883)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29022

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !29019 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !29019 ; 6 uses
    #dbg_value(ptr %i.j, !28965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28978)
    #dbg_value(ptr %i.k, !28965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28978)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !28883)
  %i.l = icmp eq ptr %i.j, null, !dbg !29022
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !29022

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !28885)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !29023, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !29023
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !29023

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !29023

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !28887)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28888)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28888)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28890)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28892)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28894)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28896)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28890)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28892)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28894)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28896)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !29024
  %i.o = load i64, ptr %i.n, align 8, !dbg !29024, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28897)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28897)
  %i.p = icmp eq i64 %i.o, 0, !dbg !29025
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !29025

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !29024
  %i.r = load i64, ptr %i.q, align 8, !dbg !29026, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28897)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28890)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28892)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28894)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28896)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28888)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28899)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28901)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !28899)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !28901)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !28903)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !28905)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28899)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28901)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28903)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28905)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28899)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28901)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28903)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28905)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !29027
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29028

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !28907)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28908)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28908)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28910)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28912)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28914)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28916)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28910)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28912)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28914)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28916)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !29029
  %i.u = load i64, ptr %i.t, align 8, !dbg !29029, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28917)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28917)
  %i.v = icmp eq i64 %i.u, 0, !dbg !29030
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !29030

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !29029
  %i.x = load i64, ptr %i.w, align 8, !dbg !29031, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28917)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28910)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28912)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28914)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28916)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28908)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28919)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28921)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !28919)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !28921)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !28923)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !28925)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28919)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28921)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28923)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28925)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28919)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28921)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28923)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28925)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !29032
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !29033

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !29023

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10607, !DIExpression(), !28927)
    #dbg_value(ptr %0, !10609, !DIExpression(), !28929)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29034
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29035

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10612, !DIExpression(DW_OP_deref), !28931)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29036
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29037
end_hunk_10
begin_hunk_11_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !29796, !DIExpression(DW_OP_deref), !29799)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29839
  br label %bb.p, !dbg !29840

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !29841
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !29842 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 4 uses
  %i.b = alloca [1192 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !29878, !DIExpression(), !29880)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !29885
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !29886

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10607, !DIExpression(), !29844)
    #dbg_value(ptr %0, !10609, !DIExpression(), !29846)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29887
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29888

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10612, !DIExpression(DW_OP_deref), !29848)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29889
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29890

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !29881, !DIExpression(), !29884)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29891 ; 2 uses
    #dbg_value(ptr poison, !10631, !DIExpression(), !29854)
    #dbg_value(ptr %i.e, !10665, !DIExpression(), !29855)
    #dbg_value(ptr %i.e, !10668, !DIExpression(), !29857)
    #dbg_value(ptr %i.e, !10663, !DIExpression(), !29858)
    #dbg_value(ptr %i.e, !10659, !DIExpression(), !29859)
    #dbg_value(ptr %i.e, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29860)
    #dbg_value(ptr undef, !10671, !DIExpression(), !29862)
    #dbg_value(ptr %i.e, !10674, !DIExpression(), !29863)
    #dbg_value(ptr %i.e, !10676, !DIExpression(), !29865)
    #dbg_declare(ptr poison, !10680, !DIExpression(), !29866)
    #dbg_declare(ptr poison, !10679, !DIExpression(), !29866)
    #dbg_value(ptr %i.e, !10684, !DIExpression(), !29868)
    #dbg_declare(ptr poison, !10687, !DIExpression(), !29869)
    #dbg_value(ptr poison, !10691, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !29871)
    #dbg_value(ptr %i.e, !10696, !DIExpression(), !29873)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29892
  store i32 2, ptr %i.a, align 8, !dbg !29892
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !29893

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !29894
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !29894
    #dbg_value(ptr undef, !10631, !DIExpression(), !29854)
    #dbg_value(ptr %i.g, !10654, !DIExpression(), !29854)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !29895 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !29896
  unreachable, !dbg !29896

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29897
    #dbg_value(ptr %i.e, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29860)
    #dbg_value(ptr undef, !10660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29860)
    #dbg_value(ptr poison, !10666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29874)
    #dbg_value(ptr poison, !10698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29876)
    #dbg_value(ptr poison, !10666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29874)
    #dbg_value(ptr poison, !10698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29876)
    #dbg_value(i64 poison, !10699, !DIExpression(), !29876)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29898

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !29895
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !29895 ; 2 uses
    #dbg_value(ptr %i.j, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29860)
    #dbg_value(ptr %i.k, !10660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29860)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29874)
    #dbg_value(ptr %i.j, !10698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29876)
    #dbg_value(ptr %i.k, !10666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29874)
    #dbg_value(ptr %i.k, !10698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29876)
    #dbg_value(i64 poison, !10699, !DIExpression(), !29876)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29899

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !29900
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !29900
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !29901
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !29901, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29857)
    #dbg_value(ptr %.sroa.6.0.i, !10669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29857)
    #dbg_value(ptr %.sroa.8.0.i, !10669, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29857)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29902
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !29902
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !29902
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !29902
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !29902
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !29902
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !29902
  store i32 1, ptr %i.b, align 8, !dbg !29902
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.b), !dbg !29903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29904
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !29905
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29905

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !29906
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2258 {
bb.a:
    #dbg_value(ptr %0, !10707, !DIExpression(), !29907)
    #dbg_value(ptr %0, !10709, !DIExpression(), !29909)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29912
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !29913

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10712, !DIExpression(), !29911)
    #dbg_value(ptr undef, !10712, !DIExpression(DW_OP_deref), !29911)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29914
  br label %bb.c, !dbg !29915

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !29916
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !29917 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !29992, !DIExpression(), !29996)
    #dbg_value(ptr %1, !29993, !DIExpression(), !29996)
    #dbg_value(ptr %2, !29994, !DIExpression(), !29996)
    #dbg_declare(ptr poison, !29997, !DIExpression(), !30008)
    #dbg_value(ptr poison, !30014, !DIExpression(), !30017)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !30044
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !30045
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !30045

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !30046
    #dbg_value(ptr %0, !30012, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30018)
    #dbg_value(ptr %0, !30004, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !30019)
    #dbg_value(ptr %0, !30021, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !30028)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30047 ; 2 uses
    #dbg_declare(ptr poison, !30029, !DIExpression(), !29926)
    #dbg_value(ptr %i.d, !30032, !DIExpression(), !29927)
    #dbg_value(ptr %i.d, !30035, !DIExpression(), !29930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30048, !noalias !30040
    #dbg_value(i32 2, !30038, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29930)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.a, ptr noundef nonnull align 8 dereferenceable(1448) %i.d, i64 1448, i1 false), !dbg !30049, !noalias !30040
  store i32 2, ptr %i.d, align 8, !dbg !30050, !noalias !30040
  %i.e = load i32, ptr %i.a, align 8, !dbg !30048, !range !8851, !noalias !30040, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !30051
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !30051, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !30052, !noalias !30040

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !30053, !range !8851, !noalias !30040, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !30053
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !30053

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !29996

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !30053, !noalias !30040

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !30054, !noalias !30040
  unreachable, !dbg !30054

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !30055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !30055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30053, !noalias !30040
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30041), !dbg !30056
    #dbg_value(ptr %1, !9775, !DIExpression(), !29936)
  %i.l = load i64, ptr %1, align 8, !dbg !30057, !range !2773, !alias.scope !30041, !noundef !2579
  %3 = trunc nuw i64 %i.l to i1, !dbg !30057
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !30057

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30057 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30042), !dbg !30057
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !29940)
  %i.n = load i64, ptr %i.m, align 8, !dbg !30058, !alias.scope !30043, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !30058
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !30058

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30058
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !30058, !alias.scope !30043, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30058
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !30058, !alias.scope !30043 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !29942)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29944)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !30059
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !30059

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !29946)
    #dbg_value(ptr poison, !8881, !DIExpression(), !29948)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !30060, !invariant.load !2579, !noalias !30043 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !30060
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !30060

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !30060, !noalias !30043

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !29950)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29951)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29951)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29953)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29955)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29957)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29959)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29953)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29955)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29957)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29959)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !30061
  %i.u = load i64, ptr %i.t, align 8, !dbg !30061, !range !4479, !invariant.load !2579, !noalias !30043 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29960)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29960)
  %i.v = icmp eq i64 %i.u, 0, !dbg !30062
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !30062

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !30061
  %i.x = load i64, ptr %i.w, align 8, !dbg !30063, !range !4480, !invariant.load !2579, !noalias !30043
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29960)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29953)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29955)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29957)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29959)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29951)
    #dbg_value(ptr poison, !4483, !DIExpression(), !29962)
    #dbg_value(ptr poison, !4490, !DIExpression(), !29964)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !29962)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !29964)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !29966)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !29968)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29962)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29964)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29966)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29968)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29962)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29964)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29966)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29968)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !30064, !noalias !30043
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30065

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !29970)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29971)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29971)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29973)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29975)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29977)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29979)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29973)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29975)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29977)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29979)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !30066
  %i.aa = load i64, ptr %i.z, align 8, !dbg !30066, !range !4479, !invariant.load !2579, !noalias !30043 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29980)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29980)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !30067
  br i1 %i.ab, label %.body, label %bb.o, !dbg !30067

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !30066
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !30068, !range !4480, !invariant.load !2579, !noalias !30043
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29980)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29973)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29975)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29977)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29979)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29971)
    #dbg_value(ptr poison, !4483, !DIExpression(), !29982)
    #dbg_value(ptr poison, !4490, !DIExpression(), !29984)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !29982)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !29984)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !29986)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !29988)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29982)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29984)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29986)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29988)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29982)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29984)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29986)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29988)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !30069, !noalias !30043
  br label %.body, !dbg !30070

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !30071

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8, !dbg !30056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !30056
  br label %common.resume, !dbg !30072

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !30056
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !30056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !30073
  br label %bb.p, !dbg !30074
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !30076 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !30169, !DIExpression(), !30088)
    #dbg_value(ptr poison, !30204, !DIExpression(), !30092)
    #dbg_value(ptr poison, !30192, !DIExpression(), !30093)
    #dbg_value(ptr poison, !30197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30210)
    #dbg_value(ptr poison, !30196, !DIExpression(), !30211)
    #dbg_value(ptr poison, !30202, !DIExpression(), !30212)
    #dbg_value(ptr poison, !30213, !DIExpression(), !30216)
    #dbg_value(ptr %0, !30165, !DIExpression(), !30217)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !30244 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !30244
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !30244
    #dbg_value(i1 %i.c, !30166, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !30218)
    #dbg_value(i1 %i.d, !30166, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !30218)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30245

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !30246

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !30202, !DIExpression(), !30212)
    #dbg_value(ptr undef, !30196, !DIExpression(), !30211)
    #dbg_value(ptr undef, !30197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30210)
    #dbg_value(ptr undef, !30169, !DIExpression(), !30088)
    #dbg_value(ptr undef, !30192, !DIExpression(), !30093)
    #dbg_value(ptr poison, !30219, !DIExpression(), !30097)
    #dbg_declare(ptr poison, !30223, !DIExpression(), !30098)
    #dbg_declare(ptr poison, !30222, !DIExpression(), !30098)
    #dbg_value(ptr poison, !30227, !DIExpression(), !30101)
    #dbg_declare(ptr poison, !30230, !DIExpression(), !30102)
    #dbg_value(ptr poison, !30234, !DIExpression(DW_OP_deref, DW_OP_deref), !30105)
    #dbg_value(ptr poison, !30239, !DIExpression(), !30108)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30247
    #dbg_value(ptr %i.e, !30241, !DIExpression(), !30111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30248, !noalias !30243
  store i32 2, ptr %i.a, align 8, !dbg !30248, !noalias !30243
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %.thread unwind label %bb.c, !dbg !30249

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !30250
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !30250
    #dbg_value(ptr undef, !30204, !DIExpression(), !30092)
    #dbg_value(ptr %i.g, !30207, !DIExpression(), !30092)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !30251 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !30252
  unreachable, !dbg !30252

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30253, !noalias !30243
    #dbg_value(ptr undef, !30197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30210)
    #dbg_value(ptr undef, !30197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30210)
    #dbg_value(ptr poison, !9821, !DIExpression(), !30115)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30254

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !30251 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !30251 ; 6 uses
    #dbg_value(ptr %i.j, !30197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30210)
    #dbg_value(ptr %i.k, !30197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30210)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !30115)
  %i.l = icmp eq ptr %i.j, null, !dbg !30254
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !30254

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !30117)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !30255, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !30255
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !30255

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !30255

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !30119)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30120)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30120)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30122)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30124)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30126)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30128)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30122)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30124)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30126)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30128)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !30256
  %i.o = load i64, ptr %i.n, align 8, !dbg !30256, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30129)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30129)
  %i.p = icmp eq i64 %i.o, 0, !dbg !30257
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !30257

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !30256
  %i.r = load i64, ptr %i.q, align 8, !dbg !30258, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30129)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30122)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30124)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30126)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30128)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30120)
    #dbg_value(ptr poison, !4483, !DIExpression(), !30131)
    #dbg_value(ptr poison, !4490, !DIExpression(), !30133)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !30131)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !30133)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !30135)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !30137)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30131)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30133)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30135)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30137)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30131)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30133)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30135)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30137)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !30259
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30260

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !30139)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30140)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30140)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30142)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30144)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30146)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30148)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30142)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30144)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30146)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30148)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !30261
  %i.u = load i64, ptr %i.t, align 8, !dbg !30261, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30149)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30149)
  %i.v = icmp eq i64 %i.u, 0, !dbg !30262
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !30262

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !30261
  %i.x = load i64, ptr %i.w, align 8, !dbg !30263, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30149)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30142)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30144)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30146)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30148)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30140)
    #dbg_value(ptr poison, !4483, !DIExpression(), !30151)
    #dbg_value(ptr poison, !4490, !DIExpression(), !30153)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !30151)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !30153)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !30155)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !30157)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30151)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30153)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30155)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30157)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30151)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30153)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30155)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30157)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !30264
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !30265

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !30255

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10707, !DIExpression(), !30159)
    #dbg_value(ptr %0, !10709, !DIExpression(), !30161)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !30266
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !30267

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10712, !DIExpression(DW_OP_deref), !30163)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !30268
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !30269
end_hunk_11
begin_hunk_12_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !31028, !DIExpression(DW_OP_deref), !31031)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31071
  br label %bb.p, !dbg !31072

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !31073
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31074 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !31110, !DIExpression(), !31112)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !31117
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !31118

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10707, !DIExpression(), !31076)
    #dbg_value(ptr %0, !10709, !DIExpression(), !31078)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !31119
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31120

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10712, !DIExpression(DW_OP_deref), !31080)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31121
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31122

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !31113, !DIExpression(), !31116)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31123 ; 2 uses
    #dbg_value(ptr poison, !10731, !DIExpression(), !31086)
    #dbg_value(ptr %i.e, !10765, !DIExpression(), !31087)
    #dbg_value(ptr %i.e, !10768, !DIExpression(), !31089)
    #dbg_value(ptr %i.e, !10763, !DIExpression(), !31090)
    #dbg_value(ptr %i.e, !10759, !DIExpression(), !31091)
    #dbg_value(ptr %i.e, !10760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31092)
    #dbg_value(ptr undef, !10771, !DIExpression(), !31094)
    #dbg_value(ptr %i.e, !10774, !DIExpression(), !31095)
    #dbg_value(ptr %i.e, !10776, !DIExpression(), !31097)
    #dbg_declare(ptr poison, !10780, !DIExpression(), !31098)
    #dbg_declare(ptr poison, !10779, !DIExpression(), !31098)
    #dbg_value(ptr %i.e, !10784, !DIExpression(), !31100)
    #dbg_declare(ptr poison, !10787, !DIExpression(), !31101)
    #dbg_value(ptr poison, !10791, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31103)
    #dbg_value(ptr %i.e, !10796, !DIExpression(), !31105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31124
  store i32 2, ptr %i.a, align 8, !dbg !31124
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !31125

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !31126
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !31126
    #dbg_value(ptr undef, !10731, !DIExpression(), !31086)
    #dbg_value(ptr %i.g, !10754, !DIExpression(), !31086)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !31127 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !31128
  unreachable, !dbg !31128

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31129
    #dbg_value(ptr %i.e, !10760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31092)
    #dbg_value(ptr undef, !10760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31092)
    #dbg_value(ptr poison, !10766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31106)
    #dbg_value(ptr poison, !10798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31108)
    #dbg_value(ptr poison, !10766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31106)
    #dbg_value(ptr poison, !10798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31108)
    #dbg_value(i64 poison, !10799, !DIExpression(), !31108)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31130

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !31127
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !31127 ; 2 uses
    #dbg_value(ptr %i.j, !10760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31092)
    #dbg_value(ptr %i.k, !10760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31092)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31106)
    #dbg_value(ptr %i.j, !10798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31108)
    #dbg_value(ptr %i.k, !10766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31106)
    #dbg_value(ptr %i.k, !10798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31108)
    #dbg_value(i64 poison, !10799, !DIExpression(), !31108)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31131

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !31132
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !31132
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !31133
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !31133, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31089)
    #dbg_value(ptr %.sroa.6.0.i, !10769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31089)
    #dbg_value(ptr %.sroa.8.0.i, !10769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31089)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31134
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !31134
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !31134
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !31134
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !31134
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !31134
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !31134
  store i32 1, ptr %i.b, align 8, !dbg !31134
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.b), !dbg !31135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31136
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !31137
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31137

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !31138
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2283 {
bb.a:
    #dbg_value(ptr %0, !10807, !DIExpression(), !31139)
    #dbg_value(ptr %0, !10809, !DIExpression(), !31141)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !31144
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !31145

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10812, !DIExpression(), !31143)
    #dbg_value(ptr undef, !10812, !DIExpression(DW_OP_deref), !31143)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31146
  br label %bb.c, !dbg !31147

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !31148
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31149 {
bb.a:
  %i.a = alloca [1408 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !31224, !DIExpression(), !31228)
    #dbg_value(ptr %1, !31225, !DIExpression(), !31228)
    #dbg_value(ptr %2, !31226, !DIExpression(), !31228)
    #dbg_declare(ptr poison, !31229, !DIExpression(), !31240)
    #dbg_value(ptr poison, !31246, !DIExpression(), !31249)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1456, !dbg !31276
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !31277
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !31277

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !31278
    #dbg_value(ptr %0, !31244, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !31250)
    #dbg_value(ptr %0, !31236, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !31251)
    #dbg_value(ptr %0, !31253, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !31260)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !31279 ; 2 uses
    #dbg_declare(ptr poison, !31261, !DIExpression(), !31158)
    #dbg_value(ptr %i.d, !31264, !DIExpression(), !31159)
    #dbg_value(ptr %i.d, !31267, !DIExpression(), !31162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31280, !noalias !31272
    #dbg_value(i32 2, !31270, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31162)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.a, ptr noundef nonnull align 8 dereferenceable(1408) %i.d, i64 1408, i1 false), !dbg !31281, !noalias !31272
  store i32 2, ptr %i.d, align 8, !dbg !31282, !noalias !31272
  %i.e = load i32, ptr %i.a, align 8, !dbg !31280, !range !8851, !noalias !31272, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !31283
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !31283, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !31284, !noalias !31272

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !31285, !range !8851, !noalias !31272, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !31285
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !31285

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !31228

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !31285, !noalias !31272

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !31286, !noalias !31272
  unreachable, !dbg !31286

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !31287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !31287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31285, !noalias !31272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31273), !dbg !31288
    #dbg_value(ptr %1, !9775, !DIExpression(), !31168)
  %i.l = load i64, ptr %1, align 8, !dbg !31289, !range !2773, !alias.scope !31273, !noundef !2579
  %3 = trunc nuw i64 %i.l to i1, !dbg !31289
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !31289

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31289 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31274), !dbg !31289
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !31172)
  %i.n = load i64, ptr %i.m, align 8, !dbg !31290, !alias.scope !31275, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !31290
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !31290

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31290
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !31290, !alias.scope !31275, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !31290
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !31290, !alias.scope !31275 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !31174)
    #dbg_value(ptr poison, !8867, !DIExpression(), !31176)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !31291
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !31291

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !31178)
    #dbg_value(ptr poison, !8881, !DIExpression(), !31180)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !31292, !invariant.load !2579, !noalias !31275 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !31292
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !31292

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !31292, !noalias !31275

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !31182)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31183)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31183)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31185)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31187)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31189)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31191)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31185)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31187)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31189)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31191)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !31293
  %i.u = load i64, ptr %i.t, align 8, !dbg !31293, !range !4479, !invariant.load !2579, !noalias !31275 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31192)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31192)
  %i.v = icmp eq i64 %i.u, 0, !dbg !31294
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !31294

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !31293
  %i.x = load i64, ptr %i.w, align 8, !dbg !31295, !range !4480, !invariant.load !2579, !noalias !31275
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31192)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31185)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31187)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31189)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31191)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31183)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31194)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31196)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !31194)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !31196)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !31198)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !31200)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31194)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31196)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31198)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31200)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31194)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31196)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31198)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31200)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !31296, !noalias !31275
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31297

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !31202)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31203)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31203)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31205)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31207)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31209)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31211)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31205)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31207)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31209)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31211)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !31298
  %i.aa = load i64, ptr %i.z, align 8, !dbg !31298, !range !4479, !invariant.load !2579, !noalias !31275 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31212)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31212)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !31299
  br i1 %i.ab, label %.body, label %bb.o, !dbg !31299

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !31298
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !31300, !range !4480, !invariant.load !2579, !noalias !31275
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31212)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31205)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31207)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31209)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31211)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31203)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31214)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31216)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !31214)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !31216)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !31218)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !31220)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31214)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31216)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31218)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31220)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31214)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31216)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31218)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31220)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !31301, !noalias !31275
  br label %.body, !dbg !31302

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !31303

.body:                                            ; preds = %bb.n, %bb.o
  store i64 0, ptr %1, align 8, !dbg !31288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !31288
  br label %common.resume, !dbg !31304

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !31288
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !31288
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !31305
  br label %bb.p, !dbg !31306
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31308 {
bb.a:
  %i.a = alloca [1408 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !31401, !DIExpression(), !31320)
    #dbg_value(ptr poison, !31436, !DIExpression(), !31324)
    #dbg_value(ptr poison, !31424, !DIExpression(), !31325)
    #dbg_value(ptr poison, !31429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31442)
    #dbg_value(ptr poison, !31428, !DIExpression(), !31443)
    #dbg_value(ptr poison, !31434, !DIExpression(), !31444)
    #dbg_value(ptr poison, !31445, !DIExpression(), !31448)
    #dbg_value(ptr %0, !31397, !DIExpression(), !31449)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !31476 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !31476
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !31476
    #dbg_value(i1 %i.c, !31398, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !31450)
    #dbg_value(i1 %i.d, !31398, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !31450)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31477

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !31478

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !31434, !DIExpression(), !31444)
    #dbg_value(ptr undef, !31428, !DIExpression(), !31443)
    #dbg_value(ptr undef, !31429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31442)
    #dbg_value(ptr undef, !31401, !DIExpression(), !31320)
    #dbg_value(ptr undef, !31424, !DIExpression(), !31325)
    #dbg_value(ptr poison, !31451, !DIExpression(), !31329)
    #dbg_declare(ptr poison, !31455, !DIExpression(), !31330)
    #dbg_declare(ptr poison, !31454, !DIExpression(), !31330)
    #dbg_value(ptr poison, !31459, !DIExpression(), !31333)
    #dbg_declare(ptr poison, !31462, !DIExpression(), !31334)
    #dbg_value(ptr poison, !31466, !DIExpression(DW_OP_deref, DW_OP_deref), !31337)
    #dbg_value(ptr poison, !31471, !DIExpression(), !31340)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31479
    #dbg_value(ptr %i.e, !31473, !DIExpression(), !31343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31480, !noalias !31475
  store i32 2, ptr %i.a, align 8, !dbg !31480, !noalias !31475
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1408) %i.a)
          to label %.thread unwind label %bb.c, !dbg !31481

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !31482
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !31482
    #dbg_value(ptr undef, !31436, !DIExpression(), !31324)
    #dbg_value(ptr %i.g, !31439, !DIExpression(), !31324)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !31483 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !31484
  unreachable, !dbg !31484

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31485, !noalias !31475
    #dbg_value(ptr undef, !31429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31442)
    #dbg_value(ptr undef, !31429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31442)
    #dbg_value(ptr poison, !9821, !DIExpression(), !31347)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31486

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !31483 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !31483 ; 6 uses
    #dbg_value(ptr %i.j, !31429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31442)
    #dbg_value(ptr %i.k, !31429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31442)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !31347)
  %i.l = icmp eq ptr %i.j, null, !dbg !31486
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !31486

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !31349)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !31487, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !31487
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !31487

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !31487

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !31351)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31352)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31352)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31354)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31356)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31358)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31360)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31354)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31356)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31358)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31360)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !31488
  %i.o = load i64, ptr %i.n, align 8, !dbg !31488, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31361)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31361)
  %i.p = icmp eq i64 %i.o, 0, !dbg !31489
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !31489

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !31488
  %i.r = load i64, ptr %i.q, align 8, !dbg !31490, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31361)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31354)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31356)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31358)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31360)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31352)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31363)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31365)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !31363)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !31365)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !31367)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !31369)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31363)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31365)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31367)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31369)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31363)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31365)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31367)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31369)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !31491
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31492

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !31371)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31372)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31372)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31374)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31376)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31378)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31380)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31374)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31376)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31378)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31380)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !31493
  %i.u = load i64, ptr %i.t, align 8, !dbg !31493, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31381)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31381)
  %i.v = icmp eq i64 %i.u, 0, !dbg !31494
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !31494

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !31493
  %i.x = load i64, ptr %i.w, align 8, !dbg !31495, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31381)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31374)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31376)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31378)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31380)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31372)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31383)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31385)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !31383)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !31385)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !31387)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !31389)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31383)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31385)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31387)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31389)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31383)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31385)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31387)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31389)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !31496
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !31497

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !31487

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10807, !DIExpression(), !31391)
    #dbg_value(ptr %0, !10809, !DIExpression(), !31393)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !31498
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31499

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10812, !DIExpression(DW_OP_deref), !31395)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31500
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31501
end_hunk_12
